  .text
  .globl _ZN2pp3VarC2ERKNS_8ResourceE
  .type _ZN2pp3VarC2ERKNS_8ResourceE, @function

#! file-offset 0x2b380
#! rip-offset  0x2b380
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKNS_8ResourceE:                   #        0x2b380  0      
  movq %rbx, -0x10(%rsp)                         #  1     0x2b380  5      
  movl %edi, %ebx                                #  2     0x2b385  2      
  movq %r12, -0x8(%rsp)                          #  3     0x2b387  5      
  subl $0x18, %esp                               #  4     0x2b38c  3      
  addq %r15, %rsp                                #  5     0x2b38f  3      
  movl %ebx, %ebx                                #  6     0x2b392  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  7     0x2b394  8      
  nop                                            #  8     0x2b39c  1      
  cmpb $0x0, 0x100058dc(%rip)                    #  9     0x2b39d  7      
  movl %esi, %r12d                               #  10    0x2b3a4  3      
  je .L_2b400                                    #  11    0x2b3a7  6      
  nop                                            #  12    0x2b3ad  1      
  nop                                            #  13    0x2b3ae  1      
.L_2b3c0:                                        #        0x2b3af  0      
  movl 0x100058d3(%rip), %eax                    #  14    0x2b3af  6      
  testq %rax, %rax                               #  15    0x2b3b5  3      
  jne .L_2b4a0                                   #  16    0x2b3b8  6      
  xchgw %ax, %ax                                 #  17    0x2b3be  3      
  nop                                            #  18    0x2b3c1  1      
.L_2b3e0:                                        #        0x2b3c2  0      
  movq 0x8(%rsp), %rbx                           #  19    0x2b3c2  5      
  movq 0x10(%rsp), %r12                          #  20    0x2b3c7  5      
  addl $0x18, %esp                               #  21    0x2b3cc  3      
  addq %r15, %rsp                                #  22    0x2b3cf  3      
  popq %r11                                      #  23    0x2b3d2  3      
  andl $0xffffffe0, %r11d                        #  24    0x2b3d5  7      
  addq %r15, %r11                                #  25    0x2b3dc  3      
  jmpq %r11                                      #  26    0x2b3df  3      
  nop                                            #  27    0x2b3e2  1      
.L_2b400:                                        #        0x2b3e3  0      
  movl $0x10030c80, %edi                         #  28    0x2b3e3  5      
  nop                                            #  29    0x2b3e8  1      
  nop                                            #  30    0x2b3e9  1      
  callq .__cxa_guard_acquire                     #  31    0x2b3ea  5      
  testl %eax, %eax                               #  32    0x2b3ef  2      
  je .L_2b3c0                                    #  33    0x2b3f1  6      
  nop                                            #  34    0x2b3f7  1      
  nop                                            #  35    0x2b3f8  1      
  callq ._ZN2pp6Module3GetEv                     #  36    0x2b3f9  5      
  movl %eax, %edi                                #  37    0x2b3fe  2      
  movl $0x10020516, %esi                         #  38    0x2b400  5      
  nop                                            #  39    0x2b405  1      
  nop                                            #  40    0x2b406  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  41    0x2b407  5      
  movl $0x10030c80, %edi                         #  42    0x2b40c  5      
  movl %eax, 0x10005871(%rip)                    #  43    0x2b411  6      
  nop                                            #  44    0x2b417  1      
  nop                                            #  45    0x2b418  1      
  callq .__cxa_guard_release                     #  46    0x2b419  5      
  movl 0x10005864(%rip), %eax                    #  47    0x2b41e  6      
  testq %rax, %rax                               #  48    0x2b424  3      
  je .L_2b3e0                                    #  49    0x2b427  6      
  xchgw %ax, %ax                                 #  50    0x2b42d  3      
  nop                                            #  51    0x2b430  1      
.L_2b4a0:                                        #        0x2b431  0      
  cmpb $0x0, 0x10005848(%rip)                    #  52    0x2b431  7      
  je .L_2b500                                    #  53    0x2b438  6      
  nop                                            #  54    0x2b43e  1      
  nop                                            #  55    0x2b43f  1      
