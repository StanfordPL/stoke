//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


class COMMAND_LINE_ARGUMENTS
{
  public:
   /*!
    * Empty Constructor
    */
    COMMAND_LINE_ARGUMENTS()
    {
        Enter(0, NULL, NULL);
    }

   /*!
    * Constructor. Construct an object from argc, argv and delimiter
    * Example1: argc = 6, argv = {ab bc cd de ef de}, delimiter = "de"  
    *          => the object will contain:
    *          argc = 4, argv = {ab bc cd de}
    * Example2: argc = 6, argv = {ab bc cd de ef de}, delimiter = NULL  
    *          => the object will contain:
    *          argc = 6, argv = {ab bc cd de ef de}
    * Example3: argc = 6, argv = {ab bc cd de ef de}, delimiter = "fg"  
    *          => the object will contain:
    *          argc = 6, argv = {ab bc cd de ef de}
    *
    * @param[in]   argc        argc for the command line arguments object 
    * @param[in]   argv        argv for the command line arguments object
    * @param[in]   delimiter   remove any argv argument AFTER the delimiter.
    *                          If it was not found, nothing will be removed
    */
    COMMAND_LINE_ARGUMENTS(INT argc, const CHAR * const * argv, const CHAR * delimiter = NULL)
    {
        Enter(argc, argv, delimiter);
    }

   /*!
    * Constructor. Construct an object from a string using MS CRT Parsing rules
    * (For more details see GetCmdArg() documentation)
    *
    * NOTE: Use this function only for original application's command line
    *      
    * @param[in]   commandLine     original application's command line represented as string
    */
    COMMAND_LINE_ARGUMENTS(const string & commandLine)
    {
        Enter(commandLine);
    }

   /*!
    * Copy Constructor. Construct an object from another object
    *      
    * @param[in]   source       source object
    */
    COMMAND_LINE_ARGUMENTS(const COMMAND_LINE_ARGUMENTS & source)
    {
        Enter(source.m_argc, source.m_argv, NULL);
    }

   /*!
    * Assignment operator
    *      
    * @param[in]   source       source object
    *
    * @return  reference to current object
    */
    COMMAND_LINE_ARGUMENTS & operator= (const COMMAND_LINE_ARGUMENTS & source)
    {
        //Avoid self assignment
        if(this != &source)
        {
            Clean();
            Enter(source.m_argc, source.m_argv, NULL);
        }
        return *this;
    }

   /*!
    * Insert a set of command line arguments into this set of arguments.
    *      
    * @param[in]   args     Arguments to be inserted.
    * @param[in]   pos      Arguments are inserted before the argument with this position.
    *                        If \a pos is -1, they are appended to the end.
    *
    * @return  reference to current object
    */
    COMMAND_LINE_ARGUMENTS & Insert (const COMMAND_LINE_ARGUMENTS & right, INT pos = -1);

    /*!
     * Insert a single argument into this set of arguments.
     *      
     * @param[in]   arg     Argument to be inserted.
     * @param[in]   pos     The argument is inserted before the argument with this position.
     *                       If \a pos is -1, it is appended to the end.
     *
     * @return  reference to current object
     */
    COMMAND_LINE_ARGUMENTS & Insert (const string & arg, INT pos = -1);

    /*!
    * Find an argument by name
    * 
    * @param[in]   argStr - argument to be found
    *
    * @return index of argument or -1 if not found
    */
    INT FindArgument(const string& argStr) const;

    /*!
    * Looks for argument equal to argStr; remove "numOfArgs" arguments starting from the found argument
    *      
    * @param[in]   argStr - argument to be found, 
    * @param[in]   numOfArgs - numer of arguments that should be removed starting from the found argument
    *
    * @return  TRUE if numOfArgs were removed from the list
    */
    BOOL RemoveArguments(const string& argStr, INT numOfArgs);

   /*!
    * @return  Argc of current object
    *          the value life time is as long as the object was not changed
    *          (using operator=(), Insert() or ~COMMAND_LINE_ARGUMENTS() will invalidate this data) 
    */
    INT  Argc() const
    {
        return m_argc;
    }

   /*!
    * @return  Argv of current object, 
    *          the pointer life time is as long as the object was not changed
    *          (using operator=(), Insert() or  ~COMMAND_LINE_ARGUMENTS() will invalidate this data) 
    */
    const CHAR * const * Argv() const
    {
        return m_argv;
    }

    /*!
     * @return string with all command line arguments separated with \" \"
     */
    string String() const;

   /*!
    * Destructor
    */
    ~COMMAND_LINE_ARGUMENTS()
    {
        Clean();
    }

  private:
   /*!
    * Initialize the object using argc, argv and delimiter
    */
    BOOL Enter(INT argc, const CHAR * const * argv, const CHAR * delimiter);

