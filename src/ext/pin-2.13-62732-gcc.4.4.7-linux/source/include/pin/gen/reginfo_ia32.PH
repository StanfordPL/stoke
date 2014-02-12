//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


enum REGWIDTH
{
    REGWIDTH_8=0,
    REGWIDTH_16=1,
    REGWIDTH_32=2,
    REGWIDTH_64=3,
    REGWIDTH_80,
    REGWIDTH_128,
    REGWIDTH_256,
    REGWIDTH_512,
    REGWIDTH_FPSTATE,
    REGWIDTH_INVALID,
#if defined(TARGET_IA32)
    REGWIDTH_NATIVE=REGWIDTH_32
#else
    REGWIDTH_NATIVE=REGWIDTH_64
#endif
};

                                                                  /* DO NOT EDIT */
enum REG_CLASS
{
    REG_CLASS_NONE      = 0,
    REG_CLASS_PSEUDO,
    REG_CLASS_GR,
    REG_CLASS_GRU8,
    REG_CLASS_GRL8,
    REG_CLASS_GRH16,
    REG_CLASS_GRH32,
    REG_CLASS_SEG,
    REG_CLASS_MM,
    REG_CLASS_EMM,
    REG_CLASS_XMM,
    REG_CLASS_YMM,
    REG_CLASS_ZMM,
    REG_CLASS_K,
    REG_CLASS_FPST,
    REG_CLASS_FPST_EXT,
    REG_CLASS_ST,
    REG_CLASS_CR,
    REG_CLASS_DR,
    REG_CLASS_TR,
    REG_CLASS_FLAGS,
    REG_CLASS_FLAGS16,
    REG_CLASS_FLAGS32,
    REG_CLASS_STATUS_FLAGS,
    REG_CLASS_DFLAG,
    REG_CLASS_X87,
    REG_CLASS_MXCSR,
    REG_CLASS_MXCSRMASK,
    REG_CLASS_IP,
    REG_CLASS_IP16,
    REG_CLASS_IP32,
    REG_CLASS_ARCH,         // Architectural register, that does not belong to any specific class
    REG_CLASS_PIN_GR,
    REG_CLASS_PIN_GRU8,
    REG_CLASS_PIN_GRL8,
    REG_CLASS_PIN_GRH16,
    REG_CLASS_PIN_GRH32,
    REG_CLASS_PIN_XMM,
    REG_CLASS_PIN_YMM,
    REG_CLASS_PIN_ZMM,
    REG_CLASS_PIN_K,
    REG_CLASS_PIN_X87,
    REG_CLASS_PIN_MXCSR,
    REG_CLASS_PIN_FLAGS,
    REG_CLASS_PIN_STATUS_FLAGS,
    REG_CLASS_PIN_DFLAG
};

                                                                  /* DO NOT EDIT */
typedef UINT64 REG_CLASS_BITS;

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
#define _REGCBIT(regClass)  (REG_CLASS_BITS(1) << (regClass))
const REG_CLASS_BITS REGCBIT_APP_ALL = 
    _REGCBIT(REG_CLASS_PSEUDO)              |
    (_REGCBIT(REG_CLASS_GR)                  )|
    (_REGCBIT(REG_CLASS_GRU8)                )|
    (_REGCBIT(REG_CLASS_GRL8)                )|
    (_REGCBIT(REG_CLASS_GRH16)               )|
    (_REGCBIT(REG_CLASS_GRH32)               )|
    (_REGCBIT(REG_CLASS_SEG)                 )|
    (_REGCBIT(REG_CLASS_MM)                  )|
    (_REGCBIT(REG_CLASS_EMM)                 )|
    (_REGCBIT(REG_CLASS_XMM)                 )|
    (_REGCBIT(REG_CLASS_YMM)                 )|
    (_REGCBIT(REG_CLASS_ZMM)                 )|
    (_REGCBIT(REG_CLASS_K)                   )|
    (_REGCBIT(REG_CLASS_FPST)                )|
    (_REGCBIT(REG_CLASS_FPST_EXT)            )|
    (_REGCBIT(REG_CLASS_ST)                  )|
    (_REGCBIT(REG_CLASS_CR)                  )|
    (_REGCBIT(REG_CLASS_DR)                  )|
    (_REGCBIT(REG_CLASS_TR)                  )|
    (_REGCBIT(REG_CLASS_FLAGS)               )|
    (_REGCBIT(REG_CLASS_FLAGS16)             )|
    (_REGCBIT(REG_CLASS_FLAGS32)             )|
    (_REGCBIT(REG_CLASS_STATUS_FLAGS)        )|
    (_REGCBIT(REG_CLASS_DFLAG)               )|
    (_REGCBIT(REG_CLASS_X87)                 )|
    (_REGCBIT(REG_CLASS_MXCSR)               )|
    (_REGCBIT(REG_CLASS_MXCSRMASK)           )|
    (_REGCBIT(REG_CLASS_IP)                  )|
    (_REGCBIT(REG_CLASS_IP16)                )|
    (_REGCBIT(REG_CLASS_IP32)                )|
    (_REGCBIT(REG_CLASS_ARCH));

                                                                  /* DO NOT EDIT */
