# Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

all: synth opt time_llvm time_gcc time_stoke

synth: orig_gcc extract testcase search_synth
opt: orig_gcc extract testcase search_opt

time_gcc: orig_gcc time
time_stoke: orig_gcc replace time

orig_gcc:
	g++ -std=c++11 -O3 -c fxn.s
	g++ -std=c++11 -O3 main.cc fxn.o

extract:
	stoke extract --config extract.conf
testcase:
	stoke testcase --config testcase.conf
search_synth:
	time stoke search --config synth.conf
search_opt:
	time stoke search --config opt.conf
replace:
	stoke replace --config replace.conf

time:
	time ./a.out 100000000

clean:
	rm -rf bins ./a.out *.tc *result.s *.o