   /*!
    * Initialize the object using commandLine string
    */
    BOOL Enter(const string & commandLine);

   /*!
    * Deallocate all resources used by current object
    */
    BOOL Clean();

   /*!
    * Find array size using argc, argv and delimiter
    */
    INT FindArraySize(INT argc, const CHAR * const * argv, const CHAR * delimiter);

    /*!
    * Remove argument by index (0 <= index < m_argc)
    */
    VOID RemoveArgument(INT index);

  private:
    INT m_argc;       //!< size of argv array
    CHAR ** m_argv;   //!< CHAR* array
};

                                                                  /* DO NOT EDIT */
extern VOID SetAddress0x(BOOL val);

                                                                  /* DO NOT EDIT */
extern BOOL CharIsSpace(CHAR c);

                                                                  /* DO NOT EDIT */
extern CHAR CharToUpper(CHAR c);

                                                                  /* DO NOT EDIT */
extern string ptrstr(const VOID *val );

                                                                  /* DO NOT EDIT */
extern string StringFromAddrint( ADDRINT l);

                                                                  /* DO NOT EDIT */
extern string StringDec( UINT64 l, UINT32 digits, CHAR padding);

                                                                  /* DO NOT EDIT */
extern string StringDecSigned( INT64 l, UINT32 digits, CHAR padding);

                                                                  /* DO NOT EDIT */
extern string StringBignum( INT64 l, UINT32 digits, CHAR padding);

                                                                  /* DO NOT EDIT */
extern string Reformat(const string& s, const string& prefix, UINT32 min_line, UINT32 max_line);

                                                                  /* DO NOT EDIT */
extern string StringHex32( UINT32 l, UINT32 digits, BOOL prefix_0x);

                                                                  /* DO NOT EDIT */
extern string StringFlt(FLT64 val , UINT32 precision, UINT32 width);

                                                                  /* DO NOT EDIT */
extern string StringBool(BOOL b);

                                                                  /* DO NOT EDIT */
extern string StringTri(TRI t);

                                                                  /* DO NOT EDIT */
extern INT32 Int32FromString(const string& s);

                                                                  /* DO NOT EDIT */
extern UINT32 Uint32FromString(const string& s);

                                                                  /* DO NOT EDIT */
extern UINT64 Uint64FromString(const string& s);

                                                                  /* DO NOT EDIT */
extern FLT64 FLT64FromString(const string& s);

                                                                  /* DO NOT EDIT */
extern INT CharToHexDigit(CHAR c);

                                                                  /* DO NOT EDIT */
extern ADDRINT AddrintFromString(const string& str);

                                                                  /* DO NOT EDIT */
extern UINT32 BitCount(UINT32 val);

                                                                  /* DO NOT EDIT */
extern string ReadLine(istream& inputFile, UINT32 *lineNum);

                                                                  /* DO NOT EDIT */
extern UINT32 Tokenize(const string& line, string *array, UINT32 n);

                                                                  /* DO NOT EDIT */
inline string StringHex( UINT32 l, UINT32 digits, BOOL prefix_0x = TRUE) {return StringHex32(l, digits, prefix_0x);}

                                                                  /* DO NOT EDIT */
inline string decstr(INT64 val, UINT32 width=0 )  {return StringDecSigned(val,width,' ');}

                                                                  /* DO NOT EDIT */
inline string decstr(INT32 val, UINT32 width=0 )  {return StringDecSigned(val,width,' ');}

                                                                  /* DO NOT EDIT */
inline string decstr(INT16 val, UINT32 width=0 )  {return StringDecSigned(val,width,' ');}

                                                                  /* DO NOT EDIT */
inline string decstr(UINT64 val, UINT32 width=0 )  {return StringDec(val,width,' ');}

                                                                  /* DO NOT EDIT */
inline string decstr(UINT32 val, UINT32 width=0 )  {return StringDec(val,width,' ');}

                                                                  /* DO NOT EDIT */
inline string decstr(UINT16 val, UINT32 width=0 )  {return StringDec(val,width,' ');}

                                                                  /* DO NOT EDIT */
inline string hexstr(INT64 val, UINT32 width=0 )
{
    string ostr;
#if defined(_MSC_VER) && _MSC_VER  >= 1400
    ostr = StringHex( INT32((val >> 16) >> 16), width);
#else
    ostr = StringHex( INT32(val >> 32), width);
#endif
    ostr += StringHex( UINT32(val), 8, FALSE);

    return ostr;
}

                                                                  /* DO NOT EDIT */
inline string hexstr(INT32 val, UINT32 width=0 )  {return StringHex(INT32(val),width);}

                                                                  /* DO NOT EDIT */
