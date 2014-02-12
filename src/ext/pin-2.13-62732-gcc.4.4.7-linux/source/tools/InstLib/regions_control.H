/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
#ifndef REGIONS_CONTROL_H
#define REGIONS_CONTROL_H

/*! @defgroup CONTROLLER_REGIONS
  @ingroup CONTROLLER
   Controller for "regions" that are specified using instruction counts.
   Use -regions:in regions.csv

   regions.csv files will be an alternative to PinPoints files.
   The main goal is to separate warm-up specification from region description. 
   Another major goal is the simplicity of implementation. 

   Regions are specified using a text file with the records of the form:
   comment,thread-id,region-id,simulation-region-start-icount,simulation-region-end-icount,region-weight

   [ fields after the first six are ignored, so are lines beginning with '#' ]

   Knobs:
   ------
    -regions:in foo.csv : input file
    -regions:warmup N : use N instructions for warmup
    -regions:prolog N : use N instructions for prolog 
    -regions:epilog N : use N instructions for epilog 
    -regions:verbose : for getting informed about regions/events 
    -regions:overlap-ok : allow overlap among multiple regions.
    -regions:out : Output file for regions skipped due to overlap 
        (if overlap is not ok)
        The idea is to feed this file with "-regions:in" to the next 
        invocation of the tool to process skipped regions.
        * If this knob is specified but no regions are skipped, the output
          file will be empty.

    Region processing:
    -----------------
    * The overall regions picture looks as follows:
        WARMUP--PROLOG--(SIM)REGION--EPILOG

        each sub-region has a start and end event. So there are eight 
        events possible (some coinciding e.g. warmup-end and prolog-start)
            CONTROL_WARMUP_START  : Beginning of warmup region
            CONTROL_WARMUP_STOP  : End of warmup region
            CONTROL_PROLOG_START : Beginning of prolog  region
            CONTROL_PROLOG_STOP  : End of prolog region
            CONTROL_START        : Beginning of interval
            CONTROL_STOP         : End of interval
            CONTROL_EPILOG_START : Beginning of epilog region
            CONTROL_EPILOG_STOP  : End of epilog region

    * Using the warmup/prolog/epilog knobs provided to the controller,
       the region boundaries for the four sub-regions above are computed for
       each record in the regions.csv file.

     * If overlap is not allowed (-regions:overlap-ok is zero), any record 
       that has any of its 4 sub-regions overapping with any sub-region of 
       previously processed records will be ignored. If -regions:out knob 
       is specified, the skipped records will be output to a file. The
       idea is to feed the skipped region records to another invocation of the
       tool involved iteratively till all the records are processed.
    
    * As regions are processed, an event list containing  tuples of the form
     (icount, event-type, region-pointer) is created per thread. There is
      one tuple for each of the possible 8 events for four sub-regions.
*/

class IREGION
{
    private:   
        friend class CONTROL_IREGIONS; // allow it to set private fields
        UINT64 _icountStart; // read in
        UINT64 _icountEnd; // read in
        double _weight; // read in
        string _comment; // read in
        UINT32 _rid; // read in
        UINT32 _tid; // read in
        size_t _rno;  // assigned
        UINT64 _warmup_length; // computed + assigned
        UINT64 _prolog_length; // computed + assigned
        UINT64 _epilog_length; // computed + assigned
        UINT32 _weightTimesHundredThousand; // computed + assigned
         // Convert input weight ('double' 0--1)  to  UINT32 to avoid
         // floating point code in the pintools.
    public:
        IREGION()
        {
            _icountStart = 0; 
            _icountEnd = 0; 
            _weight = 0; 
            _rid = 0; 
            _tid = 0 ; 
            _rno = 0; 
            _warmup_length = 0;
            _prolog_length = 0;
            _epilog_length = 0;
            _weightTimesHundredThousand = 0;
        }
        string GetComment() const { return _comment;}
        UINT32 GetRegionId() const { return _rid;}
        UINT64 GetRegionStartICount() const { return _icountStart; }
        UINT64 GetRegionEndICount() const { return _icountEnd; }
        UINT64 GetWarmupLength() const { return _warmup_length; }
        UINT64 GetPrologLength() const { return _prolog_length; }
        UINT64 GetRegionLength() const { return _icountEnd - _icountStart; }
        UINT64 GetEpilogLength() const { return _epilog_length;}
        UINT32 GetWeightTimesHundredThousand() const { return _weightTimesHundredThousand;}
};