.L_2b4c0:                                        #        0x2b440  0      
  movl %eax, %eax                                #  56    0x2b440  2      
  movl 0x14(%r15,%rax,1), %eax                   #  57    0x2b442  5      
  movl %r12d, %r12d                              #  58    0x2b447  3      
  movl 0x4(%r15,%r12,1), %edi                    #  59    0x2b44a  5      
  nop                                            #  60    0x2b44f  1      
  andl $0xffffffe0, %eax                         #  61    0x2b450  5      
  addq %r15, %rax                                #  62    0x2b455  3      
  callq %rax                                     #  63    0x2b458  2      
  movl %ebx, %ebx                                #  64    0x2b45a  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  65    0x2b45c  6      
  movl %ebx, %ebx                                #  66    0x2b462  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  67    0x2b464  5      
  movl %ebx, %ebx                                #  68    0x2b469  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  69    0x2b46b  5      
  jmpq .L_2b3e0                                  #  70    0x2b470  5      
  nop                                            #  71    0x2b475  1      
.L_2b500:                                        #        0x2b476  0      
  movl $0x10030c80, %edi                         #  72    0x2b476  5      
  nop                                            #  73    0x2b47b  1      
  nop                                            #  74    0x2b47c  1      
  callq .__cxa_guard_acquire                     #  75    0x2b47d  5      
  testl %eax, %eax                               #  76    0x2b482  2      
  jne .L_2b560                                   #  77    0x2b484  6      
  nop                                            #  78    0x2b48a  1      
  nop                                            #  79    0x2b48b  1      
.L_2b540:                                        #        0x2b48c  0      
  movl 0x100057f6(%rip), %eax                    #  80    0x2b48c  6      
  jmpq .L_2b4c0                                  #  81    0x2b492  5      
  nop                                            #  82    0x2b497  1      
  nop                                            #  83    0x2b498  1      
.L_2b560:                                        #        0x2b499  0      
  nop                                            #  84    0x2b499  1      
  nop                                            #  85    0x2b49a  1      
  callq ._ZN2pp6Module3GetEv                     #  86    0x2b49b  5      
  movl %eax, %edi                                #  87    0x2b4a0  2      
  movl $0x10020516, %esi                         #  88    0x2b4a2  5      
  nop                                            #  89    0x2b4a7  1      
  nop                                            #  90    0x2b4a8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  91    0x2b4a9  5      
  movl $0x10030c80, %edi                         #  92    0x2b4ae  5      
  movl %eax, 0x100057cf(%rip)                    #  93    0x2b4b3  6      
  nop                                            #  94    0x2b4b9  1      
  nop                                            #  95    0x2b4ba  1      
  callq .__cxa_guard_release                     #  96    0x2b4bb  5      
  jmpq .L_2b540                                  #  97    0x2b4c0  5      
  nop                                            #  98    0x2b4c5  1      
  nop                                            #  99    0x2b4c6  1      
.L_2b5e0:                                        #        0x2b4c7  0      
  movl %eax, %ebx                                #  100   0x2b4c7  2      
  movl $0x10030c80, %edi                         #  101   0x2b4c9  5      
  nop                                            #  102   0x2b4ce  1      
  nop                                            #  103   0x2b4cf  1      
  callq .__cxa_guard_abort                       #  104   0x2b4d0  5      
  movl %ebx, %edi                                #  105   0x2b4d5  2      
  nop                                            #  106   0x2b4d7  1      
  nop                                            #  107   0x2b4d8  1      
  callq ._Unwind_Resume                          #  108   0x2b4d9  5      
  jmpq .L_2b5e0                                  #  109   0x2b4de  5      
  nop                                            #  110   0x2b4e3  1      
  nop                                            #  111   0x2b4e4  1      
                                                                          
.size _ZN2pp3VarC2ERKNS_8ResourceE, .-_ZN2pp3VarC2ERKNS_8ResourceE