inline string hexstr(INT16 val, UINT32 width=0 )  {return StringHex(INT32(val),width);}

                                                                  /* DO NOT EDIT */
inline string hexstr(UINT64 val, UINT32 width=0 )
{
    string ostr;
#if defined(_MSC_VER) && _MSC_VER  >= 1400
    ostr = StringHex( UINT32((val >> 16) >> 16), width);
#else
    ostr = StringHex( UINT32(val >> 32), width);
#endif
    ostr += StringHex( UINT32(val), 8, FALSE);

    return ostr;
}

                                                                  /* DO NOT EDIT */
inline string hexstr(VOID *p, UINT32 width=0 )
{
#if defined(HOST_IA32E) || defined(HOST_MIC)
    UINT64 val = reinterpret_cast<UINT64>(p);
    return hexstr(val,width);
#else
    UINT32 val = reinterpret_cast<UINT32>(p);
    return StringHex(val,width);
#endif    
}

                                                                  /* DO NOT EDIT */
inline string hexstr(const VOID *p, UINT32 width=0 )
{
#if defined(HOST_IA32E) || defined(HOST_MIC)
    UINT64 val = reinterpret_cast<UINT64>(p);
    return hexstr(val,width);
#else
    UINT32 val = reinterpret_cast<UINT32>(p);
    return StringHex(val,width);
#endif    
}

                                                                  /* DO NOT EDIT */
inline string hexstr(UINT32 val, UINT32 width=0 )  {return StringHex(UINT32(val),width);}

                                                                  /* DO NOT EDIT */
inline string hexstr(UINT16 val, UINT32 width=0 )  {return StringHex(UINT32(val),width);}

                                                                  /* DO NOT EDIT */
inline string fltstr(FLT64 val, UINT32 prec=0,UINT32 width=0 )  {return StringFlt(val,prec,width);}

                                                                  /* DO NOT EDIT */
inline string ljstr(const string& s, UINT32 width, CHAR padding = ' ')
{
    string  ostr(width,padding);
    ostr.replace(0,s.length(),s);
    return ostr;
}

                                                                  /* DO NOT EDIT */
struct DECSTR 
{
    DECSTR(UINT32 width = 0) :_w(width){}
    template <typename T> string operator() (const T & t) const {return decstr(t,_w);}
    UINT32 _w;
};

                                                                  /* DO NOT EDIT */
struct HEXSTR 
{
    HEXSTR(UINT32 width = 0) :_w(width){}
    template <typename T> string operator() (const T & t) const {return hexstr(t,_w);}
    UINT32 _w;
};

                                                                  /* DO NOT EDIT */
struct FLTSTR 
{
    FLTSTR(UINT32 prec=0,UINT32 width=0) :_p(prec), _w(width) {}
    template <typename T> string operator() (const T & t) const {return fltstr(t,_p,_w);}
    UINT32 _p;
    UINT32 _w;
};

                                                                  /* DO NOT EDIT */
template <typename ITER, typename CONV> 
    string StringSequence(ITER begin, ITER end, 
                          const CONV & conv,
                          const string & delimiter = string(" "))
{
    string str;

    for (ITER it = begin;  it != end;  ++it)
    {
        if (it != begin) {str += delimiter;}
        str += conv(*it);
    }
    return str;
}

                                                                  /* DO NOT EDIT */
inline VOID * Addrint2VoidStar(ADDRINT addr)
{
#if (defined(HOST_IA32E) || defined(HOST_MIC)) && (defined(TARGET_IA32))
    ASSERT(false,"Should not be called in cross environment\n");
    return 0;
#else
    return reinterpret_cast<VOID*>(addr);
#endif    
}

                                                                  /* DO NOT EDIT */
inline ADDRINT VoidStar2Addrint(const VOID * addr)
{
#if (defined(HOST_IA32E) || defined(HOST_MIC)) && (defined(TARGET_IA32))
    ASSERT(false,"Should not be called in cross environment\n");
    return 0;
#else
    return reinterpret_cast<ADDRINT>(addr);
#endif
}

                                                                  /* DO NOT EDIT */
inline ADDRINT VoidStar2Addrint(VOID * addr)
{
#if (defined(HOST_IA32E) || defined(HOST_MIC)) && (defined(TARGET_IA32))
    ASSERT(false,"Should not be called in cross environment\n");
    return 0;
#else
    return reinterpret_cast<ADDRINT>(addr);
#endif
}

                                                                  /* DO NOT EDIT */
template <typename T> BOOL IsPowerOf2(T value)
{
    return ((value & (value - 1)) == 0);
}

                                                                  /* DO NOT EDIT */