class IEVENT
{
    public:
        IEVENT()
        {
            icount = 0;
            type = CONTROL_INVALID;
            iregion = (class IREGION *) NULL;
        }
        static BOOL EventLessThan (const IEVENT & a, const IEVENT & b)
        {
            BOOL retval = false;
            if(a.icount == b.icount)
            {
                switch(b.type)
                {
                    case CONTROL_WARMUP_START : 
                        {
                            if ((a.type == CONTROL_WARMUP_START))
                            {
                                retval =  true;
                            }    
                            break;
                        }
                    case CONTROL_WARMUP_STOP : 
                        {
                            if ((a.type == CONTROL_WARMUP_START) || (a.type == CONTROL_WARMUP_STOP))
                            {
                                retval =  true;
                            }    
                            break;
                        }
                    case CONTROL_PROLOG_START : 
                        {
                            if ((a.type == CONTROL_WARMUP_START) || (a.type == CONTROL_WARMUP_STOP) || (a.type == CONTROL_PROLOG_START))
                            {
                                retval =  true;
                            }    
                            break;
                        }
                    case CONTROL_PROLOG_STOP : 
                        {
                            if ((a.type == CONTROL_WARMUP_START) || (a.type == CONTROL_WARMUP_STOP) || (a.type == CONTROL_PROLOG_START) || (a.type == CONTROL_PROLOG_STOP))
                            {
                                retval =  true;
                            }    
                            break;
                        }
                    case CONTROL_START : 
                        {
                            retval = true;
                            if ((a.type == CONTROL_STOP) || (a.type == CONTROL_EPILOG_START) || (a.type == CONTROL_EPILOG_STOP))
                            {
                                retval =  false;
                            }    
                            break;
                        }
                    case CONTROL_STOP : 
                        {
                            retval = true;
                            if ((a.type == CONTROL_EPILOG_START) || (a.type == CONTROL_EPILOG_STOP))
                            {
                                retval =  false;
                            }    
                            break;
                        }
                    case CONTROL_EPILOG_START :
                        {
                            retval = true;
                            if ((a.type == CONTROL_EPILOG_STOP))
                            {
                                retval =  false;
                            }    
                            break;
                        }
                    case CONTROL_EPILOG_STOP : 
                        {
                            retval =  true;
                            break;
                        }
                    default: retval =  true;
                }
                return retval;
            }
            return a.icount < b.icount;
        }

        static const CHAR * EventToString(CONTROL_EVENT type)
        {
            switch(type)
            {
                case CONTROL_THREADID : return "control-threadid";
                case CONTROL_START : return "region-start";
                case CONTROL_STOP : return "region-end";
                case CONTROL_WARMUP_START : return "warmup-start";
                case CONTROL_WARMUP_STOP : return "warmup-end";
                case CONTROL_PROLOG_START : return "prolog-start";
                case CONTROL_PROLOG_STOP : return "prolog-end";
                case CONTROL_EPILOG_START : return "epilog-start";
                case CONTROL_EPILOG_STOP : return "epilog-end";
                default: return "invalid";
            }
        }

    private:
        friend class CONTROL_IREGIONS; // allow it to set private fields
        UINT64 icount;
        CONTROL_EVENT type;
        class IREGION * iregion;
};

typedef vector<IREGION> IREGION_VECTOR;
typedef vector<IEVENT> IEVENT_VECTOR;

/*! @ingroup CONTROLLER_IREGIONS
*/
class CONTROL_IREGIONS
{
    private:
    static const UINT32 BUFSIZE=2000;  
    static const UINT64 ICOUNT_MAX = (UINT64)(-1);
    struct THREAD_DATA 
    {
        UINT64 _count;
        UINT64 _next_event_count;
        THREADID _tid;
    };

