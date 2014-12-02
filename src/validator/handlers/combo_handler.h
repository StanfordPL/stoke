
#ifndef STOKE_SRC_VALIDATOR_HANDLER_COMBO_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_COMBO_HANDLER_H

#include "src/validator/handler.h"
#include "src/validator/handlers.h"

namespace stoke {

/** Uses several handlers, in prioritized order, to build a circuit */
class ComboHandler : public Handler {

public:
  /** Uses a predefined and prioritized list of handlers to build circuits */
  ComboHandler() : handlers_(default_handler_list()), free_handlers_(true) {}
  /** Set the prioritized list of handlers used to build circuits */
  ComboHandler(std::vector<Handler*>& handlers) : handlers_(handlers), free_handlers_(false) {}
  /** Destruct object.  Frees handlers if set by default. */
  ~ComboHandler() {
    if(free_handlers_)
      for(auto it : handlers_)
        delete it;
  }

  /** Get the support level for a particular instruction */
  SupportLevel get_support(const x64asm::Instruction& instr);

  /** Build a circuit for a particular instruction */
  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

  /** Get the handler and support level for an instruction */
  Handler* get_handler(const x64asm::Instruction& instr, SupportLevel& sl);

  /** Default prioritized list of handlers */
  std::vector<Handler*> default_handler_list() const {
    std::vector<Handler*> v;

    // New Handlers
    v.push_back(new LeaHandler());
    v.push_back(new MoveHandler());
    v.push_back(new ShiftHandler());

    v.push_back(new LegacyHandler());
    return v;
  }

  /** Internal list of handlers that we use */
  const std::vector<Handler*> handlers_;
  /** Whether we need to free these handlers */
  const bool free_handlers_;


};

} //namespace stoke


#endif
