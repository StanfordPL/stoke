//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


struct PIN_LOCK
{
    PINVM::PINSYNC_SAFEPOD_LOCK _lock;  ///< Implements the lock.
    INT32 _owner;                       ///< Used for debugging, typically the ID of the lock owner.
};

                                                                  /* DO NOT EDIT */
typedef PINVM::PINSYNC_POD_LOCK PIN_MUTEX;

                                                                  /* DO NOT EDIT */
typedef PINVM::PINSYNC_POD_RWLOCK PIN_RWMUTEX;

                                                                  /* DO NOT EDIT */
typedef PINVM::PINSYNC_POD_SEMAPHORE PIN_SEMAPHORE;

                                                                  /* DO NOT EDIT */
extern VOID PIN_InitLock(PIN_LOCK *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_GetLock(PIN_LOCK *lock, INT32 val);

                                                                  /* DO NOT EDIT */
extern INT32 PIN_ReleaseLock(PIN_LOCK *lock);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_MutexInit(PIN_MUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_MutexFini(PIN_MUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_MutexLock(PIN_MUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_MutexUnlock(PIN_MUTEX *lock);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_MutexTryLock(PIN_MUTEX *lock);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_RWMutexInit(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RWMutexFini(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RWMutexReadLock(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RWMutexWriteLock(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern VOID PIN_RWMutexUnlock(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_RWMutexTryReadLock(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_RWMutexTryWriteLock(PIN_RWMUTEX *lock);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_SemaphoreInit(PIN_SEMAPHORE *sem);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SemaphoreFini(PIN_SEMAPHORE *sem);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SemaphoreSet(PIN_SEMAPHORE *sem);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SemaphoreClear(PIN_SEMAPHORE *sem);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_SemaphoreIsSet(PIN_SEMAPHORE *sem);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SemaphoreWait(PIN_SEMAPHORE *sem);

                                                                  /* DO NOT EDIT */
extern BOOL PIN_SemaphoreTimedWait(PIN_SEMAPHORE *sem, unsigned timeout);

                                                                  /* DO NOT EDIT */