    public:
    CONTROL_IREGIONS(CONTROL_ARGS & control_args)
        : _control_args(control_args),
          _rFileKnob(KNOB_MODE_WRITEONCE,
                     control_args.get_knob_family(),
                     "regions:in",
                     "",
                     "Regions file",
                     control_args.get_prefix()),
         _rWarmupKnob(KNOB_MODE_WRITEONCE,
                      control_args.get_knob_family(),
                      "regions:warmup",
                      "0",
                      "# of instructions in the warm-up region",
                      control_args.get_prefix()),
          _rPrologKnob(KNOB_MODE_WRITEONCE,
                       control_args.get_knob_family(),
                       "regions:prolog",
                       "0",
                       "# of instructions in the prolog region",
                       control_args.get_prefix()),
          _rEpilogKnob(KNOB_MODE_WRITEONCE,
                       control_args.get_knob_family(),
                       "regions:epilog",
                       "0",
                       "# of instructions in the epilog region",
                       control_args.get_prefix()),
          _rVerboseKnob(KNOB_MODE_WRITEONCE,
                        control_args.get_knob_family(),
                        "regions:verbose",
                        "0",
                        "Print information about regions/events ",
                        control_args.get_prefix()),
          _rOverlapOkKnob(KNOB_MODE_WRITEONCE,
                          control_args.get_knob_family(),
                          "regions:overlap-ok",
                          "0",
                          "Allow overlap in regions.",
                          control_args.get_prefix()),
          _rOutFileKnob(KNOB_MODE_WRITEONCE,
                        control_args.get_knob_family(),
                        "regions:out",
                        "",
                        "Output file containing regions skipped due to overlap",
                        control_args.get_prefix())
    {
        _valid = true;
        _maxThreads = ISIMPOINT_MAX_THREADS;
        _regions = new IREGION_VECTOR[_maxThreads];
        _events = new IEVENT_VECTOR[_maxThreads];
        _counts = new THREAD_DATA[_maxThreads];
        memset(_counts, 0, sizeof(_counts[0]) * _maxThreads);
        _nextevent = new UINT32[_maxThreads];
        memset(_nextevent, 0, sizeof(_nextevent[0]) * _maxThreads);
        _xcount = 0;
        _last_triggered_region = new IREGION * [_maxThreads];
        memset(_last_triggered_region , 0, sizeof(_last_triggered_region[0]) * _maxThreads);
    }

    /*! @ingroup CONTROLLER_IREGIONS
      Activate the controller if the -regions knob is provided
      @return 1 if controller can start an interval, otherwise 0
    */
    INT32 Activate(CONTROL_HANDLER ch, VOID * val, BOOL passContext)
    {
        if (strcmp(_rFileKnob.Value().c_str(),"") == 0)
        {
            return 0;
        }
        _passContext = passContext;
        _active = true;
        PIN_AddThreadStartFunction(ThreadStart, this);

        if (!strcmp(_rOutFileKnob.Value().c_str(),"") == 0)
        {
            xfile.open(_rOutFileKnob.Value().c_str());
            if (!xfile.is_open())
            {
                cerr << "Could not open output  file " << _rOutFileKnob.Value().c_str() << endl;
                exit(-1);
            }
        }
        if (_rVerboseKnob) 
        {
            cerr << "AFUNPTR(AdvanceIf) " << hex <<  reinterpret_cast<ADDRINT>(this->AdvanceIf) << endl;
            cerr << "AFUNPTR(AdvanceThen) " << hex <<  reinterpret_cast<ADDRINT>(this->AdvanceThen) << endl;
        }

        ReadRegionsFile();

        ProcessRegions();

        if(_rVerboseKnob) PrintRegions();

        ProcessEvents();

        if(_rVerboseKnob) PrintEvents();

        _controlHandler = ch;
        _controlVal = val;

        _ScratchReg = PIN_ClaimToolRegister();
        return 1;
    }
    bool IsActive() const { return _active; };
    IREGION * LastTriggeredRegion(THREADID tid) const { return _last_triggered_region[tid];}

