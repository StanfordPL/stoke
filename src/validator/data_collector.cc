//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/serialize/serialize.h"
#include "src/validator/data_collector.h"

#define MAX(a,b) ((a) > (b) ? (a) : (b))

#define DEBUG_CUTPOINTS(X) { }


using namespace std;
using namespace stoke;
using namespace x64asm;



const std::vector<DataCollector::Trace>& DataCollector::get_traces(Cfg& cfg) {

  if (cache_.count(&cfg)) {
    return cache_[&cfg];
  }

  vector<Trace> traces;
  cout << "COLLECTING DATA..." << endl;
  for (size_t i = 0; i < sandbox_.size(); ++i) {
    Trace trace;
    mine_data(cfg, i, trace);
    for(auto& tp : trace) {
      tp.cs.shadow.clear();
    }
    traces.push_back(trace);
  }
  cout << "... DONE" << endl;
  cache_[&cfg] = traces;
  return cache_[&cfg];

}


std::vector<DataCollector::Trace> DataCollector::get_detailed_traces(const Cfg& cfg, const LineMap * const linemap) {

  vector<Trace> traces;
  //cout << "[get_detailed_trace] sandbox_.size() = " << sandbox_.size() << endl;
  for(size_t testcase = 0; testcase < sandbox_.size(); ++testcase) {
    size_t index;
    auto label = cfg.get_function().get_leading_label();
    sandbox_.insert_function(cfg);
    sandbox_.set_entrypoint(label);
    sandbox_.clear_callbacks();

    if(linemap != nullptr)
      sandbox_.set_linemap(*linemap);

    std::vector<CallbackParam*> to_free;

    Trace trace;

    auto code = cfg.get_code();
    for(size_t i = 0; i < code.size(); ++i) {

      CallbackParam* cp = new CallbackParam();
      to_free.push_back(cp);

      cp->block_id = cfg.get_loc(i).first;
      cp->trace = &trace;
      cp->line_number = i;

      if(linemap != nullptr) {
        if(i == code.size() - 1)
          continue;
        cp->block_id = linemap->at(i).block_number;
        cp->line_number = linemap->at(i).line_number;
      }

      auto instr = code[i];
      cout << "[get_detailed_trace] instrumenting " << instr << endl;
      if(instr.is_any_jump() || collect_before_) {
        sandbox_.insert_before(label, i, callback, cp);
      } else {
        sandbox_.insert_after(label, i, callback, cp);
      }
    }

    cout << "[get_detailed_trace] running sandbox with testcase=" << testcase << endl;
    cout << *sandbox_.get_input(testcase) << endl;
    sandbox_.run(testcase);
    cout << "[get_detailed_trace] output" << endl;
    cout << *sandbox_.get_output(testcase) << endl;

    for (auto it : to_free)
      delete it;

    traces.push_back(trace);
  }

  return traces;
}

void DataCollector::mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace) {

  size_t index;
  auto label = cfg.get_function().get_leading_label();
  sandbox_.clear_callbacks();
  sandbox_.insert_function(cfg);
  sandbox_.set_entrypoint(label);

  std::vector<CallbackParam*> to_free;

  for (Cfg::id_type block = cfg.get_entry(); block != cfg.get_exit(); block++) {

    CallbackParam* cp = new CallbackParam();
    to_free.push_back(cp);

    cp->block_id = block;
    cp->trace = &trace;

    bool has_jump = ends_with_jump(cfg, block);

    if (block == cfg.get_entry()) {
      // Don't run sandbox; callback manually.  This is to avoid repeated calls to the callback for jumps back to the
      // beginning of the loop... which is not what we want in general.
      TracePoint tp;
      tp.block_id = block;
      tp.cs = *sandbox_.get_input(testcase);
      tp.line_number = 0;
      trace.push_back(tp);

    } else if (has_jump) {
      index = cfg.get_index(Cfg::loc_type(block, cfg.num_instrs(block)-1));
      cp->line_number = index;
      //DEBUG_CUTPOINTS(cout << "  - instrumenting before index=" << index << std::endl;)
      sandbox_.insert_before(label, index, callback, cp);
    } else {
      index = cfg.get_index(Cfg::loc_type(block, cfg.num_instrs(block)-1));
      cp->line_number = index;
      //DEBUG_CUTPOINTS(cout << "  - instrumenting after index=" << index << std::endl;)
      sandbox_.insert_after(label, index, callback, cp);
    }
  }

  sandbox_.run(testcase);

  for (auto it : to_free)
    delete it;

}

bool DataCollector::ends_with_jump(const Cfg& cfg, Cfg::id_type block) {
  size_t instrs = cfg.num_instrs(block);
  if (instrs == 0)
    return false;

  auto loc = Cfg::loc_type(block, instrs-1);
  auto instr = cfg.get_instr(loc);
  return instr.is_any_jump() || instr.is_ret();
}

void DataCollector::callback(const StateCallbackData& data, void* arg) {
  auto args = (CallbackParam*)(arg);

  TracePoint tp;
  tp.cs = data.state;
  tp.block_id = args->block_id;
  tp.line_number = args->line_number;

  args->trace->push_back(tp);
}

DataCollector DataCollector::deserialize(std::istream& is) {
  auto sb = stoke::deserialize<Sandbox>(is);
  DataCollector dc(sb);
  return dc;
}

void DataCollector::serialize(std::ostream& os) const {
  stoke::serialize<Sandbox>(os, sandbox_);
}

