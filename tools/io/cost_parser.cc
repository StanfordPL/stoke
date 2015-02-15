
#include "tools/io/cost_parser.h"

using namespace std;
using namespace stoke;

CostFunction* CostParser::parse_S() {
  return new ExprCost(0);
}