const REG_CLASS_BITS REGCBIT_PIN_ALL = 

    (_REGCBIT(REG_CLASS_PIN_GR)              )|
    (_REGCBIT(REG_CLASS_PIN_GRU8)            )|
    (_REGCBIT(REG_CLASS_PIN_GRL8)            )|
    (_REGCBIT(REG_CLASS_PIN_GRH16)           )|
    (_REGCBIT(REG_CLASS_PIN_GRH32)           )|
    (_REGCBIT(REG_CLASS_PIN_XMM)             )|
    (_REGCBIT(REG_CLASS_PIN_YMM)             )|
    (_REGCBIT(REG_CLASS_PIN_ZMM)             )|
    (_REGCBIT(REG_CLASS_PIN_K)               )|
    (_REGCBIT(REG_CLASS_PIN_X87)             )|
    (_REGCBIT(REG_CLASS_PIN_MXCSR)           )|
    (_REGCBIT(REG_CLASS_PIN_FLAGS)           )|
    (_REGCBIT(REG_CLASS_PIN_STATUS_FLAGS)    )|
    (_REGCBIT(REG_CLASS_PIN_DFLAG));

                                                                  /* DO NOT EDIT */
const REG_CLASS_BITS REGCBIT_ALL_REGS = REGCBIT_APP_ALL | REGCBIT_PIN_ALL;

                                                                  /* DO NOT EDIT */
const REG_CLASS_BITS REGCBIT_APP_FLAGS = 

    (_REGCBIT(REG_CLASS_FLAGS)               )|
    (_REGCBIT(REG_CLASS_STATUS_FLAGS)        )|
    (_REGCBIT(REG_CLASS_DFLAG));

                                                                  /* DO NOT EDIT */
const REG_CLASS_BITS REGCBIT_PIN_FLAGS = 
    (_REGCBIT(REG_CLASS_PIN_FLAGS)           )|
    (_REGCBIT(REG_CLASS_PIN_STATUS_FLAGS)    )|
    (_REGCBIT(REG_CLASS_PIN_DFLAG));

                                                                  /* DO NOT EDIT */
const REG_CLASS_BITS REGCBIT_PARTIAL = 
    (_REGCBIT(REG_CLASS_GRU8)                )|
    (_REGCBIT(REG_CLASS_GRL8)                )|
    (_REGCBIT(REG_CLASS_GRH16)               )|
    (_REGCBIT(REG_CLASS_GRH32)               )|
    (_REGCBIT(REG_CLASS_FLAGS16)             )|
    (_REGCBIT(REG_CLASS_FLAGS32)             )|
    (_REGCBIT(REG_CLASS_IP16)                )|
    (_REGCBIT(REG_CLASS_IP32)                )|
    (_REGCBIT(REG_CLASS_PIN_GRU8)            )|
    (_REGCBIT(REG_CLASS_PIN_GRL8)            )|
    (_REGCBIT(REG_CLASS_PIN_GRH16)           )|
    (_REGCBIT(REG_CLASS_PIN_GRH32));

                                                                  /* DO NOT EDIT */
