  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x4b520
#! rip-offset  0x4b520
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  
.__cxa_call_terminate:                       #        0x4b520  0      
  pushq %rbx                                 #  1     0x4b520  2      
  movl %edi, %ebx                            #  2     0x4b522  2      
  testq %rbx, %rbx                           #  3     0x4b524  3      
  je .L_4b560                                #  4     0x4b527  6      
  movl %ebx, %edi                            #  5     0x4b52d  2      
  xchgw %ax, %ax                             #  6     0x4b52f  3      
  nop                                        #  7     0x4b532  1      
  callq .__cxa_begin_catch                   #  8     0x4b533  5      
  movq $0xb8b1aabcbcd4d500, %rax             #  9     0x4b538  10     
  movl %ebx, %ebx                            #  10    0x4b542  2      
  addq (%r15,%rbx,1), %rax                   #  11    0x4b544  4      
  cmpq $0x1, %rax                            #  12    0x4b548  4      
  jbe .L_4b580                               #  13    0x4b54c  6      
  nop                                        #  14    0x4b552  1      
.L_4b560:                                    #        0x4b553  0      
  nop                                        #  15    0x4b553  1      
  nop                                        #  16    0x4b554  1      
  callq ._ZSt9terminatev                     #  17    0x4b555  5      
.L_4b580:                                    #        0x4b55a  0      
  subl $0x30, %ebx                           #  18    0x4b55a  3      
  movl %ebx, %ebx                            #  19    0x4b55d  2      
  movl 0xc(%r15,%rbx,1), %edi                #  20    0x4b55f  5      
  xchgw %ax, %ax                             #  21    0x4b564  3      
  nop                                        #  22    0x4b567  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  23    0x4b568  5      
                                                                      
.size __cxa_call_terminate, .-__cxa_call_terminate

