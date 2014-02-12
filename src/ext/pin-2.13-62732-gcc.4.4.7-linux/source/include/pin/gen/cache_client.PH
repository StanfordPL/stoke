//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef VOID (*CODECACHE_NOARG_CALLBACK)();

                                                                  /* DO NOT EDIT */
typedef VOID (*CODECACHE_CACHEBLOCK_CALLBACK)(USIZE new_block_size);

                                                                  /* DO NOT EDIT */
typedef VOID (*CODECACHE_FULL_CALLBACK)(USIZE trace_size, USIZE stub_size);

                                                                  /* DO NOT EDIT */
typedef VOID (*CODECACHE_ENTEREXIT_CALLBACK)(ADDRINT cache_pc);

                                                                  /* DO NOT EDIT */
typedef VOID (*CODECACHE_LINKED_CALLBACK)(ADDRINT branch_pc, ADDRINT target_pc);

                                                                  /* DO NOT EDIT */
typedef VOID (*CODECACHE_UNLINKED_CALLBACK)(ADDRINT branch_pc, ADDRINT stub_pc);

                                                                  /* DO NOT EDIT */
typedef VOID (*CODECACHE_TRACEINVALIDATED_CALLBACK)(ADDRINT orig_pc, 
    ADDRINT cache_pc, BOOL success);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddCacheInitFunction(CODECACHE_NOARG_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddCacheBlockFunction(CODECACHE_CACHEBLOCK_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddFullCacheFunction(CODECACHE_FULL_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddCacheFlushedFunction(CODECACHE_NOARG_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddCodeCacheEnteredFunction(CODECACHE_ENTEREXIT_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddCodeCacheExitedFunction(CODECACHE_ENTEREXIT_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddTraceLinkedFunction(CODECACHE_LINKED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddTraceUnlinkedFunction(CODECACHE_UNLINKED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern VOID CODECACHE_AddTraceInvalidatedFunction(CODECACHE_TRACEINVALIDATED_CALLBACK fun, VOID *val);

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_InvalidateTraceAtProgramAddress(ADDRINT app_pc);

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_CodeMemReserved();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_DirectoryMemUsed();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_CodeMemUsed();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_ExitStubBytes();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_LinkBytes();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_CacheSizeLimit();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_BlockSize();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_NumTracesInCache();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_NumExitStubsInCache();

                                                                  /* DO NOT EDIT */
extern BOOL CODECACHE_CreateNewCacheBlock(USIZE block_size);

                                                                  /* DO NOT EDIT */
extern BOOL CODECACHE_ChangeCacheLimit(USIZE cache_size);

                                                                  /* DO NOT EDIT */
extern BOOL CODECACHE_ChangeBlockSize(USIZE block_size);

                                                                  /* DO NOT EDIT */
extern BOOL CODECACHE_ChangeMaxInsPerTrace(UINT32 max_ins);

                                                                  /* DO NOT EDIT */
extern BOOL CODECACHE_ChangeMaxBblsPerTrace(UINT32 max_basic_blocks);

                                                                  /* DO NOT EDIT */
extern BOOL CODECACHE_FlushCache();

                                                                  /* DO NOT EDIT */
extern UINT32 CODECACHE_InvalidateRange(ADDRINT start, ADDRINT end);

                                                                  /* DO NOT EDIT */
extern ADDRINT INS_CodeCacheAddress(INS ins);

                                                                  /* DO NOT EDIT */
extern ADDRINT BBL_CodeCacheAddress(BBL bbl);

                                                                  /* DO NOT EDIT */
extern ADDRINT TRACE_CodeCacheAddress(TRACE trace);

                                                                  /* DO NOT EDIT */
extern USIZE INS_CodeCacheSize(INS ins);

                                                                  /* DO NOT EDIT */
extern USIZE BBL_CodeCacheSize(BBL bbl);

                                                                  /* DO NOT EDIT */
extern USIZE TRACE_CodeCacheSize(TRACE trace);

                                                                  /* DO NOT EDIT */
extern ADDRINT CODECACHE_OriginalAddress(ADDRINT cache_pc);

                                                                  /* DO NOT EDIT */
extern USIZE PIN_MemoryAllocatedForPin();

                                                                  /* DO NOT EDIT */

