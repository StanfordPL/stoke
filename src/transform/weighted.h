// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_TRANSFORM_WEIGHTED_H
#define STOKE_SRC_TRANSFORM_WEIGHTED_H

#include <algorithm>
#include <cassert>
#include <random>
#include <set>
#include <vector>

#include "src/transform/transform.h"

namespace stoke {

class WeightedTransform : public Transform {
public:
  /** Creates a new transformation helper; guaranteed to pass invariants. */
  WeightedTransform(TransformPools& pools) : Transform(pools) { 
  }

  std::string get_name() const {
    return "Weighted";
  }

  TransformInfo operator()(Cfg& cfg) {
    size_t pool_index = gen_() % transform_pool_.size();
    size_t tform_index = transform_pool_[pool_index];
    Transform* tr = transforms_[tform_index];
    auto ti = (*tr)(cfg);
    ti.move_type = tform_index;
    return ti;
  }

  void undo(Cfg& cfg, const TransformInfo& info) const {
    transforms_[info.move_type]->undo(cfg, info);
  }

  /** Add a transform to the set. */
  void insert_transform(Transform* tr, size_t weight = 1) {
    size_t label = transforms_.size();
    transforms_.push_back(tr);
    for(size_t i = 0; i < weight; ++i)
      transform_pool_.push_back(label);
  }

  /** Get a pointer to a transform at a given index.  This is
    useful to identify what transform was used by looking at the
    move_type field of TransformInfo(). */
  Transform* get_transform(size_t index) const {
    assert(index < transforms_.size());
    return transforms_[index];
  }

  /** Returns the number of transforms available to choose from. */
  size_t size() const {
    return transforms_.size();
  }

protected:

  /** Transforms that we have available to use. */
  std::vector<Transform*> transforms_;

  /** Members are indexes into transforms_ vector.  The indexes are
    repeated based on the given weight of the transform. */
  std::vector<size_t> transform_pool_;
};

} // namespace stoke

#endif
