//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef BOOL (*DEBUG_INTERPRETER_CALLBACK)(THREADID threadIndex, CONTEXT *ctxt, const std::string &cmd,
    std::string *reply, VOID *v);

                                                                  /* DO NOT EDIT */
typedef BOOL (*INTERCEPT_DEBUGGING_EVENT_CALLBACK)(THREADID tid, DEBUGGING_EVENT eventType,
    CONTEXT *ctxt, VOID *arg);

                                                                  /* DO NOT EDIT */
typedef VOID (*GET_EMULATED_REGISTER_CALLBACK)(unsigned toolRegId, THREADID tid, CONTEXT *ctxt,
    VOID *data, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*SET_EMULATED_REGISTER_CALLBACK)(unsigned toolRegId, THREADID tid, CONTEXT *ctxt,
    const VOID *data, VOID *v);

                                                                  /* DO NOT EDIT */
typedef USIZE (*GET_TARGET_DESCRIPTION_CALLBACK)(const std::string &name, USIZE size, VOID *buf,
    VOID *v);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddDebugInterpreter(DEBUG_INTERPRETER_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RemoveDebugInterpreter(DEBUG_INTERPRETER_CALLBACK fun);

                                                                  /* DO NOT EDIT */
extern VOID PIN_ApplicationBreakpoint(const CONTEXT *ctxt, THREADID tid, BOOL waitIfNoDebugger,
    const std::string &msg);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_SetDebugMode(const DEBUG_MODE *mode);

                                                                  /* DO NOT EDIT */
extern DEBUG_STATUS PIN_GetDebugStatus();

                                                                  /* DO NOT EDIT */
extern BOOL PIN_GetDebugConnectionInfo(DEBUG_CONNECTION_INFO *info);

                                                                  /* DO NOT EDIT */
extern DEBUGGER_TYPE PIN_GetDebuggerType();

                                                                  /* DO NOT EDIT */
extern BOOL PIN_WaitForDebuggerToConnect(unsigned timeout);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_GetStoppedThreadPendingToolBreakpoint(THREADID tid, std::string *msg);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_ChangePendingToolBreakpointOnStoppedThread(THREADID tid, BOOL squash,
    const std::string &msg);

                                                                  /* DO NOT EDIT */
extern VOID PIN_InterceptDebuggingEvent(DEBUGGING_EVENT eventType,
    INTERCEPT_DEBUGGING_EVENT_CALLBACK fun, VOID *arg);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddDebuggerRegisterEmulator(unsigned numRegisters,
    const DEBUGGER_REG_DESCRIPTION *registerDescriptions,
    GET_EMULATED_REGISTER_CALLBACK getFun,
    SET_EMULATED_REGISTER_CALLBACK setFun,
    GET_TARGET_DESCRIPTION_CALLBACK getDescriptionFun,
    VOID *val);

                                                                  /* DO NOT EDIT */

