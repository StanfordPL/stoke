  .text
  .globl _ZN2pp3VarC1ERKNS_8ResourceE
  .type _ZN2pp3VarC1ERKNS_8ResourceE, @function

#! file-offset 0x2b0c0
#! rip-offset  0x2b0c0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKNS_8ResourceE:                   #        0x2b0c0  0      
  movq %rbx, -0x10(%rsp)                         #  1     0x2b0c0  5      
  movl %edi, %ebx                                #  2     0x2b0c5  2      
  movq %r12, -0x8(%rsp)                          #  3     0x2b0c7  5      
  subl $0x18, %esp                               #  4     0x2b0cc  3      
  addq %r15, %rsp                                #  5     0x2b0cf  3      
  movl %ebx, %ebx                                #  6     0x2b0d2  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  7     0x2b0d4  8      
  nop                                            #  8     0x2b0dc  1      
  cmpb $0x0, 0x10005b9c(%rip)                    #  9     0x2b0dd  7      
  movl %esi, %r12d                               #  10    0x2b0e4  3      
  je .L_2b140                                    #  11    0x2b0e7  6      
  nop                                            #  12    0x2b0ed  1      
  nop                                            #  13    0x2b0ee  1      
.L_2b100:                                        #        0x2b0ef  0      
  movl 0x10005b93(%rip), %eax                    #  14    0x2b0ef  6      
  testq %rax, %rax                               #  15    0x2b0f5  3      
  jne .L_2b1e0                                   #  16    0x2b0f8  6      
  xchgw %ax, %ax                                 #  17    0x2b0fe  3      
  nop                                            #  18    0x2b101  1      
.L_2b120:                                        #        0x2b102  0      
  movq 0x8(%rsp), %rbx                           #  19    0x2b102  5      
  movq 0x10(%rsp), %r12                          #  20    0x2b107  5      
  addl $0x18, %esp                               #  21    0x2b10c  3      
  addq %r15, %rsp                                #  22    0x2b10f  3      
  popq %r11                                      #  23    0x2b112  3      
  andl $0xffffffe0, %r11d                        #  24    0x2b115  7      
  addq %r15, %r11                                #  25    0x2b11c  3      
  jmpq %r11                                      #  26    0x2b11f  3      
  nop                                            #  27    0x2b122  1      
.L_2b140:                                        #        0x2b123  0      
  movl $0x10030c80, %edi                         #  28    0x2b123  5      
  nop                                            #  29    0x2b128  1      
  nop                                            #  30    0x2b129  1      
  callq .__cxa_guard_acquire                     #  31    0x2b12a  5      
  testl %eax, %eax                               #  32    0x2b12f  2      
  je .L_2b100                                    #  33    0x2b131  6      
  nop                                            #  34    0x2b137  1      
  nop                                            #  35    0x2b138  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x2b139  5      
  movl %eax, %edi                                #  37    0x2b13e  2      
  movl $0x10020516, %esi                         #  38    0x2b140  5      
  nop                                            #  39    0x2b145  1      
  nop                                            #  40    0x2b146  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x2b147  5      
  movl $0x10030c80, %edi                         #  42    0x2b14c  5      
  movl %eax, 0x10005b31(%rip)                    #  43    0x2b151  6      
  nop                                            #  44    0x2b157  1      
  nop                                            #  45    0x2b158  1      
  callq .__cxa_guard_release                     #  46    0x2b159  5      
  movl 0x10005b24(%rip), %eax                    #  47    0x2b15e  6      
  testq %rax, %rax                               #  48    0x2b164  3      
  je .L_2b120                                    #  49    0x2b167  6      
  xchgw %ax, %ax                                 #  50    0x2b16d  3      
  nop                                            #  51    0x2b170  1      
.L_2b1e0:                                        #        0x2b171  0      
  cmpb $0x0, 0x10005b08(%rip)                    #  52    0x2b171  7      
  je .L_2b240                                    #  53    0x2b178  6      
  nop                                            #  54    0x2b17e  1      
  nop                                            #  55    0x2b17f  1      
