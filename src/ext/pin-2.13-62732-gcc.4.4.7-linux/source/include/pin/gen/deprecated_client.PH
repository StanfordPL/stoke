//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef VOID (*SIGNAL_BEFORE_CALLBACK)(THREADID threadIndex, INT32 sig, const CONTEXT *ctxtFrom,
    const CONTEXT *ctxtTo, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*SIGNAL_AFTER_CALLBACK)(THREADID threadIndex, const CONTEXT *ctxtFrom,
    const CONTEXT *ctxtTo, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*THREAD_BEGIN_CALLBACK)(THREADID threadIndex, VOID * sp, int flags, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*THREAD_END_CALLBACK)(THREADID threadIndex, INT32 code, VOID *v);

                                                                  /* DO NOT EDIT */
typedef BOOL (*SIGNAL_INTERCEPT_CALLBACK)(THREADID threadIndex, INT32 sig,
 CONTEXT *ctxt, BOOL hasHndlr, VOID *v);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_AddSignalBeforeFunction is now deprecated. See PIN_AddContextChangeFunction.
 */
extern PIN_DEPRECATED_API BOOL PIN_AddSignalBeforeFunction(SIGNAL_BEFORE_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_AddSignalAfterFunction is now deprecated. See PIN_AddContextChangeFunction.
 */
extern PIN_DEPRECATED_API BOOL PIN_AddSignalAfterFunction(SIGNAL_AFTER_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_AddSignalInterceptFunction is now deprecated. See PIN_InterceptSignal and
 * PIN_UnblockSignal.
 */
extern PIN_DEPRECATED_API BOOL PIN_AddSignalInterceptFunction(INT32 sig, SIGNAL_INTERCEPT_CALLBACK fun,
    VOID *val);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_AddThreadBeginFunction is now deprecated. See PIN_AddThreadStartFunction.
 */
extern PIN_DEPRECATED_API VOID PIN_AddThreadBeginFunction(THREAD_BEGIN_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_AddThreadEndFunction is now deprecated. See PIN_AddThreadFiniFunction.
 */
extern PIN_DEPRECATED_API VOID PIN_AddThreadEndFunction(THREAD_END_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_StartProbedProgram is now deprecated. See PIN_StartProgramProbed.
 */
extern PIN_DEPRECATED_API VOID PIN_StartProbedProgram();

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* RTN_IsSafeForProbe is now deprecated. See RTN_IsSafeForProbedReplacement.
 */
extern PIN_DEPRECATED_API BOOL RTN_IsSafeForProbe(RTN rtn);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* RTN_ReplaceWithUninstrumentedRoutine is now deprecated. See RTN_Replace and
 * RTN_ReplaceProbed.
 */
extern PIN_DEPRECATED_API VOID RTN_ReplaceWithUninstrumentedRoutine(RTN replacedRtn, AFUNPTR replacementFun);

                                                                  /* DO NOT EDIT */

