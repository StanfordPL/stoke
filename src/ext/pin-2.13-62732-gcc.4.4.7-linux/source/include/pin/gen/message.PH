//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


class LOGFILE
{
  public:
    /*!
     * Create or open the specified file. If the file does not exist,
     * create the new file.
     *
     *  @param[in] name     Name of the file.
     *  @param[in] append   If TRUE, new log messages are appended to the file
     *                       if it already exists.  If FALSE, the new file
     *                       file overwrites any existing file.
     */
    virtual VOID Open(const CHAR *name, BOOL append) = 0;

    virtual BOOL IsOpen() const = 0;
    virtual VOID Close() = 0;

    /*!
     * Write the specified message to the file. 
     */
    virtual VOID Write(const CHAR* message, size_t length) = 0;
    VOID Write(const string& message);
    virtual VOID WriteAtPosition( const CHAR* message, size_t length, size_t offset) = 0;

    virtual ~LOGFILE() {}
};

                                                                  /* DO NOT EDIT */
enum LOGTYPE 
{
    LOGTYPE_CONSOLE,              //!< log only to the console
    LOGTYPE_LOGFILE,              //!< log only to the log file
    LOGTYPE_CONSOLE_AND_LOGFILE   //!< log to both the log file and console
};

                                                                  /* DO NOT EDIT */
typedef BOOL (*MESSAGE_CALLBACK)(const string &message, PIN_ERRTYPE type,
                                            INT32 userType, INT32 severity, INT32 numArgs,
                                            va_list ap);

                                                                  /* DO NOT EDIT */
class MESSAGE_TYPE
{
  private:
    STATIC VOID (*_panic_callback) ();
    STATIC VOID (*_terminate_callback) ();
    STATIC string _log_fname;
    STATIC string _image_name;
    STATIC MESSAGE_TYPE *_list;
    STATIC LOGFILE   *_logstream;
    STATIC BOOL _logstreamAppend;
    STATIC MESSAGE_CALLBACK _message_callback;

  private:
    const string _name;
    const string _prefix;
    const string _comment;

    BOOL _terminate;
    BOOL _trace;
    BOOL _enabled;
    BOOL _resource;
    LOGTYPE _log;
    // RM: see remarks in constructor
    BOOL _initted;

    MESSAGE_TYPE   *_next;

    
  public:
    STATIC VOID RegisterPanicCallBack( VOID (*cb) () );
    STATIC VOID RegisterTerminateCallBack( VOID (*cb) () );
    STATIC VOID RegisterLogFile(const string& name, BOOL append);
    STATIC string GetLogFileName();
    STATIC VOID RegisterImageName(const string& name );
    STATIC MESSAGE_TYPE * Find(const string& name);
    STATIC BOOL Disable(const string& name);
    STATIC BOOL Enable(const string& name);
    STATIC UINT32 Number();
    STATIC string StringLongAll(); 
    STATIC BOOL IsTerminating();
    STATIC VOID PrintMessageAndExit(const char *message, const char *message2,
                                    PIN_ERRTYPE errType = PIN_ERR_NONE, INT32 numArgs = 0, ...);
    STATIC VOID RegisterMessageCallBack(MESSAGE_CALLBACK fun);
    STATIC VOID UnregisterMessageCallBack();
    STATIC MESSAGE_CALLBACK MessageCallBack();
    STATIC BOOL ErrorFileSpecified();
    
  private:
    STATIC VOID DumpTrace();
    
  public:
    MESSAGE_TYPE( string name, string prefix, BOOL terminate, BOOL trace, BOOL enabled, BOOL resource, 
                  LOGTYPE log, string comment);
    
    VOID Message(const string& message, BOOL printPrefix = TRUE,
                 PIN_ERRTYPE errType = PIN_ERR_NONE, INT32 numArgs=0, ...);

    BOOL on() const {return _enabled;}
    VOID disable() {_enabled=false;}
    VOID enable() {_enabled=true;}

    int Compare(const MESSAGE_TYPE & k2) const;

};

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeNonFatalError;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeError;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeCriticalError;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeWarning;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeConsole;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeConsoleNoPrefix;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeAssert;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypePhase;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeKnown;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeInfo;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeDebug;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeOpportunity;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeStats;

                                                                  /* DO NOT EDIT */
extern MESSAGE_TYPE MessageTypeLog;

                                                                  /* DO NOT EDIT */
extern const string Line1;

                                                                  /* DO NOT EDIT */
extern UINT64 MilliSecondsElapsed();

                                                                  /* DO NOT EDIT */
extern string AssertString(const char *fileName, const char *functionName, unsigned line, const std::string &message);

                                                                  /* DO NOT EDIT */
extern VOID BreakMe();

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */

#define QMESSAGE(t,m)             do{ if(t.on()) t.Message(m); }while(0)
#define QMESSAGE0(t,m,p,e)        do{ if(t.on()) t.Message(m,p,e,0); }while(0)
#define QMESSAGE1(t,m,p,e,a1)     do{ if(t.on()) t.Message(m,p,e,1,a1); }while(0)
#define QMESSAGE2(t,m,p,e,a1,a2)  do{ if(t.on()) t.Message(m,p,e,2,a1,a2); }while(0)
#define QMESSAGEP(t,m,p)          do{ if(t.on()) t.Message(m,p); }while(0)
#define QMESSAGE_LIMIT(t,m,max)   do{ static int qqq = 0; if( qqq++ >= max) break; if(t.on()) t.Message(m);}while(0)

