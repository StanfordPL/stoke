//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


inline BOOL REG_is_Half16(const REG reg)
{

    const REG_CLASS_BITS  rh16Mask = 
        (_REGCBIT(REG_CLASS_GRH16))   | 
        (_REGCBIT(REG_CLASS_FLAGS16)) | 
        (_REGCBIT(REG_CLASS_IP16))    | 
        (_REGCBIT(REG_CLASS_PIN_GRH16));

    return ((_regClassBitMapTable[reg] & rh16Mask) != 0);
}

                                                                  /* DO NOT EDIT */
inline REGWIDTH REG_Width(REG reg)
{
    return (_regWidthTable[reg]);
}

                                                                  /* DO NOT EDIT */
inline BOOL REG_is_Half32(const REG reg)
{
    return (REG_Width(reg) == REGWIDTH_32);
}

                                                                  /* DO NOT EDIT */
inline BOOL REG_is_Lower8(const REG reg)
{
    const REG_CLASS_BITS  rl8Mask = (_REGCBIT(REG_CLASS_GRL8)) | (_REGCBIT(REG_CLASS_PIN_GRL8));
    return ((_regClassBitMapTable[reg] & rl8Mask) != 0);
}

                                                                  /* DO NOT EDIT */
inline BOOL REG_is_Upper8(const REG reg)
{

    const REG_CLASS_BITS  ru8Mask = (_REGCBIT(REG_CLASS_GRU8)) | (_REGCBIT(REG_CLASS_PIN_GRU8));
    return ((_regClassBitMapTable[reg] & ru8Mask) != 0);
}

                                                                  /* DO NOT EDIT */
inline BOOL REG_is_Any8(const REG reg)
{

    const REG_CLASS_BITS  r8Mask 
        = (_REGCBIT(REG_CLASS_GRU8)) | (_REGCBIT(REG_CLASS_PIN_GRU8)) 
        | (_REGCBIT(REG_CLASS_GRL8)) | (_REGCBIT(REG_CLASS_PIN_GRL8));
    return ((_regClassBitMapTable[reg] & r8Mask) != 0);
}

                                                                  /* DO NOT EDIT */
extern BOOL REG_is_partialreg(const REG reg);

                                                                  /* DO NOT EDIT */

