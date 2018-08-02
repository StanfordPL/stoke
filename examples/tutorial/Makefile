# Copyright 2013-2015 Stanford University
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

all: orig extract testcase_random synthesize replace

orig:
	g++ -std=c++11 -fno-inline -O3 main.cc

time:
	time ./a.out 100000000

extract:
	chmod +x test.sh
	stoke extract --config extract.conf

testcase_random:
	mkdir -p tcs
	stoke testcase --target bins/_Z6popcntm.s -o tcs/_Z6popcntm

testcase_smt:
	mkdir -p tcs
	stoke_tcgen --bound 64 --target bins/_Z6popcntm.s --output tcs/_Z6popcntm

testcase_pin:
	stoke testcase --config testcase.conf

synthesize:
	stoke synthesize --config synthesize.conf

# 'make check' should always work unless there's
# a bug in 'stoke debug verify' or 'stoke synthesize'
# or the search just fails.
verify:
	stoke debug verify --config verify.conf

check: verify

replace:
	stoke replace --config replace.conf

clean:
	rm -rf bins ./a.out *.tc *.s tcs
