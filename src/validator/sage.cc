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


using namespace stoke;
using namespace std;

bool Sage::initialized = false;
std::ofstream Sage::pipe_to_sage;
std::ifstream Sage::pipe_from_sage;

void Sage::initialize() {

  auto harness_file = "sage_harness.sage";
  auto stoke_sage_in = "stoke_sage_in";
  auto stoke_sage_out = "stoke_sage_out";
  auto sage_err = "sage_err";

  initialized = true;
  unlink(stoke_sage_in);
  unlink(stoke_sage_out);
  mkfifo(stoke_sage_in, 0600);
  mkfifo(stoke_sage_out, 0600);

  unlink(harness_file);
  ofstream harness(harness_file);
  harness << "import fileinput" << endl;
  harness << "import sys" << endl << endl;

  harness << "for line in fileinput.input():" << endl;
  harness << "\texecfile(line.strip())" << endl;
  harness << "\tprint \"OK\"" << endl;
  harness << "\tsys.stdout.flush()" << endl << endl;
  harness.close();

  if(fork()) {
    // parent
    pipe_to_sage.open(stoke_sage_in);    
    pipe_from_sage.open(stoke_sage_out);
    sleep(3);
  } else {
    // child
    prctl(PR_SET_PDEATHSIG, SIGTERM);
    stringstream cmd;
    cmd << "sage " << harness_file << " <" << stoke_sage_in << " >" << stoke_sage_out << " 2>" << sage_err;
    int v = system(cmd.str().c_str());
    exit(0);
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
  exec_file << stream_to_sage.str() << endl;
  exec_file.close();

  /** Tell sage to execute it. */
  pipe_to_sage << tmp_in << endl;

  /** Wait for answer.*/
  string tst;
  pipe_from_sage >> tst;
  if(tst != "OK") {
    cout << "Expected to receive 'OK' from sage." << endl;
    cout << "Instead got " << tst << endl;
    exit(1);
  }

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
