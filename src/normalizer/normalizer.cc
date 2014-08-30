
#include "src/normalizer/normalizer.h"

using namespace stoke;
using namespace std;

Normalizer::Normalizer() {

}

void Normalizer::slurp_cfg(Cfg &cfg) {

  // STEP 1: compute reaching definitions
  cfg.recompute_defs();
  cout << "the block count: " << cfg.num_blocks() << endl;

  // STEP 2: build chunks with
  // vectors of instructions


  // STEP 3: rewrite registers


}
