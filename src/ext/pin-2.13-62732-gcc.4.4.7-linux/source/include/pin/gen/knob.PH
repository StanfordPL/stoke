//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|TRACE_VERSION_API|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|PIN_SYSCALL_API|WINDOWS_SYSCALL_API_UNDOC|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|CODECACHE_API|CHILD_PROCESS_API|UTILS|MISC|CONTEXT_API|PHYSICAL_CONTEXT_API|EXCEPTION_API|APPDEBUG_API|STOPPED_THREAD_API|BUFFER_API|PROTO|INST_ARGS|DEPRECATED_PIN_API|INTERNAL_EXCEPTION_PRIVATE_UNDOCUMENTED|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|BBL_BASIC|ROGUE_BASIC_API|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|UNDOCUMENTED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef enum
{
    KNOB_MODE_INVALID,
    KNOB_MODE_COMMENT,    ///< comment for knob family
    KNOB_MODE_WRITEONCE,  ///< single value, single write
    KNOB_MODE_OVERWRITE,  ///< single value, overwrite 
    KNOB_MODE_ACCUMULATE, ///< single value, update 
    KNOB_MODE_APPEND,     ///< list of values, append
    KNOB_MODE_LAST
} KNOB_MODE;

                                                                  /* DO NOT EDIT */
template<class TYPE> class KNOBVALUE
{
  private:
    TYPE _value;             ///< typed representation
    string _value_string;    ///< string representation
    KNOBVALUE<TYPE> * _next; ///< list pointer

  public:
    // conversion methods
    STATIC TYPE FromString(const string & strvalue);
    STATIC string ToString(const TYPE & value, const string & origString)
    {
        return origString;
    }

    //acumulation method
    STATIC TYPE Accumulate(TYPE & lVal, const TYPE & rVal)
    {
        return (lVal += rVal);
    }

    // type name accessor
    STATIC const string Type();

    //
    // constructors/destructors
    //
    KNOBVALUE() : _next(NULL) {}

    //
    // accessors
    //
    const TYPE & Value() const { return _value; }
    const string & ValueString() const { return _value_string; }

    KNOBVALUE * Next() const { return _next; }

    //
    // modifiers
    //
    VOID Overwrite(const string & valstring)
    {
        _value = FromString(valstring);
        _value_string = ToString(_value, valstring);
    }
    VOID Accumulate(const string & valstring)
    {
        Accumulate(_value, FromString(valstring));
        _value_string = ToString(_value, valstring);
    }
    VOID Append(KNOBVALUE * next)
    {
        ASSERTX(_next == NULL);
        _next = next;
    }
};

                                                                  /* DO NOT EDIT */
template<> inline BOOL KNOBVALUE<BOOL>::Accumulate(BOOL & lVal, 
                                                                     const BOOL & rVal)
{
    return (lVal = (lVal || rVal));
}

                                                                  /* DO NOT EDIT */
template<class TYPE> class KNOBVALUE_LIST
{
  private:
    typedef KNOBVALUE<TYPE> listnode;
    listnode _first;  ///< inline first node (for scalar value speed)
    UINT32 _numNodes; ///< number of nodes in list

  public:
    //
    // constructors/destructors
    //
    KNOBVALUE_LIST(const string & valstring, BOOL hasDefault) : _numNodes(0)
    {
        if (hasDefault)
        {
            Append(valstring);
        }
    }
    ~KNOBVALUE_LIST()
    {
        listnode * next;
        for (listnode * node = _first.Next(); node; node = next)
        {
            next = node->Next();
            delete node;
        }
    }

    //
    // accessors
    //
  private:
    // we need const and non-const versions for type checking, but
    // only want a single imlementation, thus the ugly const_cast
    const listnode * Node(const UINT32 index) const { return GetNode(index); }
    listnode * Node(const UINT32 index) { return const_cast<listnode *>(GetNode(index)); }
    const listnode * GetNode(const UINT32 index) const
    {
        ASSERT(_numNodes > index, "access index out of range");

        const listnode * node = & _first;
        for (UINT32 i = index; i > 0; i--)
        {
            node = node->Next();
            ASSERTX(node != NULL);
        }

        return node;
    }

  public:
    UINT32 NumberOfValues() const { return _numNodes; }
    const string & ValueString(const UINT32 index) const { return Node(index)->ValueString(); }
    const TYPE & Value(const UINT32 index) const { return Node(index)->Value(); }
    const TYPE & Value() const { return _first.Value(); }
    const string & ValueString() const { return _first.ValueString(); }

    //
    // modifiers
    //
    VOID Overwrite(const string & valstring) { _first.Overwrite(valstring); }
    VOID Accumulate(const string & valstring) { _first.Accumulate(valstring); }
    VOID Append(const string & valstring)
    {
        listnode * node;
        if (_numNodes == 0)
        {
            node = & _first;
        }
        else
        {
            node = new listnode;
            listnode * const last = Node(_numNodes - 1);
            last->Append(node);
        }
        node->Overwrite(valstring);
        _numNodes++;
    }
};

                                                                  /* DO NOT EDIT */
class KNOB_BASE
{
  private:
    STATIC KNOB_BASE *_knob_list;

  protected:
    KNOB_BASE   *_next;
    const string _family;
    const string _name;
    const string _purpose;
    const string _default_value;
    const KNOB_MODE _mode;
    BOOL  _disabled;
    INT32 _nreads;
    INT32 _nwrites;

