#!/usr/intel/pkgs/python/2.4/bin/python2.4
#!/usr/bin/python




"""
usage code_cache_gui.py

This GUI was designed to work with the event_trace pintool.
When started it opens the file "ctrace.out" for reading
cache trace data. (event_trace opens this very same file by default and
it is best to make it a named pipe, i.e. "mkfifo ctrace.out.)
It is possible to specify another file using the "-f" option.

Tracing does not start until the "tracing button" in the lower left corner is hit.

The main window does not update certain columns automatically, hit the reload
button to do this.

It is possible to dump the current content of the main window into file.
This file can then be loaded using the "-f" option.


"""

import sys

sys.path.append("/proj/vssad/users/rmmuth/lib/python2.4/site-packages/gtk-2.0")

import gtk
import gobject
import os
import getopt
import re
#import math
import string
import bisect

#######################################################
## 
#######################################################
class Trace:

    Traces = {}       # maps trace id to trace data
    CodeCache = []    # maps code cache address to trace data 
    Counter = {}
    
    def __init__(self,id,type,iaddr,caddr,nbbl,nins,codesize,stubsize,rtn):
        assert( not self.__class__.Traces.has_key(id) )
        self.__class__.Traces[id] = self
        self.__class__.CodeCache.append( (caddr,self) )
        self.__class__.Counter[iaddr] = 1 + self.__class__.Counter.get(iaddr,0) 
        
                
        self._id = id
        self._type = type

        self._iaddr = iaddr
        self._caddr = caddr
        
        self._nbbl = nbbl
        self._nins = nins 

        self._hibranch = -1
        
        self._codesize = codesize
        self._stubsize = stubsize

        self._rtn = rtn
        self._in = []
        self._out = []
        return


    def trace2markup(self):
        return "%s[0x%08x, %d, %d]  (0x%08x,%s)  i:%s  o:%s" % (self._type,self._caddr,self._codesize, self._hibranch,
                                                                 self._iaddr,self._rtn,
                                                                 stringify_trace_set(self._in),
                                                                 stringify_trace_set(self._out))

    def trace2text(self):
        """ used for dumping trace into file, FIXME needs to have it own format"""
        return "@%sTRACE %d 0x%08x 0x%08x %d %d %d %d %s\n" % ( self._type, self._id, self._iaddr, self._caddr,
                                                                self._nbbl, self._nins, self._codesize, self._stubsize,
                                                                self._rtn)
    def trace2link(self):
        s = ""
        for l in self._out:
            s+= "@LINK  0x%08x 0x%08x\n" % (self._caddr + max(0,self._hibranch), l._caddr)
        return s
        
    def contains_address(self,address):
        return self._caddr <= address < self._caddr + self._codesize

    
    def trace2model(self):
        return (self._id, self._type, "0x%08x" % self._iaddr, self.__class__.Counter.get(self._iaddr),
                "0x%08x" % self._caddr, self._nbbl,
                self._nins, self._codesize, self._hibranch, self._stubsize, self._rtn,
                stringify_trace_set(self._in), stringify_trace_set(self._out) )

    def add_edge(self,trace,branch_offset):
        if branch_offset > trace._hibranch: trace._hibranch = branch_offset
        self._in.append(trace)
        trace._out.append(self)
        return
    
def FindTraceById(id):
    return Trace.Traces.get(id,None)

def FindTraceByAddress(address):
    print "looking for 0x%x" % address
    index = -1 + bisect.bisect_left(Trace.CodeCache, (address,1) )  # the "1" is a hack to make the binary search work
    print "found ",index
    return Trace.CodeCache[index][1]
                
def stringify_trace_set(set):
    return "{" + string.join( [str(i._id) for i in set],",") + "}"

def DumpTraceFile(filename):
    out = file(filename,"w+")
    for (addr, trace) in Trace.CodeCache:
        out.write( trace.trace2text() )
    for (addr, trace) in Trace.CodeCache:
        out.write( trace.trace2link() )
    out.close()
    return
            
      
#######################################################
## 
#######################################################