.L_2b200:                                        #        0x2b180  0      
  movl %eax, %eax                                #  56    0x2b180  2      
  movl 0x14(%r15,%rax,1), %eax                   #  57    0x2b182  5      
  movl %r12d, %r12d                              #  58    0x2b187  3      
  movl 0x4(%r15,%r12,1), %edi                    #  59    0x2b18a  5      
  nop                                            #  60    0x2b18f  1      
  andl $0xffffffe0, %eax                         #  61    0x2b190  5      
  addq %r15, %rax                                #  62    0x2b195  3      
  callq %rax                                     #  63    0x2b198  2      
  movl %ebx, %ebx                                #  64    0x2b19a  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  65    0x2b19c  6      
  movl %ebx, %ebx                                #  66    0x2b1a2  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  67    0x2b1a4  5      
  movl %ebx, %ebx                                #  68    0x2b1a9  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  69    0x2b1ab  5      
  jmpq .L_2b120                                  #  70    0x2b1b0  5      
  nop                                            #  71    0x2b1b5  1      
.L_2b240:                                        #        0x2b1b6  0      
  movl $0x10030c80, %edi                         #  72    0x2b1b6  5      
  nop                                            #  73    0x2b1bb  1      
  nop                                            #  74    0x2b1bc  1      
  callq .__cxa_guard_acquire                     #  75    0x2b1bd  5      
  testl %eax, %eax                               #  76    0x2b1c2  2      
  jne .L_2b2a0                                   #  77    0x2b1c4  6      
  nop                                            #  78    0x2b1ca  1      
  nop                                            #  79    0x2b1cb  1      
.L_2b280:                                        #        0x2b1cc  0      
  movl 0x10005ab6(%rip), %eax                    #  80    0x2b1cc  6      
  jmpq .L_2b200                                  #  81    0x2b1d2  5      
  nop                                            #  82    0x2b1d7  1      
  nop                                            #  83    0x2b1d8  1      
.L_2b2a0:                                        #        0x2b1d9  0      
  nop                                            #  84    0x2b1d9  1      
  nop                                            #  85    0x2b1da  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x2b1db  5      
  movl %eax, %edi                                #  87    0x2b1e0  2      
  movl $0x10020516, %esi                         #  88    0x2b1e2  5      
  nop                                            #  89    0x2b1e7  1      
  nop                                            #  90    0x2b1e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x2b1e9  5      
  movl $0x10030c80, %edi                         #  92    0x2b1ee  5      
  movl %eax, 0x10005a8f(%rip)                    #  93    0x2b1f3  6      
  nop                                            #  94    0x2b1f9  1      
  nop                                            #  95    0x2b1fa  1      
  callq .__cxa_guard_release                     #  96    0x2b1fb  5      
  jmpq .L_2b280                                  #  97    0x2b200  5      
  nop                                            #  98    0x2b205  1      
  nop                                            #  99    0x2b206  1      
.L_2b320:                                        #        0x2b207  0      
  movl %eax, %ebx                                #  100   0x2b207  2      
  movl $0x10030c80, %edi                         #  101   0x2b209  5      
  nop                                            #  102   0x2b20e  1      
  nop                                            #  103   0x2b20f  1      
  callq .__cxa_guard_abort                       #  104   0x2b210  5      
  movl %ebx, %edi                                #  105   0x2b215  2      
  nop                                            #  106   0x2b217  1      
  nop                                            #  107   0x2b218  1      
  callq ._Unwind_Resume                          #  108   0x2b219  5      
  jmpq .L_2b320                                  #  109   0x2b21e  5      
  nop                                            #  110   0x2b223  1      
  nop                                            #  111   0x2b224  1      
                                                                          
.size _ZN2pp3VarC1ERKNS_8ResourceE, .-_ZN2pp3VarC1ERKNS_8ResourceE