template <typename T> T RoundToNextPower2(T value)
{
    //This algorithm rounds up to the next power of 2 by setting all the significant digits 
    //of the number in binary representation to 1. The rest of the digits are set to be 0.
    //It increments the number, thus getting the next power of two. This handles all numbers
    //that aren't powers of two. To handle the case of powers of two, 1 is decremented from
    //the number before the process begins. This makes no difference if the number is not a 
    //power of 2, and when it is it makes sure we get the same power of two we had before.
    //For details see "http://graphics.stanford.edu/~seander/bithacks.html#RoundUpPowerOf2"
    T width = sizeof(T)*8; //bit width 
    --value;
    
    for (T i=1; i < width; i <<= 1) //runs log2(width) times 
    {
        value = (value | value >> i); //Turn i^2 bytes to 1.
    }
    ++value;
    return value;
}

                                                                  /* DO NOT EDIT */
template <typename T> T RoundUp(T value, size_t alignment)
{
    if (alignment == 0)
    {
        return value;
    }
    
    value += alignment - 1;
    value /= alignment;
    value *= alignment;

    return value;
}

                                                                  /* DO NOT EDIT */
template <typename T> T * RoundUp(T * ptr, size_t alignment)
{
    return (reinterpret_cast<T *>(RoundUp(reinterpret_cast<ADDRINT>(ptr), alignment)));
}

                                                                  /* DO NOT EDIT */
template <typename T> T RoundUpPowerOf2(T value, size_t alignment)
{
    if (alignment == 0) return value;
    T align_1 = static_cast<T>(alignment - 1); 
    ASSERTX((alignment & align_1) == 0);
    return ((value + align_1) & ~align_1);
}

                                                                  /* DO NOT EDIT */
template <typename T> T * RoundUpPowerOf2(T * ptr, size_t alignment)
{
    return (reinterpret_cast<T *>(RoundUpPowerOf2(reinterpret_cast<ADDRINT>(ptr), alignment)));
}

                                                                  /* DO NOT EDIT */
template <typename T> T RoundDown(T value, size_t alignment)
{
    if (alignment == 0)
    {
        return value;
    }

    value /= alignment;
    value *= alignment;

    return value;
}

                                                                  /* DO NOT EDIT */
template <typename T> T * RoundDown(T * ptr, size_t alignment)
{
    return (reinterpret_cast<T *>(RoundDown(reinterpret_cast<ADDRINT>(ptr), alignment)));
}

                                                                  /* DO NOT EDIT */
template <typename T> T RoundDownPowerOf2(T value, size_t alignment)
{
    if (alignment == 0) return value;
    T align_1 = static_cast<T>(alignment - 1); 
    ASSERTX((alignment & align_1) == 0);
    return (value & ~align_1);
}

                                                                  /* DO NOT EDIT */
template <typename T> T * RoundDownPowerOf2(T * ptr, size_t alignment)
{
    return (reinterpret_cast<T *>(RoundDownPowerOf2(reinterpret_cast<ADDRINT>(ptr), alignment)));
}

                                                                  /* DO NOT EDIT */
template<typename T> ADDRINT PointerToInt(const T *ptr)
{
#if (defined(HOST_IA32) && !defined(TARGET_IA32)) || (defined(HOST_IA32E) && !defined(TARGET_IA32E)) || \
    (defined(HOST_MIC) && !defined(TARGET_MIC))

    ASSERT(false,"Should not be called in cross environment\n");
    return 0;

#else
    return reinterpret_cast<ADDRINT>(ptr);
#endif
}

                                                                  /* DO NOT EDIT */
template<typename T> T *IntToPointer(ADDRINT addr)
{
#if (defined(HOST_IA32) && !defined(TARGET_IA32)) || (defined(HOST_IA32E) && !defined(TARGET_IA32E)) || \
    (defined(HOST_MIC) && !defined(TARGET_MIC))

    ASSERT(false,"Should not be called in cross environment\n");
    return 0;

#else
    return reinterpret_cast<T*>(addr);
#endif
}

                                                                  /* DO NOT EDIT */
inline INT64 VoidStar2Int(VOID * addr)
{
#if (defined(HOST_IA32E) || defined(HOST_MIC)) && defined(TARGET_IA32)
    ASSERT(false,"Should not be called in cross environment\n");
    return 0;
#else
    return reinterpret_cast<INT64>(addr);
#endif
}

                                                                  /* DO NOT EDIT */
inline BOOL UnsignedImmediateFits(const UINT64 value, const UINT32 bits)
{
    return 0 == (value>>bits);
}

                                                                  /* DO NOT EDIT */
inline void RangeCheck(const UINT32 value, const UINT32 bits)
{
    ASSERT (UnsignedImmediateFits(value, bits),
        decstr(bits) + "-bit range overflow in " + hexstr(value) + "\n");
}

                                                                  /* DO NOT EDIT */
