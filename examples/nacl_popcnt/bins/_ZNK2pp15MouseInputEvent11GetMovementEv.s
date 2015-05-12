  .text
  .globl _ZNK2pp15MouseInputEvent11GetMovementEv
  .type _ZNK2pp15MouseInputEvent11GetMovementEv, @function

#! file-offset 0x39b60
#! rip-offset  0x39b60
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent11GetMovementEv:        #        0x39b60  0      
  pushq %r12                                     #  1     0x39b60  3      
  movl %esi, %r12d                               #  2     0x39b63  3      
  pushq %rbx                                     #  3     0x39b66  2      
  movl %edi, %ebx                                #  4     0x39b68  2      
  subl $0x8, %esp                                #  5     0x39b6a  3      
  addq %r15, %rsp                                #  6     0x39b6d  3      
  cmpb $0x0, 0xfff71e9(%rip)                     #  7     0x39b70  7      
  je .L_39be0                                    #  8     0x39b77  6      
  nop                                            #  9     0x39b7d  1      
.L_39b80:                                        #        0x39b7e  0      
  movl 0xfff71e4(%rip), %eax                     #  10    0x39b7e  6      
  testq %rax, %rax                               #  11    0x39b84  3      
  jne .L_39c80                                   #  12    0x39b87  6      
  xchgw %ax, %ax                                 #  13    0x39b8d  3      
  nop                                            #  14    0x39b90  1      
.L_39ba0:                                        #        0x39b91  0      
  movl %ebx, %ebx                                #  15    0x39b91  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x39b93  8      
  movl %ebx, %ebx                                #  17    0x39b9b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x39b9d  9      
  movl %ebx, %eax                                #  19    0x39ba6  2      
  addl $0x8, %esp                                #  20    0x39ba8  3      
  addq %r15, %rsp                                #  21    0x39bab  3      
  popq %rbx                                      #  22    0x39bae  2      
  popq %r12                                      #  23    0x39bb0  3      
  popq %r11                                      #  24    0x39bb3  3      
  andl $0xffffffe0, %r11d                        #  25    0x39bb6  7      
  addq %r15, %r11                                #  26    0x39bbd  3      
  jmpq %r11                                      #  27    0x39bc0  3      
  nop                                            #  28    0x39bc3  1      
  nop                                            #  29    0x39bc4  1      
.L_39be0:                                        #        0x39bc5  0      
  movl $0x10030d60, %edi                         #  30    0x39bc5  5      
  nop                                            #  31    0x39bca  1      
  nop                                            #  32    0x39bcb  1      
  callq .__cxa_guard_acquire                     #  33    0x39bcc  5      
  testl %eax, %eax                               #  34    0x39bd1  2      
  je .L_39b80                                    #  35    0x39bd3  6      
  nop                                            #  36    0x39bd9  1      
  nop                                            #  37    0x39bda  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x39bdb  5      
  movl %eax, %edi                                #  39    0x39be0  2      
  movl $0x100206f0, %esi                         #  40    0x39be2  5      
  nop                                            #  41    0x39be7  1      
  nop                                            #  42    0x39be8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x39be9  5      
  movl $0x10030d60, %edi                         #  44    0x39bee  5      
  movl %eax, 0xfff716f(%rip)                     #  45    0x39bf3  6      
  nop                                            #  46    0x39bf9  1      
  nop                                            #  47    0x39bfa  1      
  callq .__cxa_guard_release                     #  48    0x39bfb  5      
  movl 0xfff7162(%rip), %eax                     #  49    0x39c00  6      
  testq %rax, %rax                               #  50    0x39c06  3      
  je .L_39ba0                                    #  51    0x39c09  6      
  xchgw %ax, %ax                                 #  52    0x39c0f  3      
  nop                                            #  53    0x39c12  1      
.L_39c80:                                        #        0x39c13  0      
  cmpb $0x0, 0xfff7146(%rip)                     #  54    0x39c13  7      
  je .L_39d00                                    #  55    0x39c1a  6      
  nop                                            #  56    0x39c20  1      
  nop                                            #  57    0x39c21  1      
