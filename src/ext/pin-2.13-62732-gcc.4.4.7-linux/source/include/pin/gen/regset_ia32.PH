//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


const REG REG_FirstInRegset = REG_RBASE;

                                                                  /* DO NOT EDIT */
const REG REG_LastInRegset = REG(REG_LAST-1);

                                                                  /* DO NOT EDIT */
typedef class REGISTER_SET<REG_FirstInRegset, REG_LastInRegset>  REGSET;

                                                                  /* DO NOT EDIT */
inline BOOL REGSET_Contains(const REGSET & regset, REG reg) { return regset.Contains(reg);}

                                                                  /* DO NOT EDIT */
inline VOID REGSET_Insert(REGSET& regset, REG reg) { regset.Insert(reg);}

                                                                  /* DO NOT EDIT */
inline VOID REGSET_Remove(REGSET& regset, REG reg) { regset.Remove(reg);}

                                                                  /* DO NOT EDIT */
inline VOID REGSET_Clear(REGSET& regset) { regset.Clear();}

                                                                  /* DO NOT EDIT */
inline VOID REGSET_AddAll(REGSET& regset)
{
    regset.InsertAll();
#ifdef TARGET_MIC
    regset.Remove(REG_XMM_BASE);
    regset.Remove(REG_YMM_BASE);
#else
    regset.Remove(REG_ZMM_BASE);
    regset.Remove(REG_K_BASE);
#endif

}

                                                                  /* DO NOT EDIT */
inline REG REGSET_PopNext(REGSET& regset) { return regset.PopNext();}

                                                                  /* DO NOT EDIT */
inline UINT32 REGSET_PopCount(const REGSET& regset) { return regset.PopCount();}

                                                                  /* DO NOT EDIT */
inline BOOL REGSET_PopCountIsZero(const REGSET& regset) { return regset.PopCountIsZero();}

                                                                  /* DO NOT EDIT */
inline string REGSET_StringShort(const REGSET& regset) { return regset.String();}

                                                                  /* DO NOT EDIT */
inline string REGSET_StringList(const REGSET& regset) { return regset.StringList();}

                                                                  /* DO NOT EDIT */

