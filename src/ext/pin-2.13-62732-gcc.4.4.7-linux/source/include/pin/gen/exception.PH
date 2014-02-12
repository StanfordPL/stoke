//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


enum EXCEPTION_CLASS
{
    EXCEPTCLASS_NONE,                   ///< Reserved. No real exception belongs to this class.
    EXCEPTCLASS_UNKNOWN,                ///< Unknown exception.
    EXCEPTCLASS_ACCESS_FAULT,           ///< Memory access fault.
    EXCEPTCLASS_INVALID_INS,            ///< Invalid instruction.
    EXCEPTCLASS_INT_ERROR,              ///< Erroneous integer operation.
    EXCEPTCLASS_FP_ERROR,               ///< Erroneous floating point operation.
    EXCEPTCLASS_MULTIPLE_FP_ERROR,      ///< Received an ambiguous floating point exception.
    EXCEPTCLASS_DEBUG,                  ///< Debugging trap.
    EXCEPTCLASS_OS                      ///< O/S specific exception.
};

                                                                  /* DO NOT EDIT */
enum EXCEPTION_CODE
{
    EXCEPTCODE_NONE,                    ///< Reserved. No real exception has this code.

    // These exception codes are supported on all operating systems.  Portable tools should
    // use these codes when creating exceptions that wil be passed to PIN_RaiseException().

    EXCEPTCODE_ACCESS_INVALID_ADDRESS,  ///< Virtual address not mapped (the \#PF exception).
                                        ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_ACCESS_DENIED,           ///< Access not permitted due to protection violation (the \#PF exception).
                                        ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_ACCESS_INVALID_PAGE,     ///< A \#PF exception for some reason other than the cases above.
                                        ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_ACCESS_MISALIGNED,       ///< Misaligned memory reference (the \#AC exception).
                                        ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_ILLEGAL_INS,             ///< Illegal instruction (the \#UD exception).
                                        ///< Belongs to EXCEPTCLASS_INVALID_INS.
    EXCEPTCODE_PRIVILEGED_INS,          ///< Privileged instruction (the \#GP exception).
                                        ///< Belongs to EXCEPTCLASS_INVALID_INS.
    EXCEPTCODE_INT_DIVIDE_BY_ZERO,      ///< Integer divide by zero (the \#DE exception).
                                        ///< Belongs to EXCEPTCLASS_INT_ERROR.
    EXCEPTCODE_INT_OVERFLOW_TRAP,       ///< Integer overflow trap (the \#OF trap).
                                        ///< Belongs to EXCEPTCLASS_INT_ERROR.
    EXCEPTCODE_INT_BOUNDS_EXCEEDED,     ///< Array index is out of bounds (\#BR exception).
                                        ///< Belongs to EXCEPTCLASS_INT_ERROR.
    EXCEPTCODE_X87_DIVIDE_BY_ZERO,      ///< x87 FPU divide by zero (the \#MF/\#Z exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_X87_OVERFLOW,            ///< x87 FPU overflow (the \#MF/\#O exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_X87_UNDERFLOW,           ///< x87 FPU underflow (the \#MF/\#U exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_X87_INEXACT_RESULT,      ///< x87 FPU inexact result (the \#MF/\#P exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_X87_INVALID_OPERATION,   ///< x87 FPU invalid operation (the \#MF/\#IA exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_X87_DENORMAL_OPERAND,    ///< x87 FPU denormal operand (the \#MF/\#D exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_X87_STACK_ERROR,         ///< x87 FPU stack overflowed or underflowed (the \#MF/\#IS exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_SIMD_DIVIDE_BY_ZERO,     ///< SIMD floating point divide by zero (the \#XM/\#Z exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_SIMD_OVERFLOW,           ///< SIMD floating point overflow (the \#XM/\#O exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_SIMD_UNDERFLOW,          ///< SIMD floating point underflow (the \#XM/\#U exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_SIMD_INEXACT_RESULT,     ///< SIMD floating point inexact result (the \#XM/\#P exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_SIMD_INVALID_OPERATION,  ///< SIMD invalid floating point operation (the \#XM/\#I exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_SIMD_DENORMAL_OPERAND,   ///< SIMD denormal floating point operand (the \#XM/\#D exception).
                                        ///< Belongs to EXCEPTCLASS_FP_ERROR.
    EXCEPTCODE_DBG_BREAKPOINT_TRAP,     ///< Breakpoint trap (the \#BP trap).
                                        ///< Belongs to EXCEPTCLASS_DEBUG.
    EXCEPTCODE_DBG_SINGLE_STEP_TRAP,    ///< Trace trap (the \#DB trap).
                                        ///< Belongs to EXCEPTCLASS_DEBUG.

