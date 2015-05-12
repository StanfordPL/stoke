  .text
  .globl _ZN2pp3VarC1ERKNS_8ResourceE
  .type _ZN2pp3VarC1ERKNS_8ResourceE, @function

#! file-offset 0x2b040
#! rip-offset  0x2b040
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKNS_8ResourceE:                   #        0x2b040  0      
  movq %rbx, -0x10(%rsp)                         #  1     0x2b040  5      
  movl %edi, %ebx                                #  2     0x2b045  2      
  movq %r12, -0x8(%rsp)                          #  3     0x2b047  5      
  subl $0x18, %esp                               #  4     0x2b04c  3      
  addq %r15, %rsp                                #  5     0x2b04f  3      
  movl %ebx, %ebx                                #  6     0x2b052  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  7     0x2b054  8      
  nop                                            #  8     0x2b05c  1      
  cmpb $0x0, 0x10005c1c(%rip)                    #  9     0x2b05d  7      
  movl %esi, %r12d                               #  10    0x2b064  3      
  je .L_2b0c0                                    #  11    0x2b067  6      
  nop                                            #  12    0x2b06d  1      
  nop                                            #  13    0x2b06e  1      
.L_2b080:                                        #        0x2b06f  0      
  movl 0x10005c13(%rip), %eax                    #  14    0x2b06f  6      
  testq %rax, %rax                               #  15    0x2b075  3      
  jne .L_2b160                                   #  16    0x2b078  6      
  xchgw %ax, %ax                                 #  17    0x2b07e  3      
  nop                                            #  18    0x2b081  1      
.L_2b0a0:                                        #        0x2b082  0      
  movq 0x8(%rsp), %rbx                           #  19    0x2b082  5      
  movq 0x10(%rsp), %r12                          #  20    0x2b087  5      
  addl $0x18, %esp                               #  21    0x2b08c  3      
  addq %r15, %rsp                                #  22    0x2b08f  3      
  popq %r11                                      #  23    0x2b092  3      
  andl $0xffffffe0, %r11d                        #  24    0x2b095  7      
  addq %r15, %r11                                #  25    0x2b09c  3      
  jmpq %r11                                      #  26    0x2b09f  3      
  nop                                            #  27    0x2b0a2  1      
.L_2b0c0:                                        #        0x2b0a3  0      
  movl $0x10030c80, %edi                         #  28    0x2b0a3  5      
  nop                                            #  29    0x2b0a8  1      
  nop                                            #  30    0x2b0a9  1      
  callq .__cxa_guard_acquire                     #  31    0x2b0aa  5      
  testl %eax, %eax                               #  32    0x2b0af  2      
  je .L_2b080                                    #  33    0x2b0b1  6      
  nop                                            #  34    0x2b0b7  1      
  nop                                            #  35    0x2b0b8  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x2b0b9  5      
  movl %eax, %edi                                #  37    0x2b0be  2      
  movl $0x10020516, %esi                         #  38    0x2b0c0  5      
  nop                                            #  39    0x2b0c5  1      
  nop                                            #  40    0x2b0c6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x2b0c7  5      
  movl $0x10030c80, %edi                         #  42    0x2b0cc  5      
  movl %eax, 0x10005bb1(%rip)                    #  43    0x2b0d1  6      
  nop                                            #  44    0x2b0d7  1      
  nop                                            #  45    0x2b0d8  1      
  callq .__cxa_guard_release                     #  46    0x2b0d9  5      
  movl 0x10005ba4(%rip), %eax                    #  47    0x2b0de  6      
  testq %rax, %rax                               #  48    0x2b0e4  3      
  je .L_2b0a0                                    #  49    0x2b0e7  6      
  xchgw %ax, %ax                                 #  50    0x2b0ed  3      
  nop                                            #  51    0x2b0f0  1      
