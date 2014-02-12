//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


/* DO NOT EDIT */

#define EnterPinClientSlaveMode() CheckPinClientLock(__FUNCTION__)
#define ExitPinClientSlaveMode() CheckPinClientLock(__FUNCTION__)
#ifndef PIN_GENERATED_MESSAGE_PIN_H
#define LOG_IMAGE(s)         if(MessageTypeLogImage.on())       ClientInt()->_VmLog("IMAGE", s);
#define LOG_SYM(s)           if(MessageTypeLogSym.on())         ClientInt()->_VmLog("SYMBOLS", s);
#define LOG_PROBE(s)         if(MessageTypeLogProbe.on())       ClientInt()->_VmLog("PROBE", s);
#define LOG_FETCH_RTN_INS(s) if(MessageTypeLogFetchRtnIns.on()) ClientInt()->_VmLog("FETCH_RTN_INS", s);
#define LOG_UNWIND(s)        if(MessageTypeLogUnwind.on())      ClientInt()->_VmLog("UNWIND", s);
#define LOG_BUFFER(s)        if(MessageTypeLogBuffer.on())      ClientInt()->_VmLog("BUFFER", s);
#endif
class TRACE_CLASS;

                                                                  /* DO NOT EDIT */
typedef TRACE_CLASS * TRACE;

                                                                  /* DO NOT EDIT */
typedef VOID (*REMOVE_INSTRUMENTATION_CALLBACK)(VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*DETACH_CALLBACK)(VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*DETACH_PROBED_CALLBACK)(VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*ATTACH_PROBED_CALLBACK)(VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*APPLICATION_START_CALLBACK)(VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*FINI_CALLBACK)(INT32 code, VOID *v);

                                                                  /* DO NOT EDIT */
typedef size_t (*FETCH_CALLBACK)(void *buf, ADDRINT addr, size_t size,
    EXCEPTION_INFO *pExceptInfo, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*OUT_OF_MEMORY_CALLBACK)(size_t size, VOID *v);

                                                                  /* DO NOT EDIT */
typedef ADDRINT (PIN_FAST_ANALYSIS_CALL * MEMORY_ADDR_TRANS_CALLBACK)(PIN_MEM_TRANS_INFO* memTransInfo, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*FORK_CALLBACK)(THREADID threadid, const CONTEXT *ctxt, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*THREAD_START_CALLBACK)(THREADID threadIndex, CONTEXT *ctxt, INT32 flags, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*THREAD_ATTACH_PROBED_CALLBACK)(VOID *sigmask, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*THREAD_DETACH_PROBED_CALLBACK)(VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*THREAD_FINI_CALLBACK)(THREADID threadIndex, const CONTEXT *ctxt, INT32 code, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*CONTEXT_CHANGE_CALLBACK)(THREADID threadIndex, CONTEXT_CHANGE_REASON reason,
                                                   const CONTEXT *from, CONTEXT *to, INT32 info, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*SYSCALL_ENTRY_CALLBACK)(THREADID threadIndex, CONTEXT *ctxt, 
                                                  SYSCALL_STANDARD std, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*SYSCALL_EXIT_CALLBACK)(THREADID threadIndex, CONTEXT *ctxt, 
                                                 SYSCALL_STANDARD std, VOID *v);

                                                                  /* DO NOT EDIT */