    private:
    CONTROL_ARGS _control_args;
    bool _valid;

    UINT32 StringToUINT32(string &s, const char * name)
    {
       char* end = 0 ;
       INT32 retval = strtoul(s.c_str(), &end, 10); // decimal expected 
       ASSERT((*end == 0), "ERROR reading " + name + " from " + s);
       ASSERT((retval >=0 ), name + " (" + s  + ") must be positive " );
       return (UINT32)retval;
    }

    UINT64 StringToUINT64(string &s, const char * name)
    {
       char* end = 0 ;
#if defined(PIN_GNU_COMPATIBLE)
       INT64 retval = strtoull(s.c_str(), &end, 10); // decimal expected 
#elif defined(PIN_MS_COMPATIBLE)
       INT64 retval =  _strtoi64(s.c_str(),&end, 10); // decimal expected 
#endif
       ASSERT((*end == 0), "ERROR reading " + name + " from " + s);
       ASSERT((retval >=0 ), name + " (" + s  + ") must be positive " );
       return (UINT64)retval;
    }

    double StringToDouble(string &s, const char * name )
    {
       char* end = 0 ;
       double retval = strtod(s.c_str(), &end); 
       ASSERT((*end == 0), "ERROR reading " + name + " from " + s);
       return retval;
    }

    VOID ReadRegionsFile()
    {
        string filename = _rFileKnob.Value().c_str();

        ifstream rfile(filename.c_str());

        if (!rfile.is_open())
        {
            cerr << "Could not open regions file " << _rFileKnob.Value().c_str() << endl;
            exit(-1);
        }

        UINT32 lineNum = 0;
        UINT32 recordNum = 0;
        IREGION * region = 0;
        while(true)
        {
            if( rfile.eof() )
            {
                break;
            }

            CHAR record[BUFSIZE+1];
            CHAR urecord[BUFSIZE+1];
            string field;

            double t_weight;
            string t_comment;
            INT32 t_rid;
            INT32 t_tid;
            UINT64 t_icountStart;
            UINT64 t_icountEnd;

            rfile.getline(record, BUFSIZE);
            lineNum++;

            if(strlen(record)==0) continue;

            // Create a temporary record with lower case letters
            for(UINT32 i=0; i <= strlen(record); i++) urecord[i] = tolower(record[i]); 

            // first word "comment" : this is the header
            if(strncmp(urecord,"comment",7)==0) continue;

            // first letter '#' : this is a comment 
            if(urecord[0]=='#') continue;

            istringstream s(record);
            recordNum++;


            // cerr << "Record # " << recordNum << endl;
            field.clear();
            getline(s, field, ',');
            ASSERT(!field.empty(), "Empty comment field.");
            t_comment = field;
            // cerr << "Comment " << t_comment << endl;

            field.clear();
            getline(s, field, ',');
            ASSERT(!field.empty(), "Empty thread-id field.");
            t_tid = StringToUINT32(field, "thread-id");
            // cerr << "thread-id " << t_tid << endl;

            field.clear();
            getline(s, field, ',');
            ASSERT(!field.empty(), "Empty region-id field.");
            t_rid = StringToUINT32(field, "region-id");
            //cerr << "region-id " << t_rid << endl;

            field.clear();
            getline(s, field, ',');
            ASSERT(!field.empty(), "Empty start-icount field.");
            istringstream sistart(field);
            t_icountStart  = StringToUINT64(field, "simulation-region-start-icount");
            //cerr << "start-icount " << t_icountStart << endl;

            field.clear();
            getline(s, field, ',');
            ASSERT(!field.empty(), "Empty end-icount field.");
            t_icountEnd  = StringToUINT64(field, "simulation-region-end-icount");
            //cerr << "end-icount " << siend << endl;

            ASSERT(t_icountEnd > t_icountStart , "simulation-region-start-icount:"  + decstr(t_icountStart)  + " is not smaller than simulation-region-end-icount:" + decstr(t_icountEnd) );

            field.clear();
            getline(s, field, ',');
            ASSERT(!field.empty(), "Empty region-weight field.");
            t_weight  = StringToDouble(field, "region-weight");
            ASSERT((t_weight >= 0), "region-weight (" + field + ") must be positive" );
            ASSERT((t_weight <= 1), "region-weight (" + field + ") must be between 0 and 1" );
            //cerr << "region-weight" << t_weight << endl;

            string tail;

            s >> tail;

            if(!tail.empty())
                cerr << "WARNING: regions:in file '" << filename << "' line number " << dec << lineNum << ": ignoring fields : " << tail  << endl;

            _regions[t_tid].push_back(IREGION());
            region = & _regions[t_tid].back();
            region->_comment = t_comment;
            region->_rno = _regions[t_tid].size();
            region->_rid = t_rid;
            region->_tid = t_tid;
            region->_weight = t_weight;
            region->_weightTimesHundredThousand = (UINT32)(t_weight*100000);
            region->_icountStart = t_icountStart;
            region->_icountEnd = t_icountEnd;
        }
        rfile.close();
    }

