//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef enum
{
    // ***
    // N.B. Do not change the order here. We have a static table which is indexed by these
    // values (in ins_api_xed_ia32.cpp).
    // ***
    PREDICATE_ALWAYS_TRUE,  ///< Default predication on IA-32 and Intel(R) 64 architectures
    PREDICATE_INVALID,
    // Predicates for CMOV instructions, names chosen to align with XED names for the CMOVs
    PREDICATE_BELOW,          ///< Below          (CF==1)
    PREDICATE_BELOW_OR_EQUAL, ///< Below or Equal (CF==1 or  ZF==1)
    PREDICATE_LESS,           ///< Less           (SF!=OF)
    PREDICATE_LESS_OR_EQUAL,  ///< Less or Equal  (ZF==1 or SF!=OF)
    PREDICATE_NOT_BELOW,      ///< Not Below      (CF==0)
    PREDICATE_NOT_BELOW_OR_EQUAL, ///< Above      (CF==0 and ZF==0)
    PREDICATE_NOT_LESS,       ///< Greater or Equal (SF==OF)
    PREDICATE_NOT_LESS_OR_EQUAL,///< Greater        (ZF==0 and SF==OF)
    PREDICATE_NOT_OVERFLOW,   ///< Not Overflow   (OF==0)
    PREDICATE_NOT_PARITY  ,   ///< Not Parity     (PF==0)
    PREDICATE_NOT_SIGN  ,     ///< Not Sign       (SF==0)
    PREDICATE_NOT_ZERO  ,     ///< Not Zero       (ZF==0)
    PREDICATE_OVERFLOW,       ///< Overflow       (OF==1)
    PREDICATE_PARITY,         ///< Parity         (PF==1)
    PREDICATE_SIGN  ,         ///< Sign           (SF==1)
    PREDICATE_ZERO  ,         ///< Zero           (ZF==1)
    // Predicates for REP string ops
    PREDICATE_CX_NON_ZERO,    ///< CX  != 0
    PREDICATE_ECX_NON_ZERO,   ///< ECX != 0
    PREDICATE_RCX_NON_ZERO,   ///< RCX != 0
    PREDICATE_SAVED_GCX_NON_ZERO, ///< (Internal) Use the saved value of one of the previous three tests
    PREDICATE_LAST
}PREDICATE_IA32;

                                                                  /* DO NOT EDIT */

