  .text
  .globl _ZN2pp3VarC2ERKNS_8ResourceE
  .type _ZN2pp3VarC2ERKNS_8ResourceE, @function

#! file-offset 0x2b300
#! rip-offset  0x2b300
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKNS_8ResourceE:                   #        0x2b300  0      
  movq %rbx, -0x10(%rsp)                         #  1     0x2b300  5      
  movl %edi, %ebx                                #  2     0x2b305  2      
  movq %r12, -0x8(%rsp)                          #  3     0x2b307  5      
  subl $0x18, %esp                               #  4     0x2b30c  3      
  addq %r15, %rsp                                #  5     0x2b30f  3      
  movl %ebx, %ebx                                #  6     0x2b312  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  7     0x2b314  8      
  nop                                            #  8     0x2b31c  1      
  cmpb $0x0, 0x1000595c(%rip)                    #  9     0x2b31d  7      
  movl %esi, %r12d                               #  10    0x2b324  3      
  je .L_2b380                                    #  11    0x2b327  6      
  nop                                            #  12    0x2b32d  1      
  nop                                            #  13    0x2b32e  1      
.L_2b340:                                        #        0x2b32f  0      
  movl 0x10005953(%rip), %eax                    #  14    0x2b32f  6      
  testq %rax, %rax                               #  15    0x2b335  3      
  jne .L_2b420                                   #  16    0x2b338  6      
  xchgw %ax, %ax                                 #  17    0x2b33e  3      
  nop                                            #  18    0x2b341  1      
.L_2b360:                                        #        0x2b342  0      
  movq 0x8(%rsp), %rbx                           #  19    0x2b342  5      
  movq 0x10(%rsp), %r12                          #  20    0x2b347  5      
  addl $0x18, %esp                               #  21    0x2b34c  3      
  addq %r15, %rsp                                #  22    0x2b34f  3      
  popq %r11                                      #  23    0x2b352  3      
  andl $0xffffffe0, %r11d                        #  24    0x2b355  7      
  addq %r15, %r11                                #  25    0x2b35c  3      
  jmpq %r11                                      #  26    0x2b35f  3      
  nop                                            #  27    0x2b362  1      
.L_2b380:                                        #        0x2b363  0      
  movl $0x10030c80, %edi                         #  28    0x2b363  5      
  nop                                            #  29    0x2b368  1      
  nop                                            #  30    0x2b369  1      
  callq .__cxa_guard_acquire                     #  31    0x2b36a  5      
  testl %eax, %eax                               #  32    0x2b36f  2      
  je .L_2b340                                    #  33    0x2b371  6      
  nop                                            #  34    0x2b377  1      
  nop                                            #  35    0x2b378  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x2b379  5      
  movl %eax, %edi                                #  37    0x2b37e  2      
  movl $0x10020516, %esi                         #  38    0x2b380  5      
  nop                                            #  39    0x2b385  1      
  nop                                            #  40    0x2b386  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x2b387  5      
  movl $0x10030c80, %edi                         #  42    0x2b38c  5      
  movl %eax, 0x100058f1(%rip)                    #  43    0x2b391  6      
  nop                                            #  44    0x2b397  1      
  nop                                            #  45    0x2b398  1      
  callq .__cxa_guard_release                     #  46    0x2b399  5      
  movl 0x100058e4(%rip), %eax                    #  47    0x2b39e  6      
  testq %rax, %rax                               #  48    0x2b3a4  3      
  je .L_2b360                                    #  49    0x2b3a7  6      
  xchgw %ax, %ax                                 #  50    0x2b3ad  3      
  nop                                            #  51    0x2b3b0  1      
.L_2b420:                                        #        0x2b3b1  0      
  cmpb $0x0, 0x100058c8(%rip)                    #  52    0x2b3b1  7      
  je .L_2b480                                    #  53    0x2b3b8  6      
  nop                                            #  54    0x2b3be  1      
  nop                                            #  55    0x2b3bf  1      
.L_2b440:                                        #        0x2b3c0  0      
  movl %eax, %eax                                #  56    0x2b3c0  2      
  movl 0x14(%r15,%rax,1), %eax                   #  57    0x2b3c2  5      
  movl %r12d, %r12d                              #  58    0x2b3c7  3      
  movl 0x4(%r15,%r12,1), %edi                    #  59    0x2b3ca  5      
  nop                                            #  60    0x2b3cf  1      
  andl $0xffffffe0, %eax                         #  61    0x2b3d0  5      
  addq %r15, %rax                                #  62    0x2b3d5  3      
  callq %rax                                     #  63    0x2b3d8  2      
  movl %ebx, %ebx                                #  64    0x2b3da  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  65    0x2b3dc  6      
  movl %ebx, %ebx                                #  66    0x2b3e2  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  67    0x2b3e4  5      
  movl %ebx, %ebx                                #  68    0x2b3e9  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  69    0x2b3eb  5      
  jmpq .L_2b360                                  #  70    0x2b3f0  5      
  nop                                            #  71    0x2b3f5  1      
.L_2b480:                                        #        0x2b3f6  0      
  movl $0x10030c80, %edi                         #  72    0x2b3f6  5      
  nop                                            #  73    0x2b3fb  1      
  nop                                            #  74    0x2b3fc  1      
  callq .__cxa_guard_acquire                     #  75    0x2b3fd  5      
  testl %eax, %eax                               #  76    0x2b402  2      
  jne .L_2b4e0                                   #  77    0x2b404  6      
  nop                                            #  78    0x2b40a  1      
  nop                                            #  79    0x2b40b  1      
.L_2b4c0:                                        #        0x2b40c  0      
  movl 0x10005876(%rip), %eax                    #  80    0x2b40c  6      
  jmpq .L_2b440                                  #  81    0x2b412  5      
  nop                                            #  82    0x2b417  1      
  nop                                            #  83    0x2b418  1      
.L_2b4e0:                                        #        0x2b419  0      
  nop                                            #  84    0x2b419  1      
  nop                                            #  85    0x2b41a  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x2b41b  5      
  movl %eax, %edi                                #  87    0x2b420  2      
  movl $0x10020516, %esi                         #  88    0x2b422  5      
  nop                                            #  89    0x2b427  1      
  nop                                            #  90    0x2b428  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x2b429  5      
  movl $0x10030c80, %edi                         #  92    0x2b42e  5      
  movl %eax, 0x1000584f(%rip)                    #  93    0x2b433  6      
  nop                                            #  94    0x2b439  1      
  nop                                            #  95    0x2b43a  1      
  callq .__cxa_guard_release                     #  96    0x2b43b  5      
  jmpq .L_2b4c0                                  #  97    0x2b440  5      
  nop                                            #  98    0x2b445  1      
  nop                                            #  99    0x2b446  1      
.L_2b560:                                        #        0x2b447  0      
  movl %eax, %ebx                                #  100   0x2b447  2      
  movl $0x10030c80, %edi                         #  101   0x2b449  5      
  nop                                            #  102   0x2b44e  1      
  nop                                            #  103   0x2b44f  1      
  callq .__cxa_guard_abort                       #  104   0x2b450  5      
  movl %ebx, %edi                                #  105   0x2b455  2      
  nop                                            #  106   0x2b457  1      
  nop                                            #  107   0x2b458  1      
  callq ._Unwind_Resume                          #  108   0x2b459  5      
  jmpq .L_2b560                                  #  109   0x2b45e  5      
  nop                                            #  110   0x2b463  1      
  nop                                            #  111   0x2b464  1      
                                                                          
.size _ZN2pp3VarC2ERKNS_8ResourceE, .-_ZN2pp3VarC2ERKNS_8ResourceE