    // These exception codes can be used to raise Windows-specific exceptions.

    EXCEPTCODE_ACCESS_WINDOWS_GUARD_PAGE,       ///< Guard page access
                                                ///< (the Windows STATUS_GUARD_PAGE_VIOLATION exception).
                                                ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_ACCESS_WINDOWS_STACK_OVERFLOW,   ///< Thread stack overflowed
                                                ///< (the Windows STATUS_STACK_OVERFLOW exception).
                                                ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_WINDOWS,                         ///< Generic Windows exception.
                                                ///< Belongs to EXCEPTCLASS_OS.

    // When Pin receives an exception, it may report the exception using one of the codes above or
    // one of the codes in the group below.

    EXCEPTCODE_RECEIVED_UNKNOWN,                    ///< Unknown exception, cannot be re-raised.
                                                    ///< Belongs to EXCEPTCLASS_UNKNOWN.
    EXCEPTCODE_RECEIVED_ACCESS_FAULT,               ///< General memory access fault. 
                                                    ///< Belongs to EXCEPTCLASS_ACCESS_FAULT.
    EXCEPTCODE_RECEIVED_AMBIGUOUS_X87,              ///< Ambiguous x87 FPU exception.
                                                    ///< PIN_GetFpErrorSet() tell which are possible.
                                                    ///< Belongs to EXCEPTCLASS_MULTIPLE_FP_ERROR.
    EXCEPTCODE_RECEIVED_AMBIGUOUS_SIMD              ///< Ambiguous SIMD FPU exception.
                                                    ///< PIN_GetFpErrorSet() tell which are possible.
                                                    ///< Belongs to EXCEPTCLASS_MULTIPLE_FP_ERROR.
};

                                                                  /* DO NOT EDIT */
enum FAULTY_ACCESS_TYPE
{
    FAULTY_ACCESS_TYPE_UNKNOWN, ///< Unknown access violation
    FAULTY_ACCESS_READ,         ///< Read access
    FAULTY_ACCESS_WRITE,        ///< Write access
    FAULTY_ACCESS_EXECUTE       ///< Execute access
};

                                                                  /* DO NOT EDIT */
enum FPERROR
{
    FPERROR_DIVIDE_BY_ZERO =    (1<<0),     ///< The #DE exception.
    FPERROR_OVERFLOW =          (1<<1),     ///< The #O exception.
    FPERROR_UNDERFLOW =         (1<<2),     ///< The #U exception.
    FPERROR_INEXACT_RESULT =    (1<<3),     ///< The #P exception.
    FPERROR_INVALID_OPERATION = (1<<4),     ///< The #IA exception on x87 or #I exception on SIMD.
    FPERROR_DENORMAL_OPERAND =  (1<<5),     ///< The #D exception.
    FPERROR_X87_STACK_ERROR =   (1<<6)      ///< The #IS exception on x87.
};

                                                                  /* DO NOT EDIT */
const UINT32 MAX_WINDOWS_EXCEPTION_ARGS = 5;

                                                                  /* DO NOT EDIT */
struct EXCEPTION_INFO
{
    /* ================================================================================== */
    // Generic exception information
    /* ================================================================================== */

    /*!
     * Initialize this structure with the given generic exception's attributes. Set "unknown" 
     * state for all exception-specific attributes. 
     * This function is useful when the specified exception code does not require any 
     * additional exception information or such information is not available. The function 
     * can not be used to initialize EXCEPTCODE_WINDOWS exception information.
     * @param[in]   exceptCode      exception code
     * @param[in]   exceptAddress   address of the instruction that caused the exception
     * @return reference to this structure
     */
    EXCEPTION_INFO & Init(EXCEPTION_CODE exceptCode, ADDRINT exceptAddress);

    /*!
     * @return The code of the exception
     */
    EXCEPTION_CODE GetExceptCode() const {return m_exceptCode;}

