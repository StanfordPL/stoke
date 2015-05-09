  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x4b480
#! rip-offset  0x4b480
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  
.__cxa_call_terminate:                       #        0x4b480  0      
  pushq %rbx                                 #  1     0x4b480  2      
  movl %edi, %ebx                            #  2     0x4b482  2      
  testq %rbx, %rbx                           #  3     0x4b484  3      
  je .L_4b4c0                                #  4     0x4b487  6      
  movl %ebx, %edi                            #  5     0x4b48d  2      
  xchgw %ax, %ax                             #  6     0x4b48f  3      
  nop                                        #  7     0x4b492  1      
  callq .__cxa_begin_catch                   #  8     0x4b493  5      
  movq $0xb8b1aabcbcd4d500, %rax             #  9     0x4b498  10     
  movl %ebx, %ebx                            #  10    0x4b4a2  2      
  addq (%r15,%rbx,1), %rax                   #  11    0x4b4a4  4      
  cmpq $0x1, %rax                            #  12    0x4b4a8  4      
  jbe .L_4b4e0                               #  13    0x4b4ac  6      
  nop                                        #  14    0x4b4b2  1      
.L_4b4c0:                                    #        0x4b4b3  0      
  nop                                        #  15    0x4b4b3  1      
  nop                                        #  16    0x4b4b4  1      
  callq ._ZSt9terminatev                     #  17    0x4b4b5  5      
.L_4b4e0:                                    #        0x4b4ba  0      
  subl $0x30, %ebx                           #  18    0x4b4ba  3      
  movl %ebx, %ebx                            #  19    0x4b4bd  2      
  movl 0xc(%r15,%rbx,1), %edi                #  20    0x4b4bf  5      
  xchgw %ax, %ax                             #  21    0x4b4c4  3      
  nop                                        #  22    0x4b4c7  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  23    0x4b4c8  5      
                                                                      
.size __cxa_call_terminate, .-__cxa_call_terminate