extern BOOL SignedImmediateFits(const INT64 value, const UINT32 origSize, const UINT32 extendedSize);

                                                                  /* DO NOT EDIT */
inline BOOL SignedImmediateFits(const INT64 value, const UINT32 origSize)
{
    return SignedImmediateFits(value, origSize, 8 * sizeof(ADDRINT));
}

                                                                  /* DO NOT EDIT */
extern BOOL HasBaseName(const char *fileName, const char *baseNameToCheckFor);

                                                                  /* DO NOT EDIT */
inline INT32 MEMORY_ReadInt32(ADDRINT  address)
{
    return *reinterpret_cast<INT32*>(address);    
}

                                                                  /* DO NOT EDIT */
inline VOID MEMORY_WriteInt32(ADDRINT  address, INT32 value)
{
    *reinterpret_cast<INT32*>(address) = value;
}

                                                                  /* DO NOT EDIT */
inline UINT32 MEMORY_ReadUint32(ADDRINT  address)
{
    return *reinterpret_cast<UINT32*>(address);    
}

                                                                  /* DO NOT EDIT */
inline VOID MEMORY_WriteUint32(ADDRINT  address, UINT32 value)
{
    *reinterpret_cast<UINT32*>(address) = value;
}

                                                                  /* DO NOT EDIT */
inline INT64 MEMORY_ReadInt64(ADDRINT  address)
{
    return *reinterpret_cast<INT64*>(address);    
}

                                                                  /* DO NOT EDIT */
inline VOID MEMORY_WriteInt64(ADDRINT  address, INT64 value)
{
    *reinterpret_cast<INT64*>(address) = value;
}

                                                                  /* DO NOT EDIT */
inline UINT64 MEMORY_ReadUint64(ADDRINT  address)
{
    return *reinterpret_cast<UINT64*>(address);    
}

                                                                  /* DO NOT EDIT */
inline VOID MEMORY_WriteUint64(ADDRINT  address, UINT32 value)
{
    *reinterpret_cast<UINT64*>(address) = value;
}

                                                                  /* DO NOT EDIT */
extern ADDRINT GetPageOfAddr(ADDRINT addr);

                                                                  /* DO NOT EDIT */
extern ADDRINT ProgramEntry(const ImageLoaderInfo * mainImage, const ImageLoaderInfo * loader);

                                                                  /* DO NOT EDIT */
extern string Joinpath(string s1, string s2);

                                                                  /* DO NOT EDIT */
extern string Basename(const string& path);

                                                                  /* DO NOT EDIT */
extern CHAR* CreateTmpFileName(const CHAR* fnameTemplate);

                                                                  /* DO NOT EDIT */
extern const VOID * GetSp();

                                                                  /* DO NOT EDIT */
inline size_t PtrDiff(const VOID * ptr1, const VOID * ptr2)
{
    return (reinterpret_cast<const INT8 *>(ptr1) - reinterpret_cast<const INT8 *>(ptr2));
}

                                                                  /* DO NOT EDIT */
inline VOID * PtrAtOffset(VOID * ptr, size_t offset)
{
    return (reinterpret_cast<INT8 *>(ptr) + offset);
}

                                                                  /* DO NOT EDIT */
template <typename T> VOID * 
 PushDataToStack(VOID * stack, const T * data, size_t alignment = 1, size_t size = sizeof(T))
{
    stack = PtrAtOffset(stack, 0 - size);
    stack = RoundDown(stack , alignment);
    return memcpy(stack, data, size);
}

                                                                  /* DO NOT EDIT */
inline VOID * PushAddrintToStack(VOID * stack, ADDRINT value)
{
    stack = PtrAtOffset(stack, 0 - sizeof(ADDRINT));
    *reinterpret_cast<ADDRINT *>(stack) = value;
    return stack;
}

                                                                  /* DO NOT EDIT */
class MemRange
{ 
    public:

    //======= Constructors

    //Default constructor
    MemRange() {} 
    //Construct range with a given base address and size
    MemRange(VOID * base, size_t size) : m_base(base), m_size(size) {}
    MemRange(ADDRINT base, size_t size) : m_base(Addrint2VoidStar(base)), m_size(size) {}
    //Construct range with a given base and end addresses.
    //End address of a range is the address of the first byte following the range
    MemRange(VOID * base, VOID * end) : m_base(base), m_size(PtrDiff(end, base)) {}

    //Default copy constructor and assignment operator

    //======= operators == and !=
    BOOL operator == (const MemRange &  range) const 
    {
        return ((m_base == range.m_base) && (m_size == range.m_size));
    }
    BOOL operator != (const MemRange &  range) const {return (!(*this == range));}