#define ASSERTQ(message) QMESSAGE0(LEVEL_BASE::MessageTypeAssert, message, TRUE, PIN_ERR_ASSERT)

#if defined(PIN_ASSERT_NO_FILE_NAME)
# define PIN_ASSERT_FILE ""
#else
# define PIN_ASSERT_FILE __FILE__
#endif

#define ASSERT(condition,message)   \
    do{ if(!(condition)) \
        ASSERTQ(LEVEL_BASE::AssertString(PIN_ASSERT_FILE, __FUNCTION__, __LINE__, std::string("") + message));} while(0)

#define ASSERTX(condition) ASSERT(condition,"assertion failed: " #condition  "\n")

#define ASSERTSLOW(condition,message)   \
  do{ if(KnobSlowAsserts && !(condition)) \
          ASSERTQ(LEVEL_BASE::AssertString(PIN_ASSERT_FILE, __FUNCTION__, __LINE__, std::string("") + message));} while(0)

#define ASSERTXSLOW(condition) ASSERTSLOW(condition,"assertion failed: " #condition  "\n")

#define NYI()  ASSERT(0, "Not Yet Implemented\n")

/* 
 for errors related to debugger integration
 */
#define PIN_ERROR_DEBUGGER(message)           QMESSAGE0(MessageTypeError, message, TRUE, PIN_ERR_DEBUGGER)

#define PIN_ERROR(message)                    QMESSAGE0(MessageTypeError, message, TRUE, PIN_ERR_INTERNAL)
#define PIN_ERROR0(message, type)             QMESSAGE0(MessageTypeError, message, TRUE, type)
#define PIN_ERROR1(message, type, arg1)       QMESSAGE1(MessageTypeError, message, TRUE, type, arg1)
#define PIN_ERROR2(message, type, arg1, arg2) QMESSAGE2(MessageTypeError, message, TRUE, type, arg1, arg2)

/* 
 for calling even before the MessageType* constructors may have executed
 */
#define PIN_FATAL_ERROR(message) { PIN_ERROR(message); MESSAGE_TYPE::PrintMessageAndExit(message, "E: ", PIN_ERR_INTERNAL );}

/* 
 * Non-fatal errors. 
 */
#define PIN_NON_FATAL_ERROR(message)  QMESSAGE0(MessageTypeNonFatalError, message, TRUE, PIN_ERR_INTERNAL)
#define PIN_NON_FATAL_ERROR0(message, type)  QMESSAGE0(MessageTypeNonFatalError, message, TRUE, type)
#define PIN_NON_FATAL_ERROR1(message, type, arg1)  QMESSAGE1(MessageTypeNonFatalError, message, TRUE, type, arg1)

/* 
 * Fatal errors that require post-logging handling. 
 * These errors do not cause the process termination in the MESSAGE_TYPE::Message() function. 
 */
#define PIN_CRITICAL_ERROR(message)  QMESSAGE0(MessageTypeCriticalError, message, TRUE, PIN_ERR_INTERNAL)
#define PIN_CRITICAL_ERROR0(message, type)  QMESSAGE0(MessageTypeCriticalError, message, TRUE, type)
#define PIN_CRITICAL_ERROR1(message, type, arg1)  QMESSAGE1(MessageTypeCriticalError, message, TRUE, type, arg1)
#define PIN_CRITICAL_ERROR2(message, type, arg1, arg2)  QMESSAGE2(MessageTypeCriticalError, message, TRUE, type, arg1, arg2)

/*
 * The special message dumper. It copies the message to the log file,
 * sends it to stderr and exits pin with -1.
 * @param - message of type const char* to dump
 */
#define PIN_OUT_OF_MEMORY(message) MESSAGE_TYPE::PrintMessageAndExit(message, "Pin is out of memory: ", PIN_ERR_OUT_OF_MEMORY )

#define CONSOLE(message) QMESSAGE(MessageTypeConsole, message)

#define CONSOLE_NOPREFIX(message) QMESSAGE(MessageTypeConsoleNoPrefix, message)

#define PHASE(message) QMESSAGE( MessageTypePhase, message)

#define WARNING(message) QMESSAGE( MessageTypeWarning,message)
#define WARNING_LIMIT(message,n) QMESSAGE_LIMIT( MessageTypeWarning, message, n)

#define KNOWN(message) QMESSAGE( MessageTypeKnown, message)
#define KNOWN_LIMIT(message,n) QMESSAGE_LIMIT( MessageTypeKnown, message, n)

#define LOG(message) QMESSAGE(MessageTypeLog, message)

#define INFO(message) QMESSAGE(MessageTypeInfo,message)
#define INFO_LIMIT(message,n) QMESSAGE_LIMIT(MessageTypeInfo, message, n)

#define OPPORTUNITY(message) QMESSAGE(MessageTypeOpportunity,message)
#define OPPORTUNITY_LIMIT(message,n) QMESSAGE_LIMIT(MessageTypeOpportunity,message, n)
#define PIN_DEBUG(message) QMESSAGE(MessageTypeDebug, message)
#define STATS(message) QMESSAGE(MessageTypeStats, message)

