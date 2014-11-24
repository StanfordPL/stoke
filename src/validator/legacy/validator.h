#ifndef STOKE_SRC_VALIDATOR_LEGACY_VALIDATOR_H
#define STOKE_SRC_VALIDATOR_LEGACY_VALIDATOR_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/state.h"
#include "src/validator/error.h"
#include "src/validator/handler.h"
#include "src/validator/handlers.h"
#include "src/validator/legacy/c_interface.h"
#include "src/validator/legacy/sym_state.h"

#define PAIR_INFO const std::pair<stoke::Bijection<std::string>,std::map<SS_Id, unsigned int> >&


std::string idToStr(SS_Id, PAIR_INFO I=all_state_info);
Expr regExpr(std::string, unsigned int size=V_UNITSIZE);
std::set<SS_Id> keys(std::map<SS_Id, unsigned int> dict);

#endif