    VOID PrintRegions()
    {
        for(UINT32 tid=0; tid < _maxThreads; tid++)
        {
            for ( UINT32 i = 0; i < _regions[tid].size(); i++ )
            {
                IREGION * region = & _regions[tid][i];
                cerr << "rno: " << region->_rno
                << " comment " << region->_comment
                << " rid " << region->_rid
                << " tid " << region->_tid
                << " weight " << region->_weight
                << " weightTimesHundredThousand " << region->_weightTimesHundredThousand
                << " icountStart " << region->_icountStart
                << " icountEnd " << region->_icountEnd
                << " warmup_length " << region->_warmup_length
                << " prolog_length " << region->_prolog_length
                << " region_length " << region->GetRegionLength()
                << " epilog_length " << region->_epilog_length
                << endl;
            }
        }

    }


    BOOL RegionHasOverlap(UINT32 tid, UINT64 span_begin, UINT64 span_end)
    {
        if(_rOverlapOkKnob) return false;
        for ( UINT32 i = 0; i < _events[tid].size(); i++ )
        {
                IEVENT * event = & _events[tid][i];
                if((span_begin <= event->icount) && (span_end >= event->icount))
                {
                    if (xfile.is_open())
                    {
                        if(_xcount==0) xfile << "comment,thread-id,region-id,simulation-region-start-icount,simulation-region-end-icount,region-weight" << endl;
                        xfile << "#expanded region " << dec << span_begin << ":" << dec << span_end << " overlapped with event " << IEVENT::EventToString(event->type) << " at " << dec << event->icount << endl; 
                        _xcount++;
                    }
                    return true;
                }
        }
        return false;
    }

    VOID PrintEvents()
    {
        cerr << "Events:" << endl;
        for(UINT32 tid=0; tid < _maxThreads; tid++)
        {
            for ( UINT32 i = 0; i < _events[tid].size(); i++ )
            {
                IEVENT * event = & _events[tid][i];
                cerr << "tid " << dec << tid << " event " << IEVENT::EventToString(event->type) << " at " << dec << event->icount << endl; 
            }
        }
    }

    VOID ProcessEvents()
    {
        for(UINT32 tid=0; tid < _maxThreads; tid++)
        {
            sort(_events[tid].begin(), _events[tid].end(), IEVENT::EventLessThan);
        }
        TRACE_AddInstrumentFunction(Trace, this);
    }

    VOID InsertOneEvent(UINT32 tid, UINT64 icount, CONTROL_EVENT type, IREGION * region)
    {
        IEVENT * event = 0;
        _events[tid].push_back(IEVENT());
        event = & _events[tid].back();

        event->icount = icount;
        event->type = type;
        event->iregion = region;
    }