class CodeCacheWidget:

    DisplayModes = ['detailed','plain']

    TableRows = [
        (gobject.TYPE_UINT,"id"),
        (gobject.TYPE_STRING,"type"),
        #                          gobject.TYPE_UINT64,
        #                          gobject.TYPE_UINT64,
        (gobject.TYPE_STRING,"orig addr"),
        (gobject.TYPE_UINT, "#n"),        
        (gobject.TYPE_STRING,"cache addr"), 
        (gobject.TYPE_UINT, "#bbl"),
        (gobject.TYPE_UINT, "#ins"),
        (gobject.TYPE_UINT, "code"),
        (gobject.TYPE_INT, "hibr"),
        (gobject.TYPE_UINT, "stub"),
        (gobject.TYPE_STRING,"routine"),
        (gobject.TYPE_STRING,"in-edges"),
        (gobject.TYPE_STRING,"out-edges")]

    def create_list_widget(self):
        window = gtk.ScrolledWindow()
        window.set_policy(gtk.POLICY_AUTOMATIC,gtk.POLICY_AUTOMATIC)
        window.set_shadow_type (gtk.SHADOW_ETCHED_IN);
        window.show() 
        
        view = gtk.TreeView(self._model)

        for (n,(obj,title)) in enumerate(CodeCacheWidget.TableRows): 
            renderer = gtk.CellRendererText()
            if obj == gobject.TYPE_UINT or obj == gobject.TYPE_INT:
                renderer.set_property('xalign', 1.0)

            column = gtk.TreeViewColumn(title, renderer, text=n)
            column.set_resizable(1)
            view.append_column(column)
            column.set_sort_column_id(n)


        view.set_search_column(1);

        view.show()
        window.add(view)
        return window
 
    def __init__(self):

        # widgets
        self._widget = None
        self._model = None
        self._status = None
        self._label = None

        # other
        self._NumId = 0
        self._NumBbl = 0
        self._NumIns = 0
        self._SizeCode = 0
        self._SizeStub = 0
        self._SizeX = 0
        self._breakpoints = []
        
        #
        vbox = gtk.VBox()
        vbox.show()
        self._widget = vbox     #<<<<<<<<<<<<<

        ############################################################################
        ##  title row
        ############################################################################
        
        hbox = gtk.HBox()
        hbox.show()
        vbox.pack_start(hbox,0,0)
        
        label = gtk.Label()
        label.set_markup("<b>ha!</b>")
        label.show()
        self._status = label     #<<<<<<<<<<<<<


        hbox.pack_start(label,0,0)

        def button_reload(widget):
            self._model.clear()
            if self._mode == "plain":
                for (addr,trace) in Trace.CodeCache:
                    if trace._type == "X": continue
                    self.add_trace(trace)

            elif self._mode == "detailed":
                for (addr,trace) in Trace.CodeCache:
                    self.add_trace(trace)
            else:
                assert(0)
            self.update_status()
            return

        button = gtk.Button("Refresh Display")
        button.show()
        hbox.pack_end(button,0,0)
        button.connect("clicked", button_reload)

        self._mode = None
        
        def combobox_changed(widget):
            self._mode = widget.get_text()
            return

        combo = gtk.Combo()
        combo.set_use_arrows_always(1)
#        combo.disable_activate()
        combo.entry.set_editable(0)
        combo.set_popdown_strings(CodeCacheWidget.DisplayModes)
        combo.entry.connect("changed", combobox_changed)
        combo.show()

        combobox_changed(combo.entry)
        
        hbox.pack_end(combo,0,0,0)
        
        ############################################################################
        ##  table
        ############################################################################
        
        self._model = apply(gtk.ListStore,[obj for (obj,title) in CodeCacheWidget.TableRows])

        if 1:
            window = self.create_list_widget()
            vbox.pack_start(window)
        else:
            hpane = gtk.HPaned()
            hpane.show()
            vbox.pack_start(hpane)
            window = self.create_list_widget()
            hpane.add1(window)
            window = self.create_list_widget()
            hpane.add2(window)

        ############################################################################
        ##  individual trace
        ############################################################################

        frame = gtk.Frame("Individual Trace")
