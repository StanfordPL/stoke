// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include <stdint.h>

int32_t p24(int32_t x) {
	  int32_t o1 = x - 1;
		  int32_t o2 = o1 >> 1;
			  int32_t o3 = o1 | o2;
				  int32_t o4 = o3 >> 2;
					  int32_t o5 = o3 | o4;
						  int32_t o6 = o5 >> 4;
							  int32_t o7 = o5 | o6;
								  int32_t o8 = o7 >> 8;
									  int32_t o9 = o7 | o8;
										  int32_t o10 = o9 >> 16;
											  int32_t o11 = o9 | o10;
												  return o10 + 1;
}
