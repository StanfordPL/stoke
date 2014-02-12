//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef INT32 TLS_KEY;

                                                                  /* DO NOT EDIT */
const TLS_KEY INVALID_TLS_KEY=(-1);

                                                                  /* DO NOT EDIT */
template <TLS_KEY FirstKey_, TLS_KEY LastKey_> class TLS_ARRAY
{
  public:

    /*!
     * Constructor.
     */
    TLS_ARRAY() {Clear();}

    /*!
     * Zero-initialize array of TLS values.
     */
    VOID Clear()
    {
        for (VOID ** pValue = m_array; pValue < m_array + m_numKeys; ++pValue) 
        {
            *pValue = 0;
        }
    }
    
    /*!
     * Accessors with bounds checking.
     */
    VOID * Get(TLS_KEY tlsKey, BOOL * pResult = 0) const
    {
        if(pResult)
        {
            *pResult = IsValidKey(tlsKey);
        }
        return (IsValidKey(tlsKey) ? m_array[tlsKey - FirstKey_] : 0);
    }

    BOOL Set(TLS_KEY tlsKey, const VOID * value)
    {
        if (IsValidKey(tlsKey))
        {
            m_array[tlsKey - FirstKey_] = const_cast<VOID *>(value);
            return TRUE;
        }
        return FALSE;
    }

    /*!
     * Accessors without bounds checking.
     */
    VOID * & operator [] (TLS_KEY tlsKey) { return m_array[tlsKey - FirstKey_];}
    VOID * const & operator []  (TLS_KEY tlsKey) const { return m_array[tlsKey - FirstKey_];}

  private:
    static BOOL IsValidKey(TLS_KEY tlsKey) 
    {
        return ((tlsKey <= LastKey_) && (tlsKey >= FirstKey_));
    }

    static const UINT32  m_numKeys = LastKey_ - FirstKey_ + 1;
    VOID * m_array[m_numKeys];
};

                                                                  /* DO NOT EDIT */