    //======= Accessors 

    //Get/set base address of the range. 
    VOID * Base() const {return m_base;}
    MemRange& Base(VOID * base) { m_base = base; return *this;}

    //Get/set size, in bytes, of the range. 
    size_t Size() const {return  m_size;}
    MemRange& Size(size_t size) { m_size = size; return *this;}

    //Get end address of the range. 
    VOID * End() const {return  PtrAtOffset(m_base, m_size);}

    //Get the last address of the non-empty range. 
    VOID * Last() const {return PtrAtOffset(m_base, m_size - 1);}

    /*
    * Check to see whether this range is empty
    *
    * @return  true, if this range is empty, otherwise - false
    */
    BOOL IsEmpty() const {return (m_size == 0);}

    /*
    * Check to see whether this range contains the specified memory address
    *
    * @param[in] addr       memory address, potentially contained in this range 
    *
    * @return   true, if this range contains the specified address, 
    *           otherwise - false 
    */
    BOOL Contains(const VOID * addr) const
    {
        return (PtrDiff(addr, m_base) < m_size);
    }

    /*
    * Check to see whether this range contains the specified memory range
    *
    * @param[in] range      memory range, potentially contained in this range 
    *
    * @return   true, if this range contains the specified range,
    *           otherwise - false.
    */
    BOOL Contains(const MemRange & range) const
    {
        return  (Contains(range.m_base) && !range.Contains(End()));
    }

    /* Check to see whether this range intersects with the specified memory range
    *
    * @param[in] range      memory range, potentially intersecting with this range 
    *
    * @return   true, if this range intersects with the specified range
    *           otherwise - false
    */
    BOOL Intersects(const MemRange & range) const
    {
        return  (Contains(range.m_base) || range.Contains(m_base)); 
    }

    /* Check to see whether this range is adjacent to the specified memory range
    *
    * @param[in] range      memory range, potentially adjacent to this range 
    *
    * @return   true, if this range is adjacent to the specified range
    *           otherwise - false
    */
    BOOL AdjacentTo(const MemRange & range) const
    {
        return  (((range.m_base == End()) && (range.m_base != 0)) || 
                 ((m_base == range.End()) && (m_base != 0))); 
    }

    /* Check to see whether the current stack pointer belongs to this range 
    *
    * @return   true, if current stack pointer belongs to this range
    *           otherwise - false
    */
    BOOL IsCurrentStack() const
    {
        return  (Contains(GetSp())); 
    }

    /*
    * Round base/end address of the range down/up according to specified alignment
    *
    * @param[in] alignment      alignment value. Must be power of two. 
    *
    * @return  reference to aligned range. 
    */
    MemRange& Align(UINT32 alignment) 
    {
        VOID * end  = RoundUp(End(), alignment);
        m_base = RoundDown(m_base, alignment);
        m_size = PtrDiff(end, m_base);
        return *this;
    }

    /*
    * Round both base and end address of the range up according to specified alignment.
    * The size of the updated range is at least size the range before update.
    * @param[in] alignment      alignment value. Must be power of two. 
    *  return  reference to aligned range
    */
    MemRange& AlignUp(UINT32 alignment) 
    {
        m_base = RoundUp(m_base, alignment);
        m_size = RoundUp(m_size, alignment);
        return *this;
    }

    /*
    * Round both base and end address of the range down according to specified alignment.
    * The size of the updated range is at least size the range before update.
    * @param[in] alignment      alignment value. Must be power of two. 
    * @return  reference to aligned range
    */
    MemRange& AlignDown(UINT32 alignment) 
    {
        VOID * end  = RoundDown(End(), alignment);
        m_size = RoundUp(m_size, alignment);
        m_base = PtrAtOffset(end, 0 - m_size);
        return *this;
    }

    /*
    * Shift both base and end address of the range 
    * @param[in] offset         shift value. 
    * @return  reference to shifted range
    */
    MemRange& Shift(size_t offset) 
    {
        m_base = PtrAtOffset(m_base, offset);
        return *this;
    }

    /*
    * Shift base address of the range without changing the end address
    * @param[in] offset         shift value. 
    * @return  reference to shifted range
    */
    MemRange& ShiftBase(size_t offset) 
    {
        VOID * end  = End();
        m_base = PtrAtOffset(m_base, offset);
        m_size = PtrDiff(end, m_base);
        return *this;
    }

    /*
    * Shift end address of the range without changing the base address
    * @param[in] offset         shift value. 
    * @return  reference to shifted range
    */
    MemRange& ShiftEnd(size_t offset) 
    {
        m_size += offset;
        return *this;
    }