.L_2b160:                                        #        0x2b0f1  0      
  cmpb $0x0, 0x10005b88(%rip)                    #  52    0x2b0f1  7      
  je .L_2b1c0                                    #  53    0x2b0f8  6      
  nop                                            #  54    0x2b0fe  1      
  nop                                            #  55    0x2b0ff  1      
.L_2b180:                                        #        0x2b100  0      
  movl %eax, %eax                                #  56    0x2b100  2      
  movl 0x14(%r15,%rax,1), %eax                   #  57    0x2b102  5      
  movl %r12d, %r12d                              #  58    0x2b107  3      
  movl 0x4(%r15,%r12,1), %edi                    #  59    0x2b10a  5      
  nop                                            #  60    0x2b10f  1      
  andl $0xffffffe0, %eax                         #  61    0x2b110  5      
  addq %r15, %rax                                #  62    0x2b115  3      
  callq %rax                                     #  63    0x2b118  2      
  movl %ebx, %ebx                                #  64    0x2b11a  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  65    0x2b11c  6      
  movl %ebx, %ebx                                #  66    0x2b122  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  67    0x2b124  5      
  movl %ebx, %ebx                                #  68    0x2b129  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  69    0x2b12b  5      
  jmpq .L_2b0a0                                  #  70    0x2b130  5      
  nop                                            #  71    0x2b135  1      
.L_2b1c0:                                        #        0x2b136  0      
  movl $0x10030c80, %edi                         #  72    0x2b136  5      
  nop                                            #  73    0x2b13b  1      
  nop                                            #  74    0x2b13c  1      
  callq .__cxa_guard_acquire                     #  75    0x2b13d  5      
  testl %eax, %eax                               #  76    0x2b142  2      
  jne .L_2b220                                   #  77    0x2b144  6      
  nop                                            #  78    0x2b14a  1      
  nop                                            #  79    0x2b14b  1      
.L_2b200:                                        #        0x2b14c  0      
  movl 0x10005b36(%rip), %eax                    #  80    0x2b14c  6      
  jmpq .L_2b180                                  #  81    0x2b152  5      
  nop                                            #  82    0x2b157  1      
  nop                                            #  83    0x2b158  1      
.L_2b220:                                        #        0x2b159  0      
  nop                                            #  84    0x2b159  1      
  nop                                            #  85    0x2b15a  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x2b15b  5      
  movl %eax, %edi                                #  87    0x2b160  2      
  movl $0x10020516, %esi                         #  88    0x2b162  5      
  nop                                            #  89    0x2b167  1      
  nop                                            #  90    0x2b168  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x2b169  5      
  movl $0x10030c80, %edi                         #  92    0x2b16e  5      
  movl %eax, 0x10005b0f(%rip)                    #  93    0x2b173  6      
  nop                                            #  94    0x2b179  1      
  nop                                            #  95    0x2b17a  1      
  callq .__cxa_guard_release                     #  96    0x2b17b  5      
  jmpq .L_2b200                                  #  97    0x2b180  5      
  nop                                            #  98    0x2b185  1      
  nop                                            #  99    0x2b186  1      
.L_2b2a0:                                        #        0x2b187  0      
  movl %eax, %ebx                                #  100   0x2b187  2      
  movl $0x10030c80, %edi                         #  101   0x2b189  5      
  nop                                            #  102   0x2b18e  1      
  nop                                            #  103   0x2b18f  1      
  callq .__cxa_guard_abort                       #  104   0x2b190  5      
  movl %ebx, %edi                                #  105   0x2b195  2      
  nop                                            #  106   0x2b197  1      
  nop                                            #  107   0x2b198  1      
  callq ._Unwind_Resume                          #  108   0x2b199  5      
  jmpq .L_2b2a0                                  #  109   0x2b19e  5      
  nop                                            #  110   0x2b1a3  1      
  nop                                            #  111   0x2b1a4  1      
                                                                          
.size _ZN2pp3VarC1ERKNS_8ResourceE, .-_ZN2pp3VarC1ERKNS_8ResourceE