    VOID ProcessRegions()
    {
        for(UINT32 tid=0; tid < _maxThreads; tid++)
        {
            for ( UINT32 i = 0; i < _regions[tid].size(); i++ )
            {
                IREGION * region = & _regions[tid][i];
                UINT64 span_begin = 0;
                UINT64 span_end = 0;

                // cerr << "rno: " << region->_rno
                // << " comment " << region->_comment
                // << " icountStart " << region->_icountStart
                // << " icountEnd " << region->_icountEnd
                // << endl;

                INT64 wstart = region->_icountStart - _rPrologKnob - _rWarmupKnob;
                INT64 wend = region->_icountStart - _rPrologKnob;
                INT64 pstart = wend;
                INT64 pend = region->_icountStart;
                INT64 rstart = pend;
                INT64 estart = region->_icountEnd;
                INT64 rend = estart;
                INT64 eend = region->_icountEnd + _rEpilogKnob;

                if(_rWarmupKnob && (wstart > 0))
                {
                    // cerr << "WarmupStart " << dec << wstart << endl;
                    // cerr << "WarmupEnd " << dec << wend << endl;
                    span_begin = wstart;
                }

                if(_rPrologKnob && (pstart > 0))
                {
                    // cerr << "PrologStart " << dec << pstart << endl;
                    // cerr << "PrologEnd " << dec << pend << endl;
                    if(!span_begin) span_begin = pstart;
                }

                if(!span_begin) span_begin = rstart;
                // cerr << "RegionStart " << dec << rstart << endl;
                // cerr << "RegionEnd " << dec << rend << endl;
                span_end = rend;

                if(_rEpilogKnob && (eend > estart))
                {
                    // cerr << "EpilogStart " << dec << estart << endl;
                    // cerr << "EpilogEnd " << dec << eend << endl;
                    span_end = eend;
                }

                // cerr << "span_begin " << dec << span_begin << endl;
                // cerr << "span_end " << dec << span_end << endl;

                if(RegionHasOverlap(tid, span_begin, span_end))
                {
                    // cerr << "Region has overlap" << endl;
                    if (xfile.is_open())
                    {
                        xfile << region->_comment
                            << "," << region->_tid
                            << "," << region->_rid
                            << "," << region->_icountStart
                            << "," << region->_icountEnd
                            << "," << region->_weight
                            << endl;
                    }
                }
                else
                {
                    if(_rWarmupKnob && (wstart > 0))
                    {
                        InsertOneEvent(tid, wstart, CONTROL_WARMUP_START, region);
                        InsertOneEvent(tid, wend, CONTROL_WARMUP_STOP, region);
                        region->_warmup_length = wend - wstart;
                    }
                    if(_rPrologKnob && (pstart > 0))
                    {
                        InsertOneEvent(tid, pstart, CONTROL_PROLOG_START, region);
                        InsertOneEvent(tid, pend, CONTROL_PROLOG_STOP, region);
                        region->_prolog_length = pend - pstart;
                    }
                    InsertOneEvent(tid, rstart, CONTROL_START, region);
                    InsertOneEvent(tid, rend, CONTROL_STOP, region);
                    if(_rEpilogKnob && (eend > estart))
                    {
                        InsertOneEvent(tid, estart, CONTROL_EPILOG_START, region);
                        InsertOneEvent(tid, eend, CONTROL_EPILOG_STOP, region);
                        region->_epilog_length = eend - estart;
                    }
                }
            }
        }

        if (xfile.is_open())
        {
            if(_xcount) xfile << "#eof" << endl;
            xfile.close();
        }
    }

    // Use per-thread _ScratchReg to hold a pointer the thread's data
    static  VOID ThreadStart(THREADID tid, CONTEXT *ctxt, INT32 flags, VOID *v)
    {

        CONTROL_IREGIONS * cr = static_cast<CONTROL_IREGIONS *>(v);
        THREAD_DATA *td = new THREAD_DATA;
        td->_count = 0;
        if(cr->_events[tid].size() == 0)
        {
            td->_next_event_count = ICOUNT_MAX;
        }
        else
        {
            td->_next_event_count = cr->_events[tid][0].icount;
        }
        td->_tid = tid;
        PIN_SetContextReg(ctxt, cr->_ScratchReg, (ADDRINT)td);
    }