#        frame.set_shadow_type( gtk.SHADOW_ETCHED_IN)
        frame.show()
        vbox.pack_start(frame,0,0)

        hbox = gtk.HBox()
        hbox.show()
        frame.add(hbox)

        button = gtk.Button(" Flush ")
        button.show()
        hbox.pack_end(button,0,0)
        
        label = gtk.Label(" id ")
        label.show()
        hbox.pack_start(label,0,0)
        
        adjustment = gtk.Adjustment(value=0, lower=0, upper=1000000000, step_incr=1, page_incr=100, page_size=100)
        spinbutton = gtk.SpinButton(adjustment, climb_rate=1.0, digits=0)
        spinbutton.show()
        hbox.pack_start(spinbutton,0,0)

        label = gtk.Label()
        label.set_markup("")
        label.show()
        self._label = label     #<<<<<<<<<<<<<
        hbox.pack_start(label,0,0)

        def id_change(widget):
            id = int(widget.get_value())
            trace = FindTraceById(id)
            self._label.set_markup( trace and trace.trace2markup() or "<b>trace not found</b>")
            return

        adjustment.connect("value_changed", id_change)
        adjustment.set_value(0)

        ############################################################################
        ##  action
        ############################################################################

        frame = gtk.Frame("Trace Cache")
        frame.show()
        vbox.pack_start(frame,0,0)

        hbox = gtk.HBox()
        hbox.show()
        frame.add(hbox)

        button = gtk.Button(" Flush ")
        button.show()
        hbox.pack_end(button,0,0)

        def button_stats(widget):
            print self._status.get_text()
            return

        button = gtk.Button(" Print Stats ")
        button.show()
        hbox.pack_end(button,0,0)
        button.connect("clicked", button_stats)

        self._dump_counter = 0

        def inc_and_set_count(widget):
            self._dump_counter += 1
            widget.set_label(" Save As: dump.%d.trace " % self._dump_counter) 
            return
        
        def button_dump_trace(widget):
            DumpTraceFile( "dump.%d.trace" % self._dump_counter)
            inc_and_set_count(widget)
            return

        button = gtk.Button("")
        inc_and_set_count( button )
        button.show()
        hbox.pack_end(button,0,0)
        button.connect("clicked", button_dump_trace)
        
        ############################################################################
        ##  breakpoints
        ############################################################################

        frame = gtk.Frame("Break Points")

        frame.show()
        vbox.pack_start(frame,0,0)

        hbox = gtk.HBox()
        hbox.show()
        frame.add(hbox)
        
        self._tracing = 0

        def button_resume(widget):
            if self._tracing: return
            self._tracing = 1
            widget.set_label("Tracing ...")
            gobject.io_add_watch(self._tf,  gobject.IO_IN  , TrackFile)
            return

        button = gtk.Button("Start Tracing")
        button.show()
        hbox.pack_end(button,0,0)
        button.connect("clicked", button_resume)
        self._trace_button = button     #<<<<<<<<<<<<<

        button = gtk.CheckButton("Break on Flush")
        button.show()
        hbox.pack_end(button,0,0)

        def breakpoint_changed(widget):
            self._breakpoints = [string.strip(s) for s in string.split(widget.get_text(),",")]
            for (index,value) in enumerate(self._breakpoints):
                try:
                    self._breakpoints[index] = long(value,0)
                except:
                    pass
            print "breakpoints: ",  self._breakpoints
            return
        
        entry = gtk.Entry()
        entry.show()
#        entry.connect("activate", breakpoint_changed)
        entry.connect("changed", breakpoint_changed)
        hbox.pack_start(entry)


        return 

    def get_widget(self): return self._widget

    def register_tracefile(self,tf):
#        assert( not self._tf)
        self._tf = tf
        return
    
    def add_trace(self,trace):
        self._model.append(trace.trace2model() )
        return


    def IncCountBbl(self,val):
        self._NumBbl += val
        return

    def IncCountIns(self,val):
        self._NumIns += val
        return
    
    def IncSizeCode(self,val):
        self._SizeCode += val
        return
    
    def IncSizeStub(self,val):
        self._SizeStub += val
        return
    
    def IncSizeX(self,val):
        self._SizeX += val
        return

    def stop_tracing(self,message):
        self._tracing = 0
        self._trace_button.set_label(message)
        return

    def IsBreakpoint(self, rtn, addr):
        for b in self._breakpoints:
            if type(b) == type(addr) and b == addr:
                GlobalCodeCacheWidget.stop_tracing(" Break at 0x%08x " % addr)
                return 1
            elif type(b) == type(rtn) and b == rtn:
                GlobalCodeCacheWidget.stop_tracing(" Break in \"%s\" " % rtn)
                return 1
        return 0 
    
    def update_status(self):
        if self._mode == "detailed":
            self._status.set_markup("<b>#id:</b> %d  <b>#bbl:</b> %d  <b>#ins:</b> %d  <b>xsize:</b> %d <b>codesize:</b> %d  <b>stubsize:</b> %d" % \
                               (len(self._model),self._NumBbl,self._NumIns,self._SizeX,self._SizeCode,self._SizeStub))
        elif self._mode == "plain":
            self._status.set_markup("<b>#traces:</b> %d  <b>#bbl:</b> %d  <b>#ins:</b> %d  <b>codesize:</b> %d " % \
                                    (len(self._model),self._NumBbl,self._NumIns,self._SizeCode))
        else:
            assert(0)
                
        return
    
