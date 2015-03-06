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

all: orig extract testcase search replace

orig:
	g++ -c exp.s 
	g++ -std=c++11 -O3 main.cc exp.o

time:
	time ./a.out 100000000

extract:
	stoke extract -i ./a.out -o bins

testcase:
	stoke testcase --bin ./a.out --args 1024 --fxn _Z3expdPm --max_testcases 1024 -o exp.tc

search:
	stoke search --config search.conf

replace:
	stoke replace -i ./a.out --rewrite result.s

clean:
	rm -rf bins ./a.out *.tc *result.s *.o
