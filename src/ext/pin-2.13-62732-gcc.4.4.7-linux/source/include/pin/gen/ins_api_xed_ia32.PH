//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


extern INT32 INS_Category(const INS ins);

                                                                  /* DO NOT EDIT */
extern INT32 INS_Extension(const INS ins);

                                                                  /* DO NOT EDIT */
extern UINT32 INS_EffectiveAddressWidth(INS ins);

                                                                  /* DO NOT EDIT */
extern USIZE INS_MemoryOperandSize(INS ins, UINT32 memoryOp);

                                                                  /* DO NOT EDIT */
extern USIZE INS_MemoryWriteSize(INS ins);

                                                                  /* DO NOT EDIT */
extern PREDICATE INS_GetPredicate(INS ins);

                                                                  /* DO NOT EDIT */
extern USIZE INS_MemoryReadSize(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsMemoryRead(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsMemoryWrite(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_HasMemoryRead2(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_HasFallThrough(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsSysenter(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsXbegin(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsXend(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsLea(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsNop(INS ins);

                                                                  /* DO NOT EDIT */
extern string OPCODE_StringShort(UINT32 opcode);

                                                                  /* DO NOT EDIT */
extern string INS_Mnemonic(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsBranch(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsDirectBranch(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsDirectCall(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsDirectBranchOrCall(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsHalt(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsBranchOrCall(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_Stutters(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsPcMaterialization(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsCall(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsFarCall(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsFarJump(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsDirectFarJump(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsVgather(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsVscatter(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_HasMemoryVector(INS ins);

                                                                  /* DO NOT EDIT */
extern VOID INS_GetFarPointer(INS ins, 
                                 UINT16& segment_selector,
                                 UINT32& displacement);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsProcedureCall(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsInterrupt(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsRet(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsSysret(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsFarRet(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsPrefetch(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsSub(const INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsMov(const INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsMovFullRegRegSame(const INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsAtomicUpdate(const INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsRDTSC(const INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsMaskMov(const INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsMaskedJump(const INS ins);

                                                                  /* DO NOT EDIT */
extern REG INS_RepCountRegister(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsIndirectBranchOrCall(INS ins);

                                                                  /* DO NOT EDIT */
extern REG INS_SegmentRegPrefix(INS ins);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* INS_IsRewritableMemOpBaseLimited is now deprecated and no longer supported. See INS_RewriteMemoryOperand
 * for a more powerful interface to memory operand rewriting.
 */
extern PIN_DEPRECATED_API BOOL INS_IsRewritableMemOpBaseLimited(INS ins, MEMORY_TYPE mtype, REG & base);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* INS_IsRewritableMemOpBase is now deprecated and no longer supported. See INS_RewriteMemoryOperand
 * for a more powerful interface to memory operand rewriting.
 */
extern PIN_DEPRECATED_API BOOL INS_IsRewritableMemOpBase(INS ins, MEMORY_TYPE mtype, REG & base);

                                                                  /* DO NOT EDIT */
/* DO NOT EDIT */
/* INS_IsDynamicRewritableMemOpBase is now deprecated and no longer supported. See INS_RewriteMemoryOperand
 * for a more powerful interface to memory operand rewriting.
 */
extern PIN_DEPRECATED_API BOOL INS_IsDynamicRewritableMemOpBase(INS ins, MEMORY_TYPE mtype, REG & reg);

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetSyntaxIntel();

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetSyntaxATT();

                                                                  /* DO NOT EDIT */
extern VOID PIN_SetSyntaxXED();

                                                                  /* DO NOT EDIT */
extern REG INS_RegR(INS x, UINT32 k);

                                                                  /* DO NOT EDIT */
extern REG INS_RegW(INS x, UINT32 k);

                                                                  /* DO NOT EDIT */
extern OPCODE INS_Opcode(INS ins);

                                                                  /* DO NOT EDIT */
extern string CATEGORY_StringShort(UINT32 num);

                                                                  /* DO NOT EDIT */
extern string EXTENSION_StringShort(UINT32 num);

                                                                  /* DO NOT EDIT */
extern BOOL INS_SegPrefixIsMemoryRead(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_SegPrefixIsMemoryWrite(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_AddressSizePrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_BranchNotTakenPrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_BranchTakenPrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_LockPrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandSizePrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_RepPrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_RepnePrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_SegmentPrefix(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsXchg(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsStringop(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_IsIRet(INS ins);

                                                                  /* DO NOT EDIT */

