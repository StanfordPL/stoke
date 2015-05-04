  .text
  .globl _ZNSt8ios_base7failureD0Ev
  .type _ZNSt8ios_base7failureD0Ev, @function

#! file-offset 0x4e1e0
#! rip-offset  0x4e1e0
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD0Ev:             #        0x4e1e0  0      
  pushq %rbx                             #  1     0x4e1e0  2      
  movl %edi, %ebx                        #  2     0x4e1e2  2      
  subl $0x10, %esp                       #  3     0x4e1e4  3      
  addq %r15, %rsp                        #  4     0x4e1e7  3      
  movl %ebx, %ebx                        #  5     0x4e1ea  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e1ec  5      
  movl %ebx, %ebx                        #  7     0x4e1f1  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e1f3  8      
  subl $0xc, %edi                        #  9     0x4e1fb  3      
  nop                                    #  10    0x4e1fe  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e1ff  6      
  jne .L_4e280                           #  12    0x4e205  6      
  nop                                    #  13    0x4e20b  1      
  nop                                    #  14    0x4e20c  1      
.L_4e220:                                #        0x4e20d  0      
  movl %ebx, %edi                        #  15    0x4e20d  2      
  nop                                    #  16    0x4e20f  1      
  nop                                    #  17    0x4e210  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e211  5      
  movl %ebx, %edi                        #  19    0x4e216  2      
  nop                                    #  20    0x4e218  1      
  nop                                    #  21    0x4e219  1      
  callq ._ZdlPv                          #  22    0x4e21a  5      
  addl $0x10, %esp                       #  23    0x4e21f  3      
  addq %r15, %rsp                        #  24    0x4e222  3      
  popq %rbx                              #  25    0x4e225  2      
  popq %r11                              #  26    0x4e227  3      
  andl $0xffffffe0, %r11d                #  27    0x4e22a  7      
  addq %r15, %r11                        #  28    0x4e231  3      
  jmpq %r11                              #  29    0x4e234  3      
  nop                                    #  30    0x4e237  1      
.L_4e280:                                #        0x4e238  0      
  movl %edi, %edi                        #  31    0x4e238  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4e23a  5      
  leal -0x1(%rax), %edx                  #  33    0x4e23f  3      
  testl %eax, %eax                       #  34    0x4e242  2      
  movl %edi, %edi                        #  35    0x4e244  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4e246  5      
  jg .L_4e220                            #  37    0x4e24b  6      
  leal 0xf(%rsp), %esi                   #  38    0x4e251  4      
  xchgw %ax, %ax                         #  39    0x4e255  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4e258  5      
  jmpq .L_4e220                          #  41    0x4e25d  5      
  nop                                    #  42    0x4e262  1      
  nop                                    #  43    0x4e263  1      
  nop                                    #  44    0x4e264  1      
  nop                                    #  45    0x4e265  1      
  nop                                    #  46    0x4e266  1      
  nop                                    #  47    0x4e267  1      
  nop                                    #  48    0x4e268  1      
  nop                                    #  49    0x4e269  1      
  nop                                    #  50    0x4e26a  1      
  nop                                    #  51    0x4e26b  1      
  nop                                    #  52    0x4e26c  1      
  nop                                    #  53    0x4e26d  1      
  nop                                    #  54    0x4e26e  1      
  nop                                    #  55    0x4e26f  1      
  nop                                    #  56    0x4e270  1      
  nop                                    #  57    0x4e271  1      
  nop                                    #  58    0x4e272  1      
  nop                                    #  59    0x4e273  1      
  nop                                    #  60    0x4e274  1      
  nop                                    #  61    0x4e275  1      
  nop                                    #  62    0x4e276  1      
  nop                                    #  63    0x4e277  1      
  nop                                    #  64    0x4e278  1      
  nop                                    #  65    0x4e279  1      
  nop                                    #  66    0x4e27a  1      
  nop                                    #  67    0x4e27b  1      
  nop                                    #  68    0x4e27c  1      
                                                                  
.size _ZNSt8ios_base7failureD0Ev, .-_ZNSt8ios_base7failureD0Ev