    /*
    * Extend boundaries of this range to include the specified range.
    * The new range is the minimal range that contains both ranges.  
    * @param[in] range      memory range, to be combined with this range 
    * @return  reference to updated range
    */
    MemRange& Combine(const MemRange & range) 
    {
        size_t size;
        if (range.m_base >= m_base)
        {
            size = PtrDiff(range.End(), m_base);
        }
        else
        {
            size = PtrDiff(End(), range.m_base);
            *this = range;
        }
        if (size > m_size)
        {
            m_size = size;
        }
        return *this;
    }

    /*
    * Decompose this range into three ranges (each of them may be empty):
    * @param[out]  pIntersection - intersection of <this> range with specified <range>
    * @param[out]  pLowDiff      - part of <this> range, that contains all addresses 
    *                              lower than any address in the specified <range>
    * @param[out]  pHighDiff     - part of <this> range, that contains all addresses 
    *                              higher than any address in the specified <range>
    * @param[in]   range         - range to be intersected with and subtracted from 
    *                              <this> range
    * All three output paramters are optional - the range is not returned if the 
    * corresponding parameter is NULL.
    */
    VOID Decompose(const MemRange & range, 
                   MemRange * pIntersection,
                   MemRange * pLowDiff,
                   MemRange * pHighDiff) const
    {
        VOID * thisEnd  = End();
        VOID * otherEnd = range.End();

        VOID * intersectionBase;
        VOID * intersectionEnd;

        if (Contains(range.m_base))
        {
            // intersecting ranges
            intersectionBase = range.m_base;
            intersectionEnd  = (range.Contains(thisEnd) ? thisEnd : otherEnd);
        }
        else if (range.Contains(m_base))
        {
            // intersecting ranges
            intersectionBase = m_base;
            intersectionEnd  = (Contains(otherEnd) ? otherEnd : thisEnd);
        }
        else if (m_base > range.m_base)
        {
            // intersection is empty; <this> is higher than <range>
            intersectionBase = intersectionEnd = m_base;
        }
        else
        {
            // intersection is empty; <this> is lower than <range>
            intersectionBase = intersectionEnd = thisEnd;
        }

        if (pIntersection != 0)
        {
            *pIntersection = MemRange(intersectionBase, intersectionEnd);
        }
        if (pLowDiff != 0)
        {
            *pLowDiff = MemRange(m_base, intersectionBase);
        }
        if (pHighDiff != 0)
        {
            *pHighDiff = MemRange(intersectionEnd, thisEnd);
        }
    }

    private:
    VOID * m_base;
    size_t m_size;
};

                                                                  /* DO NOT EDIT */
inline string MemRangeToString(const MemRange & range)
{
    return ("[" + hexstr(range.Base()) + " , " + hexstr(range.End()) + "]");
}

                                                                  /* DO NOT EDIT */
extern MemRange MemPageRange(ADDRINT addr);

                                                                  /* DO NOT EDIT */
extern MemRange MemPageRange(const VOID * addr);

                                                                  /* DO NOT EDIT */
class ONCE_STATE
{
  private:
    // Function execution state
    enum 
    {
        NO_ONCE,            //!< initial state - function never executed
        ONCE_RUNNING,       //!< function is currently running
        ONCE_SUCCESS,       //!< function executed successfully
        ONCE_FAILURE        //!< function executed but failed
    } m_state;

  public:
    // Initial state - never executed
    ONCE_STATE() : m_state(NO_ONCE) {}

    // Return FALSE if function is already executed. Otherwise, set state to ONCE_RUNNING
    // and return TRUE. 
    BOOL Enter() 
    {
        if (m_state == NO_ONCE)
        {
            m_state = ONCE_RUNNING; 
            return TRUE;
        }
        return FALSE;
    }

    // Set and return exit state of the function just executed
    BOOL Exit(BOOL result = TRUE) 
    {
        m_state = (result ? ONCE_SUCCESS : ONCE_FAILURE);
        return result;
    }

    // Return TRUE if function is already executed successfully
    BOOL IsSuccess() const {return (m_state == ONCE_SUCCESS); }
    // Return TRUE if function is already executed but failed
    BOOL IsFailure() const {return (m_state == ONCE_FAILURE); }
    // Return TRUE if function is already executed
    BOOL IsDone() const {return (IsSuccess() || IsFailure()); }

};

                                                                  /* DO NOT EDIT */
struct OBJECT_DELETER
{
    template<typename T> static VOID Delete(T* p) {delete p;}
};

                                                                  /* DO NOT EDIT */
struct ARRAY_DELETER
{
    template<typename T> static VOID Delete(T* p) {delete [] p;}
};

                                                                  /* DO NOT EDIT */