  public:
    //
    // constructors/destructors
    //
    // basic constructor
    KNOB_BASE(const string & myprefix, const string & myname, const string & myfamily, const string & mydefault,
              const string & mypurpose, KNOB_MODE mymode = KNOB_MODE_WRITEONCE);

    // virtual destructor required due to virtual functions present
    virtual ~KNOB_BASE() {}

    //
    // accessors
    //
    virtual const string Type() = 0; // subclass needs to implement this

    KNOB_MODE Mode() const {return _mode;}

    const string & Family() const {return _family;}

    const string & Name() const {return _name;}

    string Cmd() const { return ("-" + _name); }

    BOOL Enabled() const {return !_disabled;}

    // 
    STATIC VOID CheckAllKnobs(BOOL allowDashes = FALSE);

    // returns number of options registered with the class
    STATIC UINT32 NumberOfKnobs();

    // disable all options with the given family
    STATIC VOID DisableKnobFamily(const string & myfamily);

    // enable all options with the given family
    STATIC VOID EnableKnobFamily(const string & myfamily);

    // disable single options
    STATIC VOID DisableKnob(const string & myname);

    // enable single options
    STATIC VOID EnableKnob(const string & myname);

    // print textual summary of all options for help page
    STATIC string StringKnobSummary();

    // print textual summary of all options for analysis/debugging
    STATIC string StringLongAll();

    STATIC KNOB_BASE * FindKnob(const string & name);

    STATIC KNOB_BASE * FindFamily(const string & name);

    STATIC KNOB_BASE * FindEnabledKnob(const string & name);

    int Compare(const KNOB_BASE & k2) const;

    // get string representation of value number index
    virtual const string & ValueString(const UINT32 index) const = 0;

    // get number of values
    virtual UINT32 NumberOfValues() const = 0;

    //
    // modifiers
    //
    // add a new value
    virtual VOID AddValue(const string & valstring) = 0;
};

                                                                  /* DO NOT EDIT */
template<class TYPE> class KNOB : public KNOB_BASE
{
  private:
    typedef KNOBVALUE_LIST<TYPE> valuelist;
    valuelist _value_list;

  public:
    KNOB(KNOB_MODE mymode, const string & myfamily, const string & myname,
         const string & mydefault, const string & mypurpose, const string & myprefix = "")
    :
        KNOB_BASE(myprefix, myname, myfamily, mydefault, mypurpose, mymode),
        _value_list(mydefault, (mymode != KNOB_MODE_APPEND))
    {}

    //
    // modifiers
    //
    // add a new value
    VOID AddValue(const string & valstring)
    {
        switch (_mode)
        {
          case KNOB_MODE_WRITEONCE:
            // Ignore exact-duplicate values
            ASSERT(_nwrites == 0 || _value_list.ValueString() == valstring ,
                   "trying to overwrite write-once knob '" + _name + "'");

            // intentional fall-through
          case KNOB_MODE_OVERWRITE:
            _value_list.Overwrite(valstring);
            break;

          case KNOB_MODE_ACCUMULATE:
            _value_list.Accumulate(valstring);
            break;

          case KNOB_MODE_APPEND:
            _value_list.Append(valstring);
            break;

          default:
            ASSERT(false,"unknown mode " + decstr(static_cast<UINT32>(_mode)) + " for knob '" + _name + "'");
        }

        _nwrites++;
    }

    //
    // accessors
    //
    // implementation of virtual Type string accessor
    const string Type() { return KNOBVALUE<TYPE>::Type(); }
    // fast accessor for first element
    const TYPE & Value() const { /* too slow _nreads++; */ return _value_list.Value(); }
    const string & ValueString() const { /* too slow _nreads++; */ return _value_list.ValueString(); }
    // implicit conversion from KNOB<TYPE> to (rvalue) const TYPE
    operator TYPE() const { return Value(); }
    // accessor for any elements in value list
    const TYPE & Value(const UINT32 index) { _nreads++; return _value_list.Value(index); }
    const string & ValueString(const UINT32 index) const { return _value_list.ValueString(index); }
    UINT32 NumberOfValues() const { return _value_list.NumberOfValues(); }
};

                                                                  /* DO NOT EDIT */
class KNOB_COMMENT : public KNOB<BOOL>
{

  public:
    KNOB_COMMENT( const string & family, const string & purpose) :
        KNOB<BOOL>(KNOB_MODE_COMMENT,family,"","",purpose)
    {}

};

                                                                  /* DO NOT EDIT */
class ADDRESS_RANGE
{
  public:
    ADDRESS_RANGE(ADDRINT low, ADDRINT high)
    {
        _low = low;
        _high = high;
    }
    
    ADDRESS_RANGE()
    {
        _low = 0;
        _high = 0;
    }
    
    ADDRINT _low;
    ADDRINT _high;

    ADDRESS_RANGE & operator+= (const ADDRESS_RANGE & right)
    {
        return *this;
    }

    string String() const
    {
        return hexstr(_low) + ":" + hexstr(_high);
    }

    BOOL Valid() const
    {
        return (_high - _low) == 0 ? FALSE:TRUE;
    }

    ADDRINT Size() const
    {
        return _high - _low;
    }
};

                                                                  /* DO NOT EDIT */
extern KNOB<BOOL> KnobSlowAsserts;

                                                                  /* DO NOT EDIT */

