// Copyright 2014 eric schkufza
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

#ifndef STOKE_TOOLS_GADGETS_VERIFIER_H
#define STOKE_TOOLS_GADGETS_VERIFIER_H

#include "src/cost/cost_function.h"
#include "src/verifier/verifier.h"
#include "tools/args/verifier.h"

namespace stoke {

class VerifierGadget : public Verifier {
	public:
		VerifierGadget(CostFunction& fxn) : Verifier(fxn) {
			set_strategy(strategy_arg);
		}
};

} // namespace stoke

#endif
