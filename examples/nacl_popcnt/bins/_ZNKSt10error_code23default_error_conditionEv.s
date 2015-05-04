  .text
  .globl _ZNKSt10error_code23default_error_conditionEv
  .type _ZNKSt10error_code23default_error_conditionEv, @function

#! file-offset 0x4f040
#! rip-offset  0x4f040
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNKSt10error_code23default_error_conditionEv:  #        0x4f040  0      
  movl %edi, %edx                                #  1     0x4f040  2      
  subl $0x8, %esp                                #  2     0x4f042  3      
  addq %r15, %rsp                                #  3     0x4f045  3      
  movl %edx, %edx                                #  4     0x4f048  2      
  movl 0x4(%r15,%rdx,1), %edi                    #  5     0x4f04a  5      
  movl %edx, %edx                                #  6     0x4f04f  2      
  movl (%r15,%rdx,1), %esi                       #  7     0x4f051  4      
  movl %edi, %edi                                #  8     0x4f055  2      
  movl (%r15,%rdi,1), %eax                       #  9     0x4f057  4      
  nop                                            #  10    0x4f05b  1      
  movl %eax, %eax                                #  11    0x4f05c  2      
  movl 0x10(%r15,%rax,1), %eax                   #  12    0x4f05e  5      
  xchgw %ax, %ax                                 #  13    0x4f063  3      
  nop                                            #  14    0x4f066  1      
  andl $0xffffffe0, %eax                         #  15    0x4f067  5      
  addq %r15, %rax                                #  16    0x4f06c  3      
  callq %rax                                     #  17    0x4f06f  2      
  addl $0x8, %esp                                #  18    0x4f071  3      
  addq %r15, %rsp                                #  19    0x4f074  3      
  popq %r11                                      #  20    0x4f077  3      
  andl $0xffffffe0, %r11d                        #  21    0x4f07a  7      
  addq %r15, %r11                                #  22    0x4f081  3      
  jmpq %r11                                      #  23    0x4f084  3      
  nop                                            #  24    0x4f087  1      
  nop                                            #  25    0x4f088  1      
  nop                                            #  26    0x4f089  1      
  nop                                            #  27    0x4f08a  1      
  nop                                            #  28    0x4f08b  1      
  nop                                            #  29    0x4f08c  1      
  nop                                            #  30    0x4f08d  1      
  nop                                            #  31    0x4f08e  1      
  nop                                            #  32    0x4f08f  1      
  nop                                            #  33    0x4f090  1      
  nop                                            #  34    0x4f091  1      
  nop                                            #  35    0x4f092  1      
  nop                                            #  36    0x4f093  1      
  nop                                            #  37    0x4f094  1      
                                                                          
.size _ZNKSt10error_code23default_error_conditionEv, .-_ZNKSt10error_code23default_error_conditionEv

