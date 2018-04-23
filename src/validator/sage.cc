  // Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include "src/validator/sage.h"
#include "src/kerberos/kerberos.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/prctl.h>
#include <unistd.h>
#include <signal.h>

#include "src/validator/pubsub_class_checker.h"

using namespace stoke;
using namespace std;

bool Sage::initialized = false;
ostream* Sage::stream_to_sage = NULL;
istream* Sage::stream_from_sage = NULL;
__gnu_cxx::stdio_filebuf<char>* Sage::to_filebuf = NULL;
__gnu_cxx::stdio_filebuf<char>* Sage::from_filebuf = NULL;
pid_t Sage::child_pid = 0;


void Sage::initialize() {

  int to_sage_pipe[2];
  int from_sage_pipe[2];
  pipe(to_sage_pipe);
  pipe(from_sage_pipe);

  initialized = true;

  pid_t pid = fork();
  if(pid) {
    /* parent */
    close(to_sage_pipe[0]);
    close(from_sage_pipe[1]);

    to_filebuf = new __gnu_cxx::stdio_filebuf<char>(to_sage_pipe[1], std::ios::out);
    stream_to_sage = new ostream(to_filebuf);

    from_filebuf = new __gnu_cxx::stdio_filebuf<char>(from_sage_pipe[0], std::ios::in);
    stream_from_sage = new istream(from_filebuf);
    child_pid = pid;

    sleep(3);
  } else {
    /* child */
    // get path to this binary
    char buffer[1024];
    size_t ret = readlink("/proc/self/exe", buffer, 1024);
    buffer[ret] = '\0';
    char* end = strrchr(buffer, '/');
    assert(end != NULL);
    *end = '\0';

    // path to sage harness
    stringstream harness_location;
    harness_location << buffer << "/sage_harness.sage";
    auto harness_file = const_cast<char*>(harness_location.str().c_str());
    cout << "harness_file = " << harness_file << endl;

    // setup file descriptors
    close(to_sage_pipe[1]);
    close(from_sage_pipe[0]);
    dup2(to_sage_pipe[0], STDIN_FILENO);
    dup2(from_sage_pipe[1], STDOUT_FILENO);

    //setup arguments
    char* const argv[3] = {
      (char*)"sage",
      harness_file,
      NULL
    };

    prctl(PR_SET_PDEATHSIG, SIGTERM);
    execvpe("sage", argv, environ);
  }


}

void Sage::run() {

  cout << "[sage] running..." << endl;

  /** Do initial setup */
  if(!initialized)
    initialize();

  /** Be safe. */
  renew_kerberos_permissions();
  umask(0077);

  /** Get filename */
  string tmp_in = tmpnam(NULL) + string(".sage");
  //string tmp_err = tmpnam(NULL) + string(".err");

  /** Create sage file. */
  ofstream exec_file(tmp_in);
  exec_file << buffer_to_sage.str() << endl;
  exec_file.close();
  cout << "Temporary file at " << tmp_in << endl;

  stringstream test;
  test << "ps -e | grep " << child_pid;
  system(test.str().c_str());

  /** Tell sage to execute it. */
  *stream_to_sage << tmp_in << endl;
  cout << "Wrote to buffer" << endl;

  /** Wait for answer.*/
  string tst;
  *stream_from_sage >> tst;
  if(tst != "OK") {
    cout << "Expected to receive 'OK' from sage." << endl;
    cout << "Instead got " << tst << endl;
    exit(1);
  }

  buffer_to_sage.clear();

  /** Open output file and give it to client. */
  //pipe_from_sage.open(tmp_out);
  //return pipe_from_sage;

  /*
  ofstream of(tmp_in);
  of << stream_to_sage.str() << endl;
  of.close(); */
  //int status = system((string("sage ") + tmp_in + string(" > ") + tmp_out + string(" 2> ") + tmp_err).c_str());

  //sage_output.open(tmp_out);
  //return sage_output;

//auto start_time = duration_cast<milliseconds>(system_clock::now().time_since_epoch());

 // int status = system((string("sage ") + tmp_in + string(" > ") + tmp_out + string(" 2>") + tmp_err).c_str());

  //auto end_time = duration_cast<milliseconds>(system_clock::now().time_since_epoch());
  //cout << "Nullspace computation took " << dec << (end_time - start_time).count() << " ms" << endl;


}
