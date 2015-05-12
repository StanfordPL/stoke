  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x4b4a0
#! rip-offset  0x4b4a0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  
.__cxa_call_terminate:                       #        0x4b4a0  0      
  pushq %rbx                                 #  1     0x4b4a0  2      
  movl %edi, %ebx                            #  2     0x4b4a2  2      
  testq %rbx, %rbx                           #  3     0x4b4a4  3      
  je .L_4b4e0                                #  4     0x4b4a7  6      
  movl %ebx, %edi                            #  5     0x4b4ad  2      
  xchgw %ax, %ax                             #  6     0x4b4af  3      
  nop                                        #  7     0x4b4b2  1      
  callq .__cxa_begin_catch                   #  8     0x4b4b3  5      
  movq $0xb8b1aabcbcd4d500, %rax             #  9     0x4b4b8  10     
  movl %ebx, %ebx                            #  10    0x4b4c2  2      
  addq (%r15,%rbx,1), %rax                   #  11    0x4b4c4  4      
  cmpq $0x1, %rax                            #  12    0x4b4c8  4      
  jbe .L_4b500                               #  13    0x4b4cc  6      
  nop                                        #  14    0x4b4d2  1      
.L_4b4e0:                                    #        0x4b4d3  0      
  nop                                        #  15    0x4b4d3  1      
  nop                                        #  16    0x4b4d4  1      
  callq ._ZSt9terminatev                     #  17    0x4b4d5  5      
.L_4b500:                                    #        0x4b4da  0      
  subl $0x30, %ebx                           #  18    0x4b4da  3      
  movl %ebx, %ebx                            #  19    0x4b4dd  2      
  movl 0xc(%r15,%rbx,1), %edi                #  20    0x4b4df  5      
  xchgw %ax, %ax                             #  21    0x4b4e4  3      
  nop                                        #  22    0x4b4e7  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  23    0x4b4e8  5      
                                                                      
.size __cxa_call_terminate, .-__cxa_call_terminate