    static VOID Trace(TRACE trace, VOID * cregion)
    {
        CONTROL_IREGIONS * cr = static_cast<CONTROL_IREGIONS *>(cregion);
        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            CONTROL_ARGS * ca = &cr->_control_args;
            
            INS_InsertIfCall(BBL_InsHead(bbl), IPOINT_BEFORE,
                             AFUNPTR(AdvanceIf),
                             IARG_CALL_ORDER, ca->get_instrument_order(),
                             IARG_FAST_ANALYSIS_CALL,
                             IARG_REG_VALUE, cr->_ScratchReg, 
                             IARG_UINT32, BBL_NumIns(bbl), 
                             IARG_END);
            
            if (cr->_passContext)
            {
                INS_InsertThenCall(BBL_InsHead(bbl), IPOINT_BEFORE,
                                   AFUNPTR(AdvanceThen),
                                   IARG_CALL_ORDER, ca->get_instrument_order(),
                                   IARG_FAST_ANALYSIS_CALL,
                                   IARG_ADDRINT, cregion, 
                                   IARG_REG_VALUE, cr->_ScratchReg, 
                                   IARG_CONTEXT, 
                                   IARG_INST_PTR,
                                   IARG_END);
            }
            else 
            {
                INS_InsertThenCall(BBL_InsHead(bbl), IPOINT_BEFORE,
                                   AFUNPTR(AdvanceThen), 
                                   IARG_CALL_ORDER, ca->get_instrument_order(),
                                   IARG_FAST_ANALYSIS_CALL,
                                   IARG_ADDRINT, cregion, 
                                   IARG_REG_VALUE, cr->_ScratchReg,
                                   // next pass a null instead as the context
                                   IARG_ADDRINT, static_cast<ADDRINT>(0),
                                   IARG_INST_PTR, 
                                   IARG_END);
            }
        }
    }

    static ADDRINT PIN_FAST_ANALYSIS_CALL AdvanceIf(THREAD_DATA * td, INT32 c)
    {
        td->_count += c;
        return ( td->_count >= td->_next_event_count);
    }

    static VOID PIN_FAST_ANALYSIS_CALL AdvanceThen(CONTROL_IREGIONS * cr, 
                                                   THREAD_DATA * td, 
                                                   CONTEXT * ctxt, 
                                                   VOID * ip)
    {
        THREADID tid = td->_tid;
        UINT32 e = cr->_nextevent[tid];
        UINT32 i = 0;
        // There could be multiple events getting triggered at the 
        // same icount; e.g. warmup-end and prolog-start
        for ( i = e; i < cr->_events[tid].size(); i++ )
        {
            if(td->_count < cr->_events[tid][i].icount) break;
            IEVENT * event = & cr->_events[tid][i];
            // cerr << "TRIGGERED: tid " << dec << tid << " event " << IEVENT::EventToString(event->type) << " at " << dec << event->icount << endl; 
            cr->_last_triggered_region[tid] = event->iregion;
            cr->_controlHandler(event->type, cr->_controlVal, ctxt, ip, tid);
        }
        cr->_nextevent[tid] = i;
        if(cr->_nextevent[tid] >= cr->_events[tid].size())
        {
            td->_next_event_count = ICOUNT_MAX;
        }
        else
        {
            td->_next_event_count = cr->_events[tid][i].icount;
        }

    }

    KNOB<string> _rFileKnob;
    KNOB<UINT64> _rWarmupKnob;
    KNOB<UINT64> _rPrologKnob;
    KNOB<UINT64> _rEpilogKnob;
    KNOB<BOOL> _rVerboseKnob;
    KNOB<BOOL> _rOverlapOkKnob;
    KNOB<string> _rOutFileKnob;
    IREGION_VECTOR *_regions; // per thread vector containing region info
    IEVENT_VECTOR *_events;  // per thread list (sorted by icount) of events
    CONTROL_HANDLER _controlHandler;
    VOID * _controlVal;
    bool _active;
    THREADID _maxThreads;
    ofstream xfile;  // for writing out regions excluded due to overlap
    THREAD_DATA *_counts; // per thread padded counter
    UINT32 * _nextevent;  // per thread index for the next expected event 
    UINT32 _xcount; // number of regions excluded
    IREGION ** _last_triggered_region;
    REG _ScratchReg;
    BOOL _passContext;
};
#endif
