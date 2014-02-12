//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


/* DO NOT EDIT */
/* VARIABLE_MEMORY_REFERENCE_SIZE is now deprecated. Pin will never generate this value.
 * See the discussion in the Pin manual about how the cases which used to require 
 * VARIABLE_MEMORY_REFERENCE_SIZE are now handled.
 */
const PIN_DEPRECATED_API UINT32 VARIABLE_MEMORY_REFERENCE_SIZE = ~0U;

                                                                  /* DO NOT EDIT */
typedef enum 
{
    MEMORY_TYPE_READ,
    MEMORY_TYPE_WRITE,
    MEMORY_TYPE_READ2
} MEMORY_TYPE;

                                                                  /* DO NOT EDIT */
typedef enum
{
    SYSCALL_STANDARD_INVALID,               ///< Invalid value; the instruction is not a system call
    SYSCALL_STANDARD_IA32_LINUX,            ///< Linux system call on IA-32 architecture
    SYSCALL_STANDARD_IA32E_LINUX,           ///< Linux system call on Intel(R) 64 architecture
    SYSCALL_STANDARD_IA32_MAC,              ///< MacOS system call in IA-32 architecture
    SYSCALL_STANDARD_IA32E_MAC,             ///< MacOS system call in Intel(R) 64 architecture
    SYSCALL_STANDARD_IA32_WINDOWS_FAST,     ///< "Fast" (SYSENTER) Windows system call in IA-32 architecture 
    SYSCALL_STANDARD_IA32E_WINDOWS_FAST,    ///< "Fast" (SYSCALL) Windows system call in Intel(R) 64 architecture
    SYSCALL_STANDARD_IA32_WINDOWS_ALT,      ///< Alternative (INT2E) Windows system call in IA-32 architecture 
    SYSCALL_STANDARD_WOW64,                 ///< System call in WOW64 (32 bit process in 64-bit Windows)
    SYSCALL_STANDARD_WINDOWS_INT            ///< Software interruption (INT n) in Windows  
} SYSCALL_STANDARD;

                                                                  /* DO NOT EDIT */

