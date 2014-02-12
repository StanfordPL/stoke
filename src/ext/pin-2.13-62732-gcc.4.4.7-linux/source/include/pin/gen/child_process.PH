//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


class CHILD_PROCESS_CLASS
{
  public:
   /*!
    * Constructor
    * Initialize child's process data
    *
    * @param[in] processId    process id
    * @param[in] appCmd       application's (original) command line arguments                 
    * @param[in] pinCmd       Pin's command line 
    *                         (e.g. "c:\\pin_path\\pin.exe -probe -follow_execv -t 
    *                                c:\\pintool_path\\tool --")
    */
    CHILD_PROCESS_CLASS(UINT32 processId, 
                        const COMMAND_LINE_ARGUMENTS & appCmd, 
                        const COMMAND_LINE_ARGUMENTS & pinCmd) : m_processId(processId),
                                                                 m_appCmd(appCmd),
                                                                 m_pinCmd(pinCmd),
                                                                 m_isPinCmdModified(FALSE)
    {
        (m_pinAndAppCmd = m_pinCmd).Insert(m_appCmd);
    }

   /*!
    * Get process id
    * 
    * @return  process id
    */
    UINT32 GetId()
    {
        return m_processId;
    }

   /*!
    * Get application's original command line (without Pin's command line)
    * 
    * @param[out] pArgc         pointer to application's argc
    * @param[out] pArgv         pointer to application's argv
    *                            this data is allocated by this object and can't be modified 
    *                            by user, it's lifetime is the lifetime of the object
    *
    * @return  TRUE upon success, FALSE upon failure
    */
    BOOL GetApplicationCommandLine(INT * pArgc, const CHAR * const ** pArgv);

   /*!
    * Set Pin's (and tool's) command line for the child process,
    * (e.g. "c:\\pin_path\\pin.exe -probe -follow_execv -t c:\\pintool_path\\tool --")
    *
    * @param[in] argc           Pin's (and tool's) argc
    * @param[in] argv           Pin's (and tool's) argv,
    *                            this data is allocated by tool and can't be modified 
    *                            by Pin, it's lifetime is in the scope of this function
    *
    * @return  TRUE upon success, FALSE upon failure
    */
    BOOL SetPinCommandLine(INT argc, const CHAR * const * argv);

   /*!
    * Get Pin's (and tool's) command line for the child process 
    * The data returned by this function is valid as long as SetPinCommandLine()
    * was not called after this call
    *
    * @param[out] pArgc         pointer to Pin's argc
    * @param[out] pArgv         pointer to Pin's argv
    *                            this data is allocated by this object and can't be modified
    *                            by user, it's lifetime is the lifetime of the object
    *
    * @return  TRUE upon success, FALSE upon failure
    */ 
    BOOL GetPinCommandLine(INT * pArgc, const CHAR * const ** pArgv);

   /*!
    * Get Full command line (Pin + application) for the child process.
    * The data returned by this function is valid as long as SetPinCommandLine()
    * was not called after this call
    *
    * @param[out] pArgc         pointer to full command line argc
    * @param[out] pArgv         pointer to full command line argv
    *                            this data is allocated by this object and can't be modified 
    *                            by user, it's lifetime is the lifetime of the object
    *
    * @return  TRUE upon success, FALSE upon failure
    */   
    BOOL GetFullCommandLine(INT * pArgc, const CHAR * const ** pArgv);

   /*!
    * @return  TRUE if user called SetPinCommandLine()
    */ 
    BOOL IsPinCommandLineModified();

   /*!
    * Destructor
    * Destroy child's process data
    */
    ~CHILD_PROCESS_CLASS() {}

  private:
    UINT32                 m_processId;        //!< Process id of child process
    COMMAND_LINE_ARGUMENTS m_appCmd;           //!< Application's command line arguments
    COMMAND_LINE_ARGUMENTS m_pinCmd;           //!< Pin's command line arguments
    COMMAND_LINE_ARGUMENTS m_pinAndAppCmd;     //!< Pin's and Application's command line arguments
    BOOL                   m_isPinCmdModified; //!< Has the user modified pin command line?
};

                                                                  /* DO NOT EDIT */