typedef BOOL (*INTERCEPT_SIGNAL_CALLBACK)(THREADID tid, INT32 sig, CONTEXT *ctxt,
    BOOL hasHandler, const EXCEPTION_INFO *pExceptInfo, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*PROBES_INSERTED_CALLBACK)(IMG img, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID * (*TRACE_BUFFER_CALLBACK)(BUFFER_ID id, THREADID tid, const CONTEXT *ctxt,
                           VOID *buf, UINT64 numElements, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*INS_INSTRUMENT_CALLBACK)(INS ins, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*TRACE_INSTRUMENT_CALLBACK)(TRACE trace, VOID *v);

                                                                  /* DO NOT EDIT */
typedef VOID (*RTN_INSTRUMENT_CALLBACK)(RTN rtn, VOID *v);

                                                                  /* DO NOT EDIT */
enum REPLAY_MODE
{
    REPLAY_MODE_NONE            = 0x00,
    REPLAY_MODE_IMAGEOPS        = 0x01,   ///< Replayer will handle image ops
    REPLAY_MODE_ALL             = REPLAY_MODE_IMAGEOPS
};

                                                                  /* DO NOT EDIT */
extern VOID PIN_LockClient();

                                                                  /* DO NOT EDIT */
extern VOID PIN_UnlockClient();

                                                                  /* DO NOT EDIT */
extern VOID PIN_WriteErrorMessage( const char * msg, INT32 type, PIN_ERR_SEVERITY_TYPE severity, INT32 num, ... );

                                                                  /* DO NOT EDIT */
extern AFUNPTR RTN_Replace(RTN replacedRtn, AFUNPTR replacementFun);

                                                                  /* DO NOT EDIT */
extern AFUNPTR RTN_ReplaceSignature(RTN replacedRtn, AFUNPTR replacementFun, ...);

                                                                  /* DO NOT EDIT */
enum PROBE_MODE
{
    PROBE_MODE_DEFAULT = 0,
    PROBE_MODE_ALLOW_RELOCATION = (1<<0)
};

                                                                  /* DO NOT EDIT */
extern AFUNPTR RTN_ReplaceProbed(RTN replacedRtn, AFUNPTR replacementFun);

                                                                  /* DO NOT EDIT */
extern AFUNPTR RTN_ReplaceProbedEx(RTN replacedRtn, PROBE_MODE mode, 
                                 AFUNPTR replacementFun);

                                                                  /* DO NOT EDIT */
extern VOID PIN_CallApplicationFunction(const CONTEXT * ctxt, THREADID tid, CALLINGSTD_TYPE cstype,
    AFUNPTR origFunPtr, ... );

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsAddedForFunctionReplacement(INS ins);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_RegisterItcAuxCallBackPushFun is now deprecated. */
extern PIN_DEPRECATED_API VOID PIN_RegisterItcAuxCallBackPushFun(AFUNPTR callBackPushFun);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* RTN_ComplexReplaceWithUninstrumentedRoutine is now deprecated. */
extern PIN_DEPRECATED_API VOID RTN_ComplexReplaceWithUninstrumentedRoutine(RTN replacedRtn, AFUNPTR replacementFun);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* PIN_FindAlternateAppStack is now deprecated. */
extern PIN_DEPRECATED_API ADDRINT PIN_FindAlternateAppStack();

                                                                  /* DO NOT EDIT */
extern VOID TRACE_AddInstrumentFunction(TRACE_INSTRUMENT_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddTraceInsertedFunction(TRACE_INSTRUMENT_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID INS_AddInstrumentFunction(INS_INSTRUMENT_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddFiniFunction(FINI_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddFiniUnlockedFunction(FINI_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddFetchFunction(FETCH_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern size_t PIN_FetchCode(void *copyBuf, const VOID *address, size_t maxSize,
                               EXCEPTION_INFO *pExceptInfo);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddOutOfMemoryFunction(OUT_OF_MEMORY_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddMemoryAddressTransFunction(MEMORY_ADDR_TRANS_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern MEMORY_ADDR_TRANS_CALLBACK PIN_GetMemoryAddressTransFunction();

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddDetachFunction(DETACH_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddDetachFunctionProbed(DETACH_PROBED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddThreadStartFunction(THREAD_START_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddThreadAttachProbedFunction(THREAD_ATTACH_PROBED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddThreadDetachProbedFunction(
        THREAD_DETACH_PROBED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddApplicationStartFunction(APPLICATION_START_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddThreadFiniFunction(THREAD_FINI_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddContextChangeFunction(CONTEXT_CHANGE_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddSyscallEntryFunction(SYSCALL_ENTRY_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddSyscallExitFunction(SYSCALL_EXIT_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_InterceptSignal(INT32 sig, INTERCEPT_SIGNAL_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_UnblockSignal(INT32 sig, BOOL enable);

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddProbesInsertedFunction( PROBES_INSERTED_CALLBACK fun, VOID *val );

                                                                  /* DO NOT EDIT */
enum FPOINT
{
    FPOINT_BEFORE,          ///< Call-back in parent, just before fork
    FPOINT_AFTER_IN_PARENT, ///< Call-back in parent, immediately after fork
    FPOINT_AFTER_IN_CHILD   ///< Call-back in child, immediately after fork
};

                                                                  /* DO NOT EDIT */
extern VOID PIN_AddForkFunction(FPOINT point, FORK_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RemoveInstrumentation();

                                                                  /* DO NOT EDIT */
extern VOID PIN_RemoveFiniFunctions();

                                                                  /* DO NOT EDIT */
extern VOID PIN_Detach();

                                                                  /* DO NOT EDIT */
extern VOID PIN_DetachProbed();

                                                                  /* DO NOT EDIT */
extern VOID PIN_AttachProbed(ATTACH_PROBED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertPredicatedCall(INS ins, IPOINT ipoint, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertCall(INS ins, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertIfCall(INS ins, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertThenCall(INS ins, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertIfPredicatedCall(INS ins, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertThenPredicatedCall(INS ins, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID PIN_StartProgram();

                                                                  /* DO NOT EDIT */
extern VOID PIN_StartProgramProbed();

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeLogProbe;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeLogBuffer;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeLogUnwind;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeLogFetchRtnIns;

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* ParseCommandLine is now deprecated. Instead check the return value from PIN_Init. */
extern PIN_DEPRECATED_API BOOL ParseCommandLine(int xargc, CHAR **xargv);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_Init(INT32 argc, CHAR ** argv);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetReplayMode(UINT32 flags);

                                                                  /* DO NOT EDIT */
extern VOID TRACE_InsertCall(TRACE trace, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID TRACE_InsertIfCall(TRACE trace, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID TRACE_InsertThenCall(TRACE trace, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern BBL TRACE_BblHead(TRACE trace);

                                                                  /* DO NOT EDIT */
extern BBL TRACE_BblTail(TRACE trace);

                                                                  /* DO NOT EDIT */
extern BOOL TRACE_Original(TRACE trace);

                                                                  /* DO NOT EDIT */
extern ADDRINT TRACE_Address(TRACE trace);

                                                                  /* DO NOT EDIT */
extern USIZE TRACE_Size(TRACE trace);

                                                                  /* DO NOT EDIT */
extern RTN TRACE_Rtn(TRACE trace);

                                                                  /* DO NOT EDIT */
extern BOOL TRACE_HasFallThrough(TRACE trace);

                                                                  /* DO NOT EDIT */
extern UINT32 TRACE_NumBbl(TRACE trace);

                                                                  /* DO NOT EDIT */
extern UINT32 TRACE_NumIns(TRACE trace);

                                                                  /* DO NOT EDIT */
extern USIZE TRACE_StubSize(TRACE trace);

                                                                  /* DO NOT EDIT */
extern VOID BBL_InsertCall(BBL bbl, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID BBL_InsertIfCall(BBL bbl, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern VOID BBL_InsertThenCall(BBL bbl, IPOINT action, AFUNPTR funptr, ...);

                                                                  /* DO NOT EDIT */
extern BOOL BBL_HasFallThrough(BBL bbl);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_SupportsProcessorState(PROCESSOR_STATE state);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_ContextContainsState(CONTEXT * ctxt, PROCESSOR_STATE state);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetContextRegval(CONTEXT * ctxt, REG reg, const UINT8 * val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_GetContextRegval(const CONTEXT * ctxt, REG reg, UINT8 * val);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetContextReg(CONTEXT * ctxt, REG reg, ADDRINT val);

                                                                  /* DO NOT EDIT */
extern ADDRINT PIN_GetContextReg(const CONTEXT * ctxt, REG reg);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetContextFPState(CONTEXT * ctxt, const FPSTATE * fpstate);

                                                                  /* DO NOT EDIT */
extern VOID PIN_GetContextFPState(const CONTEXT * ctxt, FPSTATE * fpstate);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SaveContext(const CONTEXT * ctxtFrom, CONTEXT * ctxtTo);

                                                                  /* DO NOT EDIT */
extern VOID PIN_ExecuteAt(const CONTEXT * ctxt);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetSyscallArgument(CONTEXT *ctxt, SYSCALL_STANDARD std, UINT32 argNum, ADDRINT val);

                                                                  /* DO NOT EDIT */
extern ADDRINT PIN_GetSyscallArgument(const CONTEXT *ctxt, SYSCALL_STANDARD std, UINT32 argNum);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetSyscallNumber(CONTEXT *ctxt, SYSCALL_STANDARD std, ADDRINT val);

                                                                  /* DO NOT EDIT */
extern ADDRINT PIN_GetSyscallNumber(const CONTEXT *ctxt, SYSCALL_STANDARD std);

                                                                  /* DO NOT EDIT */
extern ADDRINT PIN_GetSyscallReturn(const CONTEXT *ctxt, SYSCALL_STANDARD std);

                                                                  /* DO NOT EDIT */
extern ADDRINT PIN_GetSyscallErrno(const CONTEXT *ctxt, SYSCALL_STANDARD std);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetPhysicalContextReg(PHYSICAL_CONTEXT * pPhysCtxt, REG reg, ADDRINT val);

                                                                  /* DO NOT EDIT */
extern ADDRINT PIN_GetPhysicalContextReg(const PHYSICAL_CONTEXT * pPhysCtxt, REG reg);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetPhysicalContextFPState(PHYSICAL_CONTEXT * pPhysCtxt, const VOID * fpstate);

                                                                  /* DO NOT EDIT */
extern VOID PIN_GetPhysicalContextFPState(const PHYSICAL_CONTEXT * pPhysCtxt, VOID * fpstate);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RaiseException(const CONTEXT * ctxt, THREADID tid, const EXCEPTION_INFO * pExceptInfo);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_SpawnApplicationThread(const CONTEXT * ctxt);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* INS_ChangeMemOpToBaseRegisterAddressMode is now deprecated and no longer supported. See INS_RewriteMemoryOperand
 * for a more powerful replacement.
 */
extern PIN_DEPRECATED_API BOOL INS_ChangeMemOpToBaseRegisterAddressMode(INS ins, MEMORY_TYPE mtype, REG newBase);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* INS_RewriteMemoryAddressingToBaseRegisterOnly is now deprecated and no longer supported. See INS_RewriteMemoryOperand
 * for a more powerful replacement.
 */
extern PIN_DEPRECATED_API  BOOL INS_RewriteMemoryAddressingToBaseRegisterOnly(INS ins, 
                                                                                MEMORY_TYPE mtype,
                                                                                REG newBase);

                                                                  /* DO NOT EDIT */
extern VOID INS_RewriteMemoryOperand(INS ins, 
                                        UINT32 memindex,
                                        REG reg);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertIndirectJump(INS ins, IPOINT ipoint, REG reg);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertDirectJump(INS ins, IPOINT ipoint, ADDRINT tgt);

                                                                  /* DO NOT EDIT */
extern VOID GetVmLock();

                                                                  /* DO NOT EDIT */
extern VOID ReleaseVmLock();

                                                                  /* DO NOT EDIT */
extern REG PIN_ClaimToolRegister();

                                                                  /* DO NOT EDIT */
extern CHAR * PIN_VmFullPath();

                                                                  /* DO NOT EDIT */
extern BOOL PIN_IsProcessExiting();

                                                                  /* DO NOT EDIT */
extern VOID PIN_ExitProcess(INT32 exitCode);

                                                                  /* DO NOT EDIT */
extern INT PIN_GetPid();

                                                                  /* DO NOT EDIT */
extern VOID INS_Delete(INS ins);

                                                                  /* DO NOT EDIT */
extern VOID IARGLIST_AddArguments(IARGLIST args,  ...);

                                                                  /* DO NOT EDIT */
extern IARGLIST IARGLIST_Alloc();

                                                                  /* DO NOT EDIT */
extern VOID IARGLIST_Free(IARGLIST args);

                                                                  /* DO NOT EDIT */
extern size_t PIN_SafeCopy(VOID * dst, const VOID * src, size_t size);

                                                                  /* DO NOT EDIT */
extern size_t PIN_SafeCopyEx(VOID * dst, 
                                const VOID * src, 
                                size_t size, 
                                EXCEPTION_INFO * pExceptInfo);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertFillBuffer(INS ins, IPOINT action, BUFFER_ID id, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertFillBufferPredicated(INS ins, IPOINT action, BUFFER_ID id, ...);

                                                                  /* DO NOT EDIT */
extern VOID INS_InsertFillBufferThen(INS ins, IPOINT action, BUFFER_ID id, ...);

                                                                  /* DO NOT EDIT */
extern BUFFER_ID PIN_DefineTraceBuffer(size_t recordSize, UINT32 numPages, TRACE_BUFFER_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID *PIN_AllocateBuffer(BUFFER_ID id);

                                                                  /* DO NOT EDIT */
extern VOID PIN_DeallocateBuffer(BUFFER_ID id, VOID *buf);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_IsActionPending(THREADID tid);

                                                                  /* DO NOT EDIT */
extern VOID * PIN_GetBufferPointer(CONTEXT * const ctxt, BUFFER_ID id);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_CheckReadAccess(VOID * addr);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_CheckWriteAccess(VOID * addr);

                                                                  /* DO NOT EDIT */