const REG_CLASS_BITS REGCBIT_SPILL_ALL = REGCBIT_ALL_REGS & 
    ~(
    REGCBIT_PARTIAL                        |
    (_REGCBIT(REG_CLASS_PSEUDO)              )|
    (_REGCBIT(REG_CLASS_MM)                  )|
    (_REGCBIT(REG_CLASS_EMM)                 )|
    (_REGCBIT(REG_CLASS_FPST)                )|
    (_REGCBIT(REG_CLASS_FPST_EXT)            )|
    (_REGCBIT(REG_CLASS_ST))
    );

                                                                  /* DO NOT EDIT */
enum REG_SUBCLASS
{
    REG_SUBCLASS_NONE      = 0,
    REG_SUBCLASS_REX,
    REG_SUBCLASS_FULL_STACKPTR,
    REG_SUBCLASS_PIN_FULL_STACKPTR,
    REG_SUBCLASS_PIN_TMP,
    REG_SUBCLASS_PIN_INST_GR,
    REG_SUBCLASS_PIN_INST_GR_H32,
    REG_SUBCLASS_PIN_INST_BUF,
    REG_SUBCLASS_PIN_INST_COND
};

                                                                  /* DO NOT EDIT */
const REG_SUBCLASS_BITS REGSBIT_PIN_INST_ALL = 
    (_REGCBIT(REG_SUBCLASS_PIN_INST_GR)      )|
    (_REGCBIT(REG_SUBCLASS_PIN_INST_GR_H32)  )|
    (_REGCBIT(REG_SUBCLASS_PIN_INST_BUF)     )|
    (_REGCBIT(REG_SUBCLASS_PIN_INST_COND));

                                                                  /* DO NOT EDIT */
const REG_SUBCLASS_BITS REGSBIT_PIN_SCRATCH_ALL = 
    (_REGCBIT(REG_SUBCLASS_PIN_INST_GR)      )|
    (_REGCBIT(REG_SUBCLASS_PIN_INST_BUF));

                                                                  /* DO NOT EDIT */
const REG_SUBCLASS_BITS REGSBIT_STACKPTR_ALL = 
    (_REGCBIT(REG_SUBCLASS_FULL_STACKPTR)         )|
    (_REGCBIT(REG_SUBCLASS_PIN_FULL_STACKPTR));

                                                                  /* DO NOT EDIT */
enum REG_ALLOC_TYPE
{
    REG_ALLOC_NONE      = 0,    // Non-allocatable register
    REG_ALLOC_PART,             // Register should be assigned to the corresponding part of the full register
    REG_ALLOC_ANY_GR,           // Register can be assigned to any GR
    REG_ALLOC_IDENT,            // Register should be assigned to the corresponding machine register

    REG_ALLOC_CR            = REG_ALLOC_IDENT,
    REG_ALLOC_DR            = REG_ALLOC_IDENT,
    REG_ALLOC_TR            = REG_ALLOC_IDENT,
    REG_ALLOC_ST            = REG_ALLOC_IDENT,
    REG_ALLOC_MM            = REG_ALLOC_IDENT,
    REG_ALLOC_EMM           = REG_ALLOC_IDENT,
    REG_ALLOC_XMM           = REG_ALLOC_IDENT,
    REG_ALLOC_YMM           = REG_ALLOC_IDENT,
    REG_ALLOC_ZMM           = REG_ALLOC_IDENT,
    REG_ALLOC_K             = REG_ALLOC_IDENT,
    REG_ALLOC_SEG           = REG_ALLOC_IDENT,
    REG_ALLOC_STACK_PTR     = REG_ALLOC_IDENT,
    REG_ALLOC_X87           = REG_ALLOC_IDENT,
    REG_ALLOC_FLAGS         = REG_ALLOC_IDENT,
    REG_ALLOC_STATUS_FLAGS  = REG_ALLOC_IDENT,
    REG_ALLOC_DFLAG         = REG_ALLOC_IDENT
};

                                                                  /* DO NOT EDIT */