    /*!
     * @return The class of the exception
     */
    static EXCEPTION_CLASS GetExceptClass(EXCEPTION_CODE exceptCode);
    EXCEPTION_CLASS GetExceptClass() const {return GetExceptClass(m_exceptCode);}

    /*!
     * @return The address of the instruction that caused the exception
     */
    ADDRINT GetExceptAddress() const {return m_exceptAddress;}

    /*!
     * Set the address of the instruction that caused the exception
     */
    VOID SetExceptAddress(ADDRINT exceptAddress) {m_exceptAddress = exceptAddress;}

    /*!
     * @return TRUE if the specified exception is a trap. Traps are reported in the 
     *         context that represents state of registers after executing the 
     *         instruction that caused the trap. The exception address and the value
     *         of the PC register in the trap context are different.
     */
    static BOOL IsTrap(EXCEPTION_CODE exceptCode);
    BOOL IsTrap() const {return IsTrap(m_exceptCode);}

    /*!
     * Remove the exception information and initialize this structure as empty.
     */
    VOID Reset() {m_exceptCode = EXCEPTCODE_NONE;}

    /*!
     * @return TRUE, if this structure has been reset and does not contain a valid
     *         exception information.
     */
    BOOL IsEmpty() const {return (m_exceptCode == EXCEPTCODE_NONE);}

    /*!
     * @return The string representation of this structure.
     */
    string ToString() const;

    /*!
     * @return The name of the exception's code.
     */
    string GetCodeAsString() const;

  public:

    /* ================================================================================== */
    // EXCEPTCLASS_ACCESS_FAULT information
    /* ================================================================================== */

    /*!
     * Initialize this structure with the given attributes of an EXCEPTCLASS_ACCESS_FAULT 
     * exception.
     * @param[in]   exceptCode      exception code that specifies an EXCEPTCLASS_ACCESS_FAULT 
     *                              exception
     * @param[in]   exceptAddress   address of the instruction that caused the exception
     * @param[in]   accessAddress   address of the faulty memory access
     * @param[in]   accessType      type of the faulty memory access
     * @return reference to this structure
     */
    EXCEPTION_INFO & InitAccessFault(EXCEPTION_CODE exceptCode,
                                     ADDRINT exceptAddress,
                                     ADDRINT accessAddress,
                                     FAULTY_ACCESS_TYPE accessType = FAULTY_ACCESS_TYPE_UNKNOWN);

    /*!
     * @return TRUE if this structure describes an EXCEPTCLASS_ACCESS_FAULT exception
     */
    BOOL IsAccessFault() const {return GetExceptClass() == EXCEPTCLASS_ACCESS_FAULT;}

    /*!
     * @return The type of the faulty memory access.
     * @pre    This structure should describe an EXCEPTCLASS_ACCESS_FAULT exception. 
     */
    FAULTY_ACCESS_TYPE GetFaultyAccessType() const 
    {
        ASSERTX(IsAccessFault()); 
        return m_specific.m_access.m_type;
    }

    /*!
     * Get the address of the faulty memory access, if known.
     * @param[out] pAccessAddress   optional pointer to variable that receives the address
     *                              of the faulty memory access, if known.
     * @return TRUE, if the address of the faulty memory access is known
     * @pre    This structure should describe an EXCEPTCLASS_ACCESS_FAULT exception. 
     */
    BOOL GetFaultyAccessAddress(ADDRINT * pAccessAddress) const 
    {
        ASSERTX(IsAccessFault());
        return m_specific.m_access.m_address.Get(pAccessAddress);
    }

  public:

    /* ================================================================================== */
    // EXCEPTCLASS_MULTIPLE_FP_ERROR information
    /* ================================================================================== */

    /*!
     * Initialize this structure with the given attributes of an EXCEPTCLASS_MULTIPLE_FP_ERROR 
     * exception.
     * @param[in]   exceptCode      exception code that specifies an EXCEPTCLASS_MULTIPLE_FP_ERROR 
     *                              exception
     * @param[in]   exceptAddress   address of the instruction that caused the exception
     * @param[in]   fpErrors        bit mask of FP exception codes
     * @return reference to this structure
     */
    EXCEPTION_INFO & InitMultipleFpError(EXCEPTION_CODE exceptCode,
                                         ADDRINT exceptAddress,
                                         UINT32 fpErrors);

