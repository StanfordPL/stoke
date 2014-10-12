#ifndef STOKE_SRC_VALIDATOR_EXTRAS_H
#define STOKE_SRC_VALIDATOR_EXTRAS_H

#include "src/validator/c_interface.h"
#include "src/validator/error.h"
#include <string>
#include <vector>

void addExtraConstraints(VC& vc,std:: vector<Expr>& constraints, std::string filename );
#endif
