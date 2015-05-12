  .text
  .globl _ZNSt13runtime_errorD0Ev
  .type _ZNSt13runtime_errorD0Ev, @function

#! file-offset 0x4ea40
#! rip-offset  0x4ea40
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD0Ev:               #        0x4ea40  0      
  pushq %rbx                             #  1     0x4ea40  2      
  movl %edi, %ebx                        #  2     0x4ea42  2      
  subl $0x10, %esp                       #  3     0x4ea44  3      
  addq %r15, %rsp                        #  4     0x4ea47  3      
  movl %ebx, %ebx                        #  5     0x4ea4a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ea4c  5      
  movl %ebx, %ebx                        #  7     0x4ea51  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ea53  8      
  subl $0xc, %edi                        #  9     0x4ea5b  3      
  nop                                    #  10    0x4ea5e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ea5f  6      
  jne .L_4eae0                           #  12    0x4ea65  6      
  nop                                    #  13    0x4ea6b  1      
  nop                                    #  14    0x4ea6c  1      
.L_4ea80:                                #        0x4ea6d  0      
  movl %ebx, %edi                        #  15    0x4ea6d  2      
  nop                                    #  16    0x4ea6f  1      
  nop                                    #  17    0x4ea70  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ea71  5      
  movl %ebx, %edi                        #  19    0x4ea76  2      
  nop                                    #  20    0x4ea78  1      
  nop                                    #  21    0x4ea79  1      
  callq ._ZdlPv                          #  22    0x4ea7a  5      
  addl $0x10, %esp                       #  23    0x4ea7f  3      
  addq %r15, %rsp                        #  24    0x4ea82  3      
  popq %rbx                              #  25    0x4ea85  2      
  popq %r11                              #  26    0x4ea87  3      
  andl $0xffffffe0, %r11d                #  27    0x4ea8a  7      
  addq %r15, %r11                        #  28    0x4ea91  3      
  jmpq %r11                              #  29    0x4ea94  3      
  nop                                    #  30    0x4ea97  1      
.L_4eae0:                                #        0x4ea98  0      
  movl %edi, %edi                        #  31    0x4ea98  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4ea9a  5      
  leal -0x1(%rax), %edx                  #  33    0x4ea9f  3      
  testl %eax, %eax                       #  34    0x4eaa2  2      
  movl %edi, %edi                        #  35    0x4eaa4  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4eaa6  5      
  jg .L_4ea80                            #  37    0x4eaab  6      
  leal 0xf(%rsp), %esi                   #  38    0x4eab1  4      
  xchgw %ax, %ax                         #  39    0x4eab5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4eab8  5      
  jmpq .L_4ea80                          #  41    0x4eabd  5      
  nop                                    #  42    0x4eac2  1      
  nop                                    #  43    0x4eac3  1      
  nop                                    #  44    0x4eac4  1      
  nop                                    #  45    0x4eac5  1      
  nop                                    #  46    0x4eac6  1      
  nop                                    #  47    0x4eac7  1      
  nop                                    #  48    0x4eac8  1      
  nop                                    #  49    0x4eac9  1      
  nop                                    #  50    0x4eaca  1      
  nop                                    #  51    0x4eacb  1      
  nop                                    #  52    0x4eacc  1      
  nop                                    #  53    0x4eacd  1      
  nop                                    #  54    0x4eace  1      
  nop                                    #  55    0x4eacf  1      
  nop                                    #  56    0x4ead0  1      
  nop                                    #  57    0x4ead1  1      
  nop                                    #  58    0x4ead2  1      
  nop                                    #  59    0x4ead3  1      
  nop                                    #  60    0x4ead4  1      
  nop                                    #  61    0x4ead5  1      
  nop                                    #  62    0x4ead6  1      
  nop                                    #  63    0x4ead7  1      
  nop                                    #  64    0x4ead8  1      
  nop                                    #  65    0x4ead9  1      
  nop                                    #  66    0x4eada  1      
  nop                                    #  67    0x4eadb  1      
  nop                                    #  68    0x4eadc  1      
                                                                  
.size _ZNSt13runtime_errorD0Ev, .-_ZNSt13runtime_errorD0Ev