    /*!
     * @return TRUE if this structure describes an EXCEPTCLASS_MULTIPLE_FP_ERROR exception
     */
    BOOL IsMultipleFpException() const {return GetExceptClass() == EXCEPTCLASS_MULTIPLE_FP_ERROR;}

    /*!
     * @return The exception's bit mask of FP exception codes.
     * @pre    This structure should describe an EXCEPTCLASS_MULTIPLE_FP_ERROR exception. 
     */
    UINT32 GetFpErrors() const
    {
        ASSERTX(IsMultipleFpException()); 
        return m_specific.m_multipleFp.m_fpErrors;
    }

  public:

    /* ================================================================================== */
    // EXCEPTCODE_WINDOWS information
    /* ================================================================================== */

    /*!
     * Initialize this structure with the given attributes of an EXCEPTCODE_WINDOWS
     * exception.
     * @param[in]   sysExceptCode   the system exception code
     * @param[in]   exceptAddress   address of the instruction that caused the exception
     * @param[in]   numArgs         number of arguments in the [pArgs] array. The number 
     *                              should not exceed the MAX_WINDOWS_EXCEPTION_ARGS value.
     * @param[in]   pArgs           pointer to an array of arguments associated with the exception 
     *                              or NULL if the number of arguments is zero
     * @return reference to this structure
     */
    EXCEPTION_INFO & InitWindowsSysException(UINT32 sysExceptCode,
                                          ADDRINT exceptAddress,
                                          UINT32 numArgs = 0,
                                          const ADDRINT * pArgs = 0);

    /*!
     * @return TRUE if this structure describes an EXCEPTCODE_WINDOWS exception
     */
    BOOL IsWindowsSysException() const {return m_exceptCode == EXCEPTCODE_WINDOWS;}

    /*!
     * @return The Windows system exception code
     * @pre    This structure should describe an EXCEPTCODE_WINDOWS exception. 
     */
    UINT32 GetWindowsSysExceptionCode() const 
    {
        ASSERTX(IsWindowsSysException());
        return m_specific.m_winsys.m_exceptCode;
    }

    /*!
     * @return The number of arguments associated with the Windows system exception
     * @pre    This structure should describe an EXCEPTCODE_WINDOWS exception. 
     */
    UINT32 CountWindowsSysArguments() const 
    {
        ASSERTX(IsWindowsSysException());
        return m_specific.m_winsys.m_numArgs;
    }

    /*!
     * Get the specified Windows system exception's argument.
     * @param[in]   argNum          ordinal number of the argument to be retrieved, starting 
     *                              from zero. The value of this parameter should not exceed
     *                              the value returned by the CountWindowsSysArguments() function.
     * @return The value of the specified system exception's argument
     * @pre    This structure should describe an EXCEPTCODE_WINDOWS exception. 
     */
    ADDRINT GetWindowsSysArgument(UINT32 argNum) const 
    {
        ASSERTX(IsWindowsSysException());
        ASSERTX(argNum < m_specific.m_winsys.m_numArgs);
        return m_specific.m_winsys.m_args[argNum];
    }

  public:

    /* ================================================================================== */
    // Data
    /* ================================================================================== */
    EXCEPTION_CODE m_exceptCode;                    ///< Exception code
    ADDRINT m_exceptAddress;                        ///< Address of the faulty instruction

    /*!
     * Exception-specific data
     */
    union EXCEPTION_SPECIFIC
    {
        struct ACCESS_FAULT                             ///< EXCEPTCLASS_ACCESS_FAULT additional information
        {
            FAULTY_ACCESS_TYPE m_type;                  ///< The type of the faulty memory access
            OPTIONAL_VALUE<ADDRINT> m_address;          ///< Address of the faulty memory access (optional)
        }m_access;

        struct WINDOWS_SYS                              ///< EXCEPTCODE_WINDOWS additional information
        {
            UINT32 m_exceptCode;                        ///< The system exception code or signal number
            UINT32 m_numArgs;                           ///< Number of arguments in the [m_args] array
            ADDRINT m_args[MAX_WINDOWS_EXCEPTION_ARGS]; ///< Array of arguments associated with the exception
        }m_winsys;