.L_39ca0:                                        #        0x39c22  0      
  movl %eax, %eax                                #  58    0x39c22  2      
  movl 0x14(%r15,%rax,1), %eax                   #  59    0x39c24  5      
  movl %r12d, %r12d                              #  60    0x39c29  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x39c2c  5      
  nop                                            #  62    0x39c31  1      
  andl $0xffffffe0, %eax                         #  63    0x39c32  5      
  addq %r15, %rax                                #  64    0x39c37  3      
  callq %rax                                     #  65    0x39c3a  2      
  movl %ebx, %ebx                                #  66    0x39c3c  2      
  movl %eax, (%r15,%rbx,1)                       #  67    0x39c3e  4      
  sarq $0x20, %rax                               #  68    0x39c42  4      
  movl %ebx, %ebx                                #  69    0x39c46  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  70    0x39c48  5      
  addl $0x8, %esp                                #  71    0x39c4d  3      
  addq %r15, %rsp                                #  72    0x39c50  3      
  movl %ebx, %eax                                #  73    0x39c53  2      
  popq %rbx                                      #  74    0x39c55  2      
  popq %r12                                      #  75    0x39c57  3      
  popq %r11                                      #  76    0x39c5a  3      
  xchgw %ax, %ax                                 #  77    0x39c5d  3      
  andl $0xffffffe0, %r11d                        #  78    0x39c60  7      
  addq %r15, %r11                                #  79    0x39c67  3      
  jmpq %r11                                      #  80    0x39c6a  3      
  nop                                            #  81    0x39c6d  1      
  nop                                            #  82    0x39c6e  1      
.L_39d00:                                        #        0x39c6f  0      
  movl $0x10030d60, %edi                         #  83    0x39c6f  5      
  nop                                            #  84    0x39c74  1      
  nop                                            #  85    0x39c75  1      
  callq .__cxa_guard_acquire                     #  86    0x39c76  5      
  testl %eax, %eax                               #  87    0x39c7b  2      
  jne .L_39d60                                   #  88    0x39c7d  6      
  nop                                            #  89    0x39c83  1      
  nop                                            #  90    0x39c84  1      
.L_39d40:                                        #        0x39c85  0      
  movl 0xfff70dd(%rip), %eax                     #  91    0x39c85  6      
  jmpq .L_39ca0                                  #  92    0x39c8b  5      
  nop                                            #  93    0x39c90  1      
  nop                                            #  94    0x39c91  1      
.L_39d60:                                        #        0x39c92  0      
  nop                                            #  95    0x39c92  1      
  nop                                            #  96    0x39c93  1      
  callq ._ZN2pp6Module3GetEv                     #  97    0x39c94  5      
  movl %eax, %edi                                #  98    0x39c99  2      
  movl $0x100206f0, %esi                         #  99    0x39c9b  5      
  nop                                            #  100   0x39ca0  1      
  nop                                            #  101   0x39ca1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  102   0x39ca2  5      
  movl $0x10030d60, %edi                         #  103   0x39ca7  5      
  movl %eax, 0xfff70b6(%rip)                     #  104   0x39cac  6      
  nop                                            #  105   0x39cb2  1      
  nop                                            #  106   0x39cb3  1      
  callq .__cxa_guard_release                     #  107   0x39cb4  5      
  jmpq .L_39d40                                  #  108   0x39cb9  5      
  nop                                            #  109   0x39cbe  1      
  nop                                            #  110   0x39cbf  1      
.L_39de0:                                        #        0x39cc0  0      
  movl %eax, %ebx                                #  111   0x39cc0  2      
  movl $0x10030d60, %edi                         #  112   0x39cc2  5      
  nop                                            #  113   0x39cc7  1      
  nop                                            #  114   0x39cc8  1      
  callq .__cxa_guard_abort                       #  115   0x39cc9  5      
  movl %ebx, %edi                                #  116   0x39cce  2      
  nop                                            #  117   0x39cd0  1      
  nop                                            #  118   0x39cd1  1      
  callq ._Unwind_Resume                          #  119   0x39cd2  5      
  jmpq .L_39de0                                  #  120   0x39cd7  5      
  nop                                            #  121   0x39cdc  1      
  nop                                            #  122   0x39cdd  1      
                                                                          
.size _ZNK2pp15MouseInputEvent11GetMovementEv, .-_ZNK2pp15MouseInputEvent11GetMovementEv

