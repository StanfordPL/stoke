//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


enum
{
    // The [0, TLS_KEY_RESERVED_LAST) range is reserved for keys, that can be used
    // by glibc/libpinpthread without allocating them. Needed for Mac only?
    TLS_KEY_RESERVED_LAST = 140,

    // Reserved for internal exception handling
    TLS_KEY_INTERNAL_EXCEPTION,

    TLS_KEY_CLIENT_FIRST,  
    // Keys in the [TLS_KEY_CLIENT_FIRST, TTLS_KEY_CLIENT_LAST] range can be 
    // allocated by tool
    TLS_KEY_CLIENT_LAST = TLS_KEY_CLIENT_FIRST + 63
};

                                                                  /* DO NOT EDIT */
const UINT32 MAX_CLIENT_TLS_KEYS = (TLS_KEY_CLIENT_LAST - TLS_KEY_CLIENT_FIRST + 1);

                                                                  /* DO NOT EDIT */
class CLIENT_TLS
{
  public:

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Allocate a new TLS key and associate it with a given data destruction function.
     *  See PIN_CreateThreadDataKey() description.
     */
    TLS_KEY AllocateKey(DESTRUCTFUN destructFun = NULL);

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Release TLS key, allocated by a previous call to the CreateThreadDataKey() function.
     *  See PIN_DeleteThreadDataKey() description.
     */
    BOOL FreeKey(TLS_KEY tlsKey);

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Get/Set the value of the specified TLS slot of the given thread.
     *  See PIN_GetThreadData() and PIN_SetThreadData() description.
     *  @param[in]  threadId    Thread ID assigned by pin of the thread for which
     *                          TLS access is desired, not necessarily the current
     *                          thread.
     *                          This ID can be obtained by the PIN_ThreadId() 
     *                          function call or received as the value of the 
     *                          IARG_THREAD_ID argument.
     * @note The Get/SetData functions are defined as static to eliminate overhead of the
     *       Instance() function. These functions assume that the Instance() function is
     *       invoked at least once before the first call to these functions. This assumption
     *       is valid because we enforce Instance() invocation from the static initializer
     *       of the <m_pInstance> member.
     */
    static VOID * GetData(TLS_KEY tlsKey, THREADID threadId)
    {
        return (*(m_pSlots[threadId]))[tlsKey];
    }

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Get/Set the value of the specified TLS slot of the current/given thread.
     *  See above.
     */
    static BOOL SetData(TLS_KEY tlsKey, const VOID *  value, THREADID threadId)
    {
        (*(m_pSlots[threadId]))[tlsKey] = const_cast<VOID *>(value);
        return TRUE;
    }

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Zero-initialize all TLS slots in the current thread.
     *  This function should be called on the thread start but before the client 
     *  is notified about the new thread.
     *  @param[in] currentThreadId   ID of the new (current) thread assigned by pin.
     */
    VOID InitCurrentTls(THREADID currentThreadId);

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Destruct all per-thread data stored in TLS slots of the given thread.
     *  This function is called when the given thread is about to exit,
     *  just after notifying the client about thread exit.
     *  @param[in] threadId   ID of the exiting thread assigned by pin.
     */
    VOID DestructThreadTls(THREADID threadId);

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Return TRUE if TLS slots are allocated for current thread, FALSE otherwise.
     *  @param[in] currentThreadId   ID of the current thread assigned by pin.
     */
    BOOL IsCurrentTlsAllocated(THREADID currentThreadId);

    /*! @ingroup PIN_THREAD_PRIVATE
     *  Return single instance of this class.
     */
    static CLIENT_TLS * Instance();

  private:
    /*! @ingroup PIN_THREAD_PRIVATE
     *  Per-thread array of client's TLS slots indexed by TLS_KEY.
     */
    typedef TLS_ARRAY<0, TLS_KEY_CLIENT_LAST> SLOTS;

  private:
    // Private constructor
    CLIENT_TLS() {}
    friend class DUMMY_GCC32; //dummy friend to appease gcc 3.2.X compiler. It does not understand 
                              //singleton idiom and reports warning for private constructor.
    //Disable copy constructor and assignment operator
    CLIENT_TLS(const CLIENT_TLS &);
    CLIENT_TLS & operator = (const CLIENT_TLS &);

    static SLOTS * m_pSlots[PIN_MAX_THREADS];

    /*
     * Pointer to a single instance of this class
     * This static member enforces initialization of CLIENT_TLS in the first (main) thread.
     */
    static CLIENT_TLS * m_pInstance; 

};

                                                                  /* DO NOT EDIT */
inline TLS_KEY PIN_CreateThreadDataKey(DESTRUCTFUN destruct_func)
{
    return CLIENT_TLS::Instance()->AllocateKey(destruct_func);
}

                                                                  /* DO NOT EDIT */
inline BOOL PIN_DeleteThreadDataKey(TLS_KEY key)
{
    return CLIENT_TLS::Instance()->FreeKey(key);
}

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* This version of PIN_SetThreadData is now deprecated. Please use the version of this function which takes
 * a THREADID argument.
 */
inline BOOL PIN_SetThreadData( TLS_KEY key, const VOID * data )
{
    ASSERT(FALSE, "This version of PIN_SetThreadData is now deprecated. Please use the version of this function which "
                  "takes a THREADID argument.");
    return FALSE;
}

                                                                  /* DO NOT EDIT */
inline BOOL PIN_SetThreadData( TLS_KEY key, const VOID * data , THREADID threadId)
{
    return CLIENT_TLS::SetData( key, data, threadId );
}

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* This version of PIN_GetThreadData is now deprecated. Please use the version of this function which takes
 * a THREADID argument.
 */
inline VOID * PIN_GetThreadData( TLS_KEY key )
{
    ASSERT(FALSE, "This version of PIN_GetThreadData is now deprecated. Please use the version of this function which "
                  "takes a THREADID argument.");
    return FALSE;
}

                                                                  /* DO NOT EDIT */
inline VOID * PIN_GetThreadData( TLS_KEY key, THREADID threadId )
{
    return CLIENT_TLS::GetData( key, threadId );
}

                                                                  /* DO NOT EDIT */