template<typename T, typename D = OBJECT_DELETER, typename C = INT32> class COUNTED_PTR
{
  public:
    /*!
     * Constructors.
     * WARNING: do not use the same raw pointer to construct more than one
     *          COUNTED_PTR object
     */
    COUNTED_PTR() : m_cptr(0){}
    explicit COUNTED_PTR(T * p) : m_cptr((p != 0) ? (new CPTR(p)) : 0) {}
    COUNTED_PTR(const COUNTED_PTR & r) : m_cptr(r.m_cptr) {AddRef();}

    /*!
     * Destructor.
     */
    ~COUNTED_PTR() {ReleaseRef();}

    /*!
     * Assignment.
     */
    COUNTED_PTR & operator = (const COUNTED_PTR & r)
    {
        r.AddRef();
        ReleaseRef();
        m_cptr = r.m_cptr;
        return *this;
    }

    VOID Reset()
    {
        ReleaseRef();
        m_cptr = 0;
    }

    VOID Reset(T * p)
    {
        if ((m_cptr != 0) && (p == m_cptr->m_ptr)) {return;}
        ReleaseRef();
        m_cptr = ((p != 0) ? (new CPTR(p)) : 0);
    }


    /*!
     * Accessors.
     */
    T * Get()           const   {return ((m_cptr != 0) ? m_cptr->m_ptr : 0);}
    T * operator->()    const   {return Get();}
    T & operator*()     const   {return *(Get());}

    /*!
     * Comparison.
     */
    BOOL operator == (const COUNTED_PTR &  r) const {return (m_cptr == r.m_cptr);}
    BOOL operator != (const COUNTED_PTR &  r) const {return (m_cptr != r.m_cptr);}
    BOOL operator == (const T *  p) const {return (Get() == p);}
    BOOL operator != (const T *  p) const {return (Get() != p);}

  private:

    struct CPTR 
    {
        CPTR(T * p) : m_ptr(p), m_count(1) {}
        T *     m_ptr;
        C       m_count;
    }* m_cptr;

    VOID AddRef() const
    {
        if (m_cptr != 0) {++m_cptr->m_count;}
    }

    VOID ReleaseRef()
    {
        if ((m_cptr != 0) && (--m_cptr->m_count == 0))
        {
            D::Delete(m_cptr->m_ptr);
            delete m_cptr;
            m_cptr = 0;
        }
    }
};

                                                                  /* DO NOT EDIT */
template <typename T> struct OPTIONAL_VALUE
{
    BOOL m_hasValue;    ///< TRUE, if a value has been assigned to this object 
    T m_value;          ///< The value assigned to this object

    /*!
     * Assign the specified value to this object.
     * @param[in]   value  the new value to be assigned to this object
     */
    VOID Set(const T & value)
    {
        m_hasValue = TRUE;
        m_value = value;
    }

    /*!
     * Assign a value to this object or remove the previous assignment.
     * @param[in]   pValue  pointer to the new value to be assigned to this object or
     *                      NULL to remove the previous assignment
     */
    VOID Set(const T * pValue)
    {
        if (pValue != 0)
        {
            Set(*pValue);
        }
        else
        {
            Reset();
        }
    }

    /*!
     * Remove the previous value assignment, if any.
     */
    VOID Reset() {m_hasValue = FALSE;}

    /*!
     * Get the value of this object, if previously assigned.
     * @param[out] pValue   optional pointer to variable that receives the value assigned to 
     *                      this object, if any
     * @return TRUE if a value has been assigned to this object.
     */
    BOOL Get(T * pValue) const
    {
        if (m_hasValue && (pValue != 0)) {*pValue = m_value;}
        return m_hasValue;
    }

    /*!
     * @return TRUE if a value has been assigned to this object.
     */
    BOOL HasValue() const {return m_hasValue;}

    /*!
     * @return reference to the value assigned to this object.
     * The caller must ensure that a value has already been assigned to this object.
     */
    T & Value() {return m_value;}
    const T & Value() const {return m_value;}

    /*!
     * Get a pointer to the value of this object, if the value has been assigned.
     * @return pointer to the value kept in this object or NULL if no value has been 
     *         assigned to this object.
     */
    T * ValuePtr() {return ((m_hasValue) ? &m_value : 0);}
    const T * ValuePtr() const {return ((m_hasValue) ? &m_value : 0);}
};

                                                                  /* DO NOT EDIT */
extern STAT_NORM StatRawMmapBytes;

                                                                  /* DO NOT EDIT */
extern STAT_NORM StatReservedBytes;

                                                                  /* DO NOT EDIT */
extern USIZE GetRawMmapBytes();

                                                                  /* DO NOT EDIT */
extern VOID UpdateRawMmapBytes();

                                                                  /* DO NOT EDIT */