#######################################################
## 
#######################################################
num_lines = 0

def TrackFile(a,b):
    global GlobalCodeCacheWidget
    global num_lines
    
    start = num_lines
    line = None      # the whole termination handling is fairly ugly - and was done by trial and error
    
    
    print "receiving data ",a,
#    print a,b
    while os.fstat( a.fileno() )[6] > 20:

        line = a.readline()
        if line == "":  # the whole termination handling is fairly ugly - and was done by trial and error
            print "reached eof"
            break

        num_lines += 1

        token = string.split(line)
        tag = token[0]

        if tag == "@LINK":
#            continue
            src_addr = long(token[1],0)
            dst_addr = long(token[2],0)

            src_trace = FindTraceByAddress(src_addr)
#            if not src_trace.contains_address(src_addr):
#                print "bad src trace at %x,%x for %x " % (src_trace._caddr,src_trace._codesize,src_addr)
#                assert(0)
            dst_trace = FindTraceByAddress(dst_addr)
#            if not  dst_trace._caddr == dst_addr:
#                assert(0)
            dst_trace.add_edge(src_trace,src_addr - src_trace._caddr)
            
        elif tag == "@XTRACE" or tag == "@ITRACE":

            id = int(token[1])
            iaddr = long(token[2],0)
            caddr = long(token[3],0)
            nbbl = int(token[4])
            nins = int(token[5])
            codesize = int(token[6])
            stubsize = int(token[7])
            rtn = token[8]
            type = tag[1]
            
            trace = Trace(id,type,iaddr,caddr,nbbl,nins,codesize,stubsize,rtn)
            GlobalCodeCacheWidget.add_trace( trace )

            GlobalCodeCacheWidget.IncCountBbl( nbbl)
            GlobalCodeCacheWidget.IncCountIns( nins)
            if tag == "@XTRACE":
                assert( stubsize == 0 )
                GlobalCodeCacheWidget.IncSizeX(codesize)
            else:
                GlobalCodeCacheWidget.IncSizeCode(codesize)
                GlobalCodeCacheWidget.IncSizeStub(stubsize)

            if GlobalCodeCacheWidget.IsBreakpoint(rtn,iaddr):
                print "hit breakpoint for", rtn,iaddr
                line = ""
                break
            
        else:
            print "unknown tag", line
            
            #        if n >= 100: break

    GlobalCodeCacheWidget.update_status()
    print "read %6d,%3d lines" % (start,num_lines-start)
    if line == "": return 0 # the whole termination handling is fairly ugly - and was done by trial and error
    return 1

#######################################################
## 
#######################################################



def Main(argv):
    global GlobalCodeCacheWidget
    
    try:
        opts, args = getopt.getopt(argv, "hf:")
    except getopt.error:
        print "Error: bad option"
        print __doc__
        return -1

    tracefile = "ctrace.out"

    for o, a in opts:
        if o == "-h":
            print __doc__
            return 0
        elif o == "-f":
            tracefile = a
        else:
            print "Error: unsupported option " + o 
            print __doc__
            return -1



    window = gtk.Window()

    def ActionDestroy(args,window):
        window.destroy()
        gtk.mainquit()
        return
    
    window.connect("destroy", ActionDestroy,window)
    window.set_title('Code Cache GUI')
    window.set_border_width(0)

    GlobalCodeCacheWidget = CodeCacheWidget()


#    import fcntl
    
    
    tf = file(tracefile,'r',1)
    GlobalCodeCacheWidget.register_tracefile(tf)
#    fd = tf.fileno()
#    fl = fcntl.fcntl(fd, fcntl.F_GETFL)
#    fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
    



    widget = GlobalCodeCacheWidget.get_widget()
        
    window.add(widget)
    window.show()
    window.set_usize( 800, 600)

    gtk.main()

#######################################################
## 
#######################################################
if __name__ == "__main__":
    sys.exit( Main( sys.argv[1:]) )

#######################################################
## eof
#######################################################