        struct MULTIPLE_FP                              ///< EXCEPTCLASS_MULTIPLE_FP_ERROR additional information
        {
            UINT32 m_fpErrors;                          ///< Bit mask of FPERROR values
        }m_multipleFp;
    }m_specific;
};

                                                                  /* DO NOT EDIT */
typedef struct EXCEPTION_INFO EXCEPTION_INFO;

                                                                  /* DO NOT EDIT */
inline VOID PIN_InitExceptionInfo(EXCEPTION_INFO * pExceptInfo,
                                        EXCEPTION_CODE exceptCode, 
                                        ADDRINT exceptAddress)
{
    pExceptInfo->Init(exceptCode, exceptAddress);
}

                                                                  /* DO NOT EDIT */
inline VOID PIN_InitAccessFaultInfo(EXCEPTION_INFO * pExceptInfo,
                                          EXCEPTION_CODE exceptCode,
                                          ADDRINT exceptAddress,
                                          ADDRINT accessAddress,
                                          FAULTY_ACCESS_TYPE accessType = FAULTY_ACCESS_TYPE_UNKNOWN)
{
    pExceptInfo->InitAccessFault(exceptCode, exceptAddress, accessAddress, accessType);
}

                                                                  /* DO NOT EDIT */
inline VOID PIN_InitWindowsExceptionInfo(EXCEPTION_INFO * pExceptInfo,
                                               UINT32 sysExceptCode,
                                               ADDRINT exceptAddress,
                                               UINT32 numArgs = 0,
                                               const ADDRINT * pArgs = 0)
{
    pExceptInfo->InitWindowsSysException(sysExceptCode, exceptAddress, numArgs, pArgs);
}

                                                                  /* DO NOT EDIT */
inline EXCEPTION_CODE PIN_GetExceptionCode(const EXCEPTION_INFO * pExceptInfo)
{
    return pExceptInfo->GetExceptCode();
}

                                                                  /* DO NOT EDIT */
inline EXCEPTION_CLASS PIN_GetExceptionClass(EXCEPTION_CODE exceptCode)
{
    return EXCEPTION_INFO::GetExceptClass(exceptCode);
}

                                                                  /* DO NOT EDIT */
inline ADDRINT PIN_GetExceptionAddress(const EXCEPTION_INFO * pExceptInfo)
{
    return pExceptInfo->GetExceptAddress();
}

                                                                  /* DO NOT EDIT */
inline VOID PIN_SetExceptionAddress(EXCEPTION_INFO * pExceptInfo, 
                                          ADDRINT exceptAddress)
{
    pExceptInfo->SetExceptAddress(exceptAddress);
}

                                                                  /* DO NOT EDIT */
inline FAULTY_ACCESS_TYPE PIN_GetFaultyAccessType(const EXCEPTION_INFO * pExceptInfo) 
{
    return pExceptInfo->GetFaultyAccessType();
}

                                                                  /* DO NOT EDIT */
inline BOOL PIN_GetFaultyAccessAddress(const EXCEPTION_INFO * pExceptInfo,
                                             ADDRINT * pAccessAddress) 
{
    return pExceptInfo->GetFaultyAccessAddress(pAccessAddress);
}

                                                                  /* DO NOT EDIT */
inline UINT32 PIN_GetFpErrorSet(const EXCEPTION_INFO * pExceptInfo) 
{
    return pExceptInfo->GetFpErrors();
}

                                                                  /* DO NOT EDIT */
inline UINT32 PIN_GetWindowsExceptionCode(const EXCEPTION_INFO * pExceptInfo) 
{
    return pExceptInfo->GetWindowsSysExceptionCode();
}

                                                                  /* DO NOT EDIT */
inline UINT32 PIN_CountWindowsExceptionArguments(const EXCEPTION_INFO * pExceptInfo) 
{
    return pExceptInfo->CountWindowsSysArguments();
}

                                                                  /* DO NOT EDIT */
inline ADDRINT PIN_GetWindowsExceptionArgument(const EXCEPTION_INFO * pExceptInfo,
                                                     UINT32 argNum) 
{
    return pExceptInfo->GetWindowsSysArgument(argNum);
}

                                                                  /* DO NOT EDIT */
inline string PIN_ExceptionToString(const EXCEPTION_INFO * pExceptInfo) 
{
    return pExceptInfo->ToString();
}

                                                                  /* DO NOT EDIT */

