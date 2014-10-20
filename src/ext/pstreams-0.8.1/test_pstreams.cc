/*
PStreams - POSIX Process I/O for C++
Copyright (C) 2002-2014 Jonathan Wakely

This file is part of PStreams.

PStreams is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

PStreams is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <cassert>

// TODO test rpstream more
// TODO test whether error_ cleared after successful open().
// TODO more tests for vector open()

// test for failures. test opening pstream with neither pstdin nor pstdout.
// maybe set failbit if !(mode&(pstdin|pstdout|pstderr)) ?
// test passing std::ios::binary and others (should have no effect)
//

// test eviscerated pstreams
#define REDI_EVISCERATE_PSTREAMS 1

#include "pstream.h"

// include these after pstream.h to ensure it #includes everything it needs
#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>
#include <fstream>
#include <cstring>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
//#include <fcntl.h>
#include <errno.h>


#define PSTREAMS_VERSION_MAJOR PSTREAMS_VERSION & 0xff00
#define PSTREAMS_VERSION_MINOR PSTREAMS_VERSION & 0x00f0
#define PSTREAMS_VERSION_PATCHLEVEL PSTREAMS_VERSION & 0x000f

#ifndef SLEEP_TIME
// increase these if your OS takes a while for processes to exit
# if defined (__sun) || defined(__APPLE__)
#  define SLEEP_TIME 2
# else
#  define SLEEP_TIME 1
# endif
#endif

using namespace std;
using namespace redi;

#if 0
// specialise basic_pstreambuf<char>::sync() to add a delay, allowing
// terminated processes to finish exiting, making it easier to detect
// possible writes to closed pipes (which would raise SIGPIPE and exit).
template <>
    int
    basic_pstreambuf<char>::sync()
    {
        std::cout.flush();  // makes terminated process clean up faster.
        sleep(SLEEP_TIME+3);
        std::cout.flush();  // makes terminated process clean up faster.
        return !exited() && empty_buffer() ? 0 : -1;
    }
#endif


// explicit instantiations of template classes
template class redi::basic_pstreambuf<char>;
template class redi::pstream_common<char>;
template class redi::basic_ipstream<char>;
template class redi::basic_opstream<char>;
template class redi::basic_pstream<char>;
template class redi::basic_rpstream<char>;

namespace  // anon
{
    // process' exit status
    int exit_status = 0;

    // helper functions for printing test results

    void
    test_type(istream const&, char& c, int& i)
    { static int count=0; c='r'; i=++count; }

    void
    test_type(ostream const&, char& c, int& i)
    { static int count=0; c='w'; i=++count; }

    void
    test_type(iostream const&, char& c, int& i)
    { static int count=0; c='b'; i=++count; }

    void
    test_type(rpstream const&, char& c, int& i)
    { static int count=0; c='x'; i=++count; }

    template <typename T>
    string
    test_id(T const& s)
    {
        char label = '?';
        int count = 0;
        test_type(s, label, count);
        ostringstream buf;
        buf << label << count;
        return buf.str();
    }

    template <typename T>
    void
    print_result(T const& s, bool result)
    {
        clog << "Test " << setw(4) << test_id(s) << ": "
            << (result ? "Pass" : "Fail!")
            << endl;
        exit_status += !result;
    }

    template <typename T>
    bool
    check_pass(T const& s, bool expected = true)
    {
        const bool res = s.good() == expected;
        print_result(s, res);
        return res;
    }

    template <typename T>
    bool
    check_fail(T const& s) { return check_pass(s, false); }

    // exit status of shell when command not found
#if defined(__sun)
    int sh_cmd_not_found = 1;
#else
    int sh_cmd_not_found = 127;
#endif
}

sig_atomic_t sig_counter = 0;
extern "C" void my_sig_handler(int) { ++sig_counter; }

int main()
{
    ios_base::sync_with_stdio();

    const pstreams::pmode all3streams =
        pstreams::pstdin|pstreams::pstdout|pstreams::pstderr;

    string str;

    clog << "# Testing basic I/O\n";

    {
        // test formatted output
        //
        // This should read the strings on stdin and print them on stdout
        // prefixed by "STDOUT: "

        opstream os("cat - /etc/resolv.conf | sed 's/^/STDIN: /'");
        os << ".fnord.\n";
        str = "..fnord..\n";
        os << str << std::flush;
        check_pass(os);
        os << peof;
        check_pass(os);
    }

    {
        // test execve() style construction
        //
        // This should read the strings on stdin and print them on stdout
        // prefixed by "STDIN: "

        pstreams::argv_type argv;
        argv.push_back("sed");
        argv.push_back("s/^/STDIN: /");
        opstream os("sed", argv);

        check_pass(os << "Magic Monkey\n");
    }

    {
        // test execve() style construction
        //
        // This should read the strings on stdin and print them on stdout
        // prefixed by "STDIN: "

        pstreams::argv_type argv;
        argv.push_back("sed");
        argv.push_back("s/^/STDIN: /");
        opstream os(argv);

        check_pass(os << "Tragic Donkey\n");
    }

    {
        // test unformatted output
        //
        // This should read the strings on stdin and print them on stdout
        // prefixed by "STDIN: "

        opstream sed("sed 's/^/STDIN: /'");
        str = "Monkey Magic\n";
        for (string::const_iterator i = str.begin(); i!=str.end(); ++i)
            sed.put(*i);
        check_pass(sed);
    }

    {
        // test formatted input
        // should print hostname on stdout, prefixed by "STDOUT: "
        ipstream host("hostname");
        if (getline(host, str))  // extracts up to newline, eats newline
            cout << "STDOUT: " << str << endl;
        check_pass(host);
        // check we hit EOF at next read
        char c;
        print_result(host, !host.get(c));
        print_result(host, host.eof());
        check_fail(host);
    }

    {
        // test unformatted input
        // should print date on stdout, prefixed by "STDOUT: "
        ipstream host("date");
        str.clear();
        char c;
        while (host.get(c))  // extracts up to EOF (including newline)
            str += c;
        cout << "STDOUT:  " << str << flush;
        print_result(host, host.eof());
    }

    {
        // test execve() style construction
        // should print date on stdout, prefixed by "STDOUT: "

        pstreams::argv_type argv;
        argv.push_back("date");
        ipstream is1(argv[0], argv);
        ipstream is2(argv);
        string s1, s2;
        getline(is1, s1);
        getline(is2, s2);
        cout << "STDOUT:  " << s1 << endl;
        print_result(is1, !s1.empty());
        print_result(is2, s1 == s2);
    }

    {
        // test execve() style construction
        // should print error on stdout, prefixed by "STDERR: "

        pstreams::argv_type argv;
        argv.push_back("cat");
        argv.push_back("/nosuchdir/nosuchfile");
        ipstream is1(argv[0], argv, pstreams::pstderr);
        ipstream is2(argv, pstreams::pstderr);
        string s1, s2;
        getline(is1, s1);
        getline(is2, s2);
        cout << "STDERR:  " << s1 << endl;
        print_result(is1, !s1.empty());
        print_result(is2, s1 == s2);
    }

    {
        // open after construction, then write
        opstream os;
        os.open("sed 's/^/STDIN: /'");
        os << "Hello, world!\n";
        check_pass(os);
    }

    {
        // open after construction, then read
        ipstream is;
        is.open("hostname");
        string s;
        is >> s;
        cout << "STDOUT: " << s << endl;
        check_pass(is);
    }

    {
        // open after construction, then write
        ipstream host;
        host.open("hostname");
        if (host >> str)
            cout << "STDOUT: " << str << endl;
        check_pass(host);
        // chomp newline and try to read past end
        char c;
        host.get(c);
        host.get(c);
        check_fail(host);
    }

    clog << "# Testing bidirectional PStreams\n";

    {
        // test reading from bidirectional pstream

        const string cmd = "grep '^127' /etc/hosts /no/such/file /dev/stdin";

        pstream ps(cmd, all3streams);

        print_result(ps, ps.is_open());
        check_pass(ps.out());
        check_pass(ps.err());

        ps << "127721\n" << peof;

        string buf;
        while (getline(ps.out(), buf))
            cout << "STDOUT: " << buf << endl;
        check_fail(ps);
        ps.clear();
        while (getline(ps.err(), buf))
            cout << "STDERR: " << buf << endl;
        check_fail(ps);
        ps.clear();
    }

    {
        // test input on bidirectional pstream
        // and test child moves onto next file after peof on stdin

        const string cmd = "grep fnord /etc/hosts /dev/stdin";

        pstream ps(cmd, all3streams);

        print_result(ps, ps.is_open());
        check_pass(ps);

        ps << "12345\nfnord\n0000" << peof;
        // manip calls ps.rdbuf()->peof();

        string buf;
        getline(ps.out(), buf);

        do
        {
            print_result(ps, buf.find("fnord") != std::string::npos);
            cout << "STDOUT: " << buf << endl;
        } while (getline(ps.out(), buf));

        check_fail(ps << "pipe closed, no fnord now");
    }

    {
        // test signals
        const string cmd = "grep 127 -- -";
        pstream ps(cmd, all3streams);

        ps << "fnord";  // write some output to buffer

        pstreambuf* pbuf = ps.rdbuf();

        const int e1 = pbuf->error();
        print_result(ps, e1 == 0);
        pbuf->kill(SIGTERM);
        const int e2 = pbuf->error();
        print_result(ps, e1 == e2);

        sleep(SLEEP_TIME);  // allow time for child process to exit completely

        // close() will call sync(), which shouldn't flush buffer after kill()
        pbuf->close();

        const int e3 = pbuf->error();
        check_fail(ps << "127 fail 127\n");
        print_result(ps, e1 == e3);
    }

    {
        // test killing and checking for exit
        const string cmd = "grep '^127' -- -";
        pstream ps(cmd, all3streams);

        print_result(ps, ps.is_open());
        check_pass(ps.out());
        check_pass(ps.err());

        ps.rdbuf()->kill();
        ::sleep(SLEEP_TIME);
        print_result(ps, ps.is_open());
        print_result(ps, ps.rdbuf()->exited());
        print_result(ps, !ps.is_open());

        string buf;
        while (getline(ps.out(), buf))
            cout << "STDOUT: " << buf << endl;
        check_fail(ps);
        ps.clear();
        while (getline(ps.err(), buf))
            cout << "STDERR: " << buf << endl;
        check_fail(ps);
        ps.clear();
    }

    clog << "# Testing pstreambuf::exited()" << endl;
    {
        // test streambuf::exited() works sanely
        const string cmd = "cat";
        opstream ps;
        pstreambuf* pbuf = ps.rdbuf();

        print_result(ps, !pbuf->exited());

        ps.open(cmd);
        print_result(ps, ps.is_open());
        print_result(ps, !pbuf->exited());
        ps.close();
        print_result(ps, pbuf->exited());
        check_pass(ps);
        ps.close();  // should set failbit on second call:
        check_fail(ps);

        ps.clear();
        ps.open(cmd);
        print_result(ps, ps.is_open());
        print_result(ps, !pbuf->exited());
        ps.close();
        print_result(ps, pbuf->exited());
    }

    clog << "# Testing behaviour with bad commands" << endl;

    //string badcmd = "hgfhdgf";
    const string badcmd = "hgfhdgf 2>/dev/null";

    {
        // check is_open() works 
        ipstream is(badcmd);
        // print_result(is, !is.is_open());  // XXX cannot pass this test!

        (void) is.err();
        while (!is.rdbuf()->in_avail())  // need to wait for exit
            ::sleep(1);

        print_result(is, is.rdbuf()->exited() && !is.is_open());
    }

    {
        // check is_open() works 
        pstreams::argv_type argv;
        argv.push_back("hdhdhd");
        argv.push_back("arg1");
        argv.push_back("arg2");
        ipstream ifail("hdhdhd", argv);
        print_result(ifail, !ifail.is_open());
    }

    {
        // check eof() works 
        ipstream is(badcmd);
        print_result(is, is.get()==EOF);
        print_result(is, is.eof() );
    }

    {
        // test writing to bad command
        opstream ofail(badcmd);
        ::sleep(SLEEP_TIME);
        // this would cause SIGPIPE: ofail<<"blahblah";
        // does not show failure: print_result(ofail, !ofail.is_open());
        pstreambuf* buf = ofail.rdbuf();
        print_result(ofail, buf->exited());
        int status = buf->status();
        print_result( ofail,
                WIFEXITED(status) && WEXITSTATUS(status) == sh_cmd_not_found );
    }

    {
        // reading from bad cmd
        pstreams::argv_type argv;
        argv.push_back("hdhdhd");
        argv.push_back("arg1");
        argv.push_back("arg2");
        ipstream ifail("hdhdhd", argv);
        check_fail(ifail>>str);
    }

    clog << "# Testing behaviour with uninit'ed streams" << endl;

    {
        // check eof() works 
        ipstream is;
        print_result(is, is.get()==EOF);
        print_result(is, is.eof() );
    }

    {
        // test writing to no command
        opstream ofail;
        check_fail(ofail<<"blahblah");
    }


    clog << "# Testing other member functions\n";

    {
        const string cmd("grep re");
        opstream s(cmd);
        print_result(s, cmd == s.command());
    }

    {
        const string cmd("grep re");
        opstream s;
        s.open(cmd);
        print_result(s, cmd == s.command());
    }

    {
        const string cmd("/bin/ls");
        ipstream s(cmd);
        print_result(s, cmd == s.command());
    }

    {
        const string cmd("/bin/ls");
        ipstream s;
        s.open(cmd);
        print_result(s, cmd == s.command());
    }


    {
        // testing streambuf::in_avail()
        ipstream in("{ printf 'this is ' ; sleep 2 ; printf 'hardcore' ; }");
        sleep(1);
        streamsize avail = in.rdbuf()->in_avail();
        print_result(in, avail > 0);
        print_result(in, size_t(avail) == strlen("this is "));

        std::vector<char> buf;
        int tries = 0;
        while (in && avail >= 0)
        {
            if (avail > 0)
            {
                if (tries)
                {
                    cout << "Nothing to read " << tries << " times." << endl;
                    tries = 0;
                }
                buf.resize(avail);
                in.readsome(&buf.front(), avail);
                cout << "STDOUT: " << avail << " characters: "
                    << string(buf.begin(), buf.end()) << endl;
            }
            else
                ++tries;
            avail = in.rdbuf()->in_avail();
        }

        if (tries)
            cout << "Nothing to read " << tries << " times." << endl;
        char c;
        check_pass(in);
        check_fail(in >> c);
        print_result(in, in.eof());
    }

    // TODO more testing of other members

    clog << "# Testing writing to closed stream\n";

    {
        opstream os("tr '[:lower:]' '[:upper:]' | sed 's/^/STDIN: /'");
        os << "foo\n";
        os.close();
        if (os << "bar\n")
            cout << "Wrote to closed stream" << endl;
        check_fail(os << "bar\n");
    }

    clog << "# Testing EOF detected correctly\n";
    {
        pstream p("tr '[:lower:]' '[:upper:]'");
        p << "newline\neof" << peof;
        string s;
        check_pass(std::getline(p.out(),s));
        print_result(p, s.size()>0);
        cout << "STDOUT: " << s << endl;
        s.clear();
        std::getline(p.out(),s);           // sets eofbit
        print_result(p, p.eof());
        print_result(p, s.size()>0);
        cout << "STDOUT: " << s << endl;
    }

    clog << "# Testing restricted pstream\n";
    {
        rpstream rs("tr '[:lower:]' '[:upper:]'");
        rs << "foo\n" << peof;
        string s;
        check_pass(std::getline(rs.out(),s));
        print_result(rs, s.size()>0);
        cout << "STDOUT: " << s << endl;
    }

    clog << "# Testing for errors when seeking\n";
    {
        ipstream in("hostname");
        check_fail(in.seekg(0));
        in.clear();
        check_fail(in.seekg(0, std::ios_base::beg));

        opstream out("cat");
        check_fail(out.seekp(0));
        out.clear();
        check_fail(out.seekp(0, std::ios_base::beg));
    }

    clog << "# Testing read position tracked correctly\n";
    {
        ipstream in("echo 'abc' >&2 && echo '123'", all3streams);
        string s;
        s += in.out().get();
        s += in.err().get();
        s += in.out().get();
        s += in.err().get();
        s += in.out().get();
        s += in.err().get();

        const string s_expected = "1a2b3c";
        cout << s << " == " << s_expected << endl;
        print_result(in, s == s_expected);

        print_result(in, in.out().get() == '\n');
        print_result(in, in.err().get() == '\n');

        char c;
        check_fail(in.out().get(c));
        in.clear(); // clear EOF
        check_fail(in.err().get(c));
    }

    clog << "# Testing initial pmode set correctly\n";
    {
        char c;
        string s;
        ipstream in("echo 'abc' >&2", pstreambuf::pstderr);
        print_result(in, getline(in, s));
        print_result(in, s == "abc");
        check_fail(in.get(c));
        in.close();
        in.clear(); // clear EOF
        s.erase();

        in.open("echo 'abc'", pstreambuf::pstdout);
        print_result(in, getline(in, s));
        print_result(in, s == "abc");
        check_fail(in.get(c));
        in.close();
        in.clear(); // clear EOF
        s.erase();

        in.open("echo 'abc' >&2", pstreambuf::pstderr);
        print_result(in, getline(in, s));
        print_result(in, s == "abc");
        check_fail(in.get(c));
        in.close();
        in.clear(); // clear EOF
        s.erase();
    }

#if REDI_EVISCERATE_PSTREAMS
    clog << "# Testing eviscerated pstream\n";

    {
        opstream os("tr '[:lower:]' '[:upper:]' | sed 's/^/STDIN: /'");
        FILE *in, *out, *err;
        size_t res = os.fopen(in, out, err);
        print_result(os, res & pstreambuf::pstdin);
        print_result(os, in!=NULL);
        int i = fputs("flax\n", in);
        fflush(in);
        print_result(os, i>=0 && i!=EOF);
    }

    {
        string cmd = "ls /etc/hosts /no/such/file";
        ipstream is(cmd, pstreambuf::pstdout|pstreambuf::pstderr);
        FILE *in, *out, *err;
        size_t res = is.fopen(in, out, err);
        print_result(is, res & pstreambuf::pstdout);
        print_result(is, res & pstreambuf::pstderr);
        print_result(is, out!=NULL);
        print_result(is, err!=NULL);

        const size_t len = 256;
        char buf[len];
        char* p = fgets(buf, len, out);
        cout << "STDOUT: " << buf;
        print_result(is, p!=NULL);

        p = fgets(buf, len, err);
        cout << "STDERR: " << buf;
        print_result(is, p!=NULL);
    }

    {
        string cmd = "grep 127 -- - /etc/hosts /no/such/file";
        pstream ps(cmd, all3streams);
        FILE *in, *out, *err;
        size_t res = ps.fopen(in, out, err);
        print_result(ps, res & pstreambuf::pstdin);
        print_result(ps, res & pstreambuf::pstdout);
        print_result(ps, res & pstreambuf::pstderr);
        print_result(ps, in!=NULL);
        print_result(ps, out!=NULL);
        print_result(ps, err!=NULL);

        // ps << "12345\n1112777\n0000" << EOF;
#if 0
        size_t len = 256;
        char buf[len];
        char* p = fgets(buf, len, out);
        cout << "STDOUT: " << buf;
        print_result(ps, p!=NULL);

        p = fgets(buf, len, err);
        cout << "STDERR: " << buf;
        print_result(ps, p!=NULL);
#endif
    }

#endif

    clog << "# Testing resources freed correctly\n";

    {
        const int next_fd = dup(0);
        ::close(next_fd);

        pstream p("cat", all3streams);
        p << "fnord" << peof;

        ::sleep(SLEEP_TIME);  // wait for process to exit

        p.rdbuf()->exited();  // test for exit, destroys write buffer

        // check we can still read the output
        std::string s;
        print_result(p,  p >> s || p.err() >> s);

        p.close(); // destroys read buffers, closes all pipes

        check_fail(p >> s);

        // check no open files except for stdin, stdout, stderr
        int fd = dup(0);
        print_result(p, next_fd == fd);
        ::close(fd);

        // reopen and check again with vector-open

        std::vector<std::string> argv;
        argv.push_back("cat");
        p.open(argv[0], argv, all3streams);

        p.close();

        // reopen and check again

        p.open(argv[0], all3streams);
        p.close();

        fd = dup(0);
        print_result(p, next_fd == fd);
        ::close(fd);
    }

    {
        // let's see if we can leak in the face of signals...

        const int next_fd = dup(0);
        ::close(next_fd);

        typedef struct sigaction sa;
        sa act = sa(), oldact;
        act.sa_handler = my_sig_handler;
        sigaction(SIGALRM, &act, &oldact);

        std::vector<std::string> argv;
        argv.push_back("sleep 5");

        ipstream in(argv[0]);
        alarm(3);
        // close() should hang until interrupted then finish closing
        in.close();

        // check no open files except for stdin, stdout, stderr
        int fd = dup(0);
        print_result(in, fd == next_fd);
        ::close(fd);

        in.open(argv[0], argv);
        alarm(3);
        in.close();

        sigaction(SIGALRM, &oldact, 0);

        // check no open files except for stdin, stdout, stderr
        fd = dup(0);
        print_result(in, fd == next_fd);
        ::close(fd);

        class pguard
        {
        public:
            explicit pguard(ipstream& in, int signal=SIGKILL)
            : buf_(*in.rdbuf()), signal_(signal) { }

            ~pguard() { if (signal_) buf_.kill(signal_); }

            void release() { signal_ = 0; }

        private:
            pstreambuf& buf_;
            int signal_;
        };

        in.clear();
        in.open("echo sleeping && sleep 5");
        std::string s;
        print_result(in, in.is_open() && in >> s);

        sigaction(SIGALRM, &act, &oldact);
        sig_counter = 0;
        alarm(3);

        try
        {
            pguard pg(in, SIGTERM);  // should kill child
            throw 0;
        } catch(...) {
            in.close();  // should return immediately if child killed
            print_result(in, alarm(0) > 0 && sig_counter == 0);
            sigaction(SIGALRM, &oldact, 0);

            int status = in.rdbuf()->status();
            print_result(in, WIFSIGNALED(status) && WTERMSIG(status)==SIGTERM);
        }
    }

    clog << "# Testing process groups\n";
    {
        pstreams::argv_type args;
        args.push_back("/bin/sleep");
        args.push_back("10");
        ipstream in(args);
        void* p = in.rdbuf()->killpg(SIGKILL);
        print_result(in, !p);
        print_result(in, in.rdbuf()->error() == EPERM);
        in.rdbuf()->kill(SIGTERM);
        in.close();
        int status = in.rdbuf()->status();
        print_result(in, WIFSIGNALED(status) && WTERMSIG(status)==SIGTERM);
    }
    {
        pstreams::argv_type args;
        args.push_back("/bin/sleep");
        args.push_back("10");
        ipstream in(args, pstreams::newpg);
        void* p = in.rdbuf()->killpg(SIGKILL);
        print_result(in, p);
        print_result(in, in.rdbuf()->error() == 0);
        in.close();
        int status = in.rdbuf()->status();
        print_result(in, WIFSIGNALED(status) && WTERMSIG(status)==SIGKILL);
    }

    clog << "# Testing wide chars\n";
    {
        ipstream dummy("true");
        basic_ipstream<wchar_t> in("cat ./pstreams.wout");
        wstring s;
        in >> s;
        wcout << s;
        print_result(dummy, in);

        wchar_t wc;
        int count=0, gcount=0;
        while (in.get(wc))
        {
            wcout << wc;
            ++count;
            gcount += in.gcount();
        }
        wcout << L'\n';
        print_result(dummy, in.eof() && in.fail());
        print_result(dummy, gcount == count);
        wcout << L"Read: " << gcount << L" chars." << endl;
    }


    return exit_status;
}

