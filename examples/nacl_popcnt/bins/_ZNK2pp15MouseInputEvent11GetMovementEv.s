  .text
  .globl _ZNK2pp15MouseInputEvent11GetMovementEv
  .type _ZNK2pp15MouseInputEvent11GetMovementEv, @function

#! file-offset 0x39be0
#! rip-offset  0x39be0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent11GetMovementEv:        #        0x39be0  0      
  pushq %r12                                     #  1     0x39be0  3      
  movl %esi, %r12d                               #  2     0x39be3  3      
  pushq %rbx                                     #  3     0x39be6  2      
  movl %edi, %ebx                                #  4     0x39be8  2      
  subl $0x8, %esp                                #  5     0x39bea  3      
  addq %r15, %rsp                                #  6     0x39bed  3      
  cmpb $0x0, 0xfff7169(%rip)                     #  7     0x39bf0  7      
  je .L_39c60                                    #  8     0x39bf7  6      
  nop                                            #  9     0x39bfd  1      
.L_39c00:                                        #        0x39bfe  0      
  movl 0xfff7164(%rip), %eax                     #  10    0x39bfe  6      
  testq %rax, %rax                               #  11    0x39c04  3      
  jne .L_39d00                                   #  12    0x39c07  6      
  xchgw %ax, %ax                                 #  13    0x39c0d  3      
  nop                                            #  14    0x39c10  1      
.L_39c20:                                        #        0x39c11  0      
  movl %ebx, %ebx                                #  15    0x39c11  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x39c13  8      
  movl %ebx, %ebx                                #  17    0x39c1b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x39c1d  9      
  movl %ebx, %eax                                #  19    0x39c26  2      
  addl $0x8, %esp                                #  20    0x39c28  3      
  addq %r15, %rsp                                #  21    0x39c2b  3      
  popq %rbx                                      #  22    0x39c2e  2      
  popq %r12                                      #  23    0x39c30  3      
  popq %r11                                      #  24    0x39c33  3      
  andl $0xffffffe0, %r11d                        #  25    0x39c36  7      
  addq %r15, %r11                                #  26    0x39c3d  3      
  jmpq %r11                                      #  27    0x39c40  3      
  nop                                            #  28    0x39c43  1      
  nop                                            #  29    0x39c44  1      
.L_39c60:                                        #        0x39c45  0      
  movl $0x10030d60, %edi                         #  30    0x39c45  5      
  nop                                            #  31    0x39c4a  1      
  nop                                            #  32    0x39c4b  1      
  callq .__cxa_guard_acquire                     #  33    0x39c4c  5      
  testl %eax, %eax                               #  34    0x39c51  2      
  je .L_39c00                                    #  35    0x39c53  6      
  nop                                            #  36    0x39c59  1      
  nop                                            #  37    0x39c5a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x39c5b  5      
  movl %eax, %edi                                #  39    0x39c60  2      
  movl $0x100206f0, %esi                         #  40    0x39c62  5      
  nop                                            #  41    0x39c67  1      
  nop                                            #  42    0x39c68  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x39c69  5      
  movl $0x10030d60, %edi                         #  44    0x39c6e  5      
  movl %eax, 0xfff70ef(%rip)                     #  45    0x39c73  6      
  nop                                            #  46    0x39c79  1      
  nop                                            #  47    0x39c7a  1      
  callq .__cxa_guard_release                     #  48    0x39c7b  5      
  movl 0xfff70e2(%rip), %eax                     #  49    0x39c80  6      
  testq %rax, %rax                               #  50    0x39c86  3      
  je .L_39c20                                    #  51    0x39c89  6      
  xchgw %ax, %ax                                 #  52    0x39c8f  3      
  nop                                            #  53    0x39c92  1      
.L_39d00:                                        #        0x39c93  0      
  cmpb $0x0, 0xfff70c6(%rip)                     #  54    0x39c93  7      
  je .L_39d80                                    #  55    0x39c9a  6      
  nop                                            #  56    0x39ca0  1      
  nop                                            #  57    0x39ca1  1      
.L_39d20:                                        #        0x39ca2  0      
  movl %eax, %eax                                #  58    0x39ca2  2      
  movl 0x14(%r15,%rax,1), %eax                   #  59    0x39ca4  5      
  movl %r12d, %r12d                              #  60    0x39ca9  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x39cac  5      
  nop                                            #  62    0x39cb1  1      
  andl $0xffffffe0, %eax                         #  63    0x39cb2  5      
  addq %r15, %rax                                #  64    0x39cb7  3      
  callq %rax                                     #  65    0x39cba  2      
  movl %ebx, %ebx                                #  66    0x39cbc  2      
  movl %eax, (%r15,%rbx,1)                       #  67    0x39cbe  4      
  sarq $0x20, %rax                               #  68    0x39cc2  4      
  movl %ebx, %ebx                                #  69    0x39cc6  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  70    0x39cc8  5      
  addl $0x8, %esp                                #  71    0x39ccd  3      
  addq %r15, %rsp                                #  72    0x39cd0  3      
  movl %ebx, %eax                                #  73    0x39cd3  2      
  popq %rbx                                      #  74    0x39cd5  2      
  popq %r12                                      #  75    0x39cd7  3      
  popq %r11                                      #  76    0x39cda  3      
  xchgw %ax, %ax                                 #  77    0x39cdd  3      
  andl $0xffffffe0, %r11d                        #  78    0x39ce0  7      
  addq %r15, %r11                                #  79    0x39ce7  3      
  jmpq %r11                                      #  80    0x39cea  3      
  nop                                            #  81    0x39ced  1      
  nop                                            #  82    0x39cee  1      
.L_39d80:                                        #        0x39cef  0      
  movl $0x10030d60, %edi                         #  83    0x39cef  5      
  nop                                            #  84    0x39cf4  1      
  nop                                            #  85    0x39cf5  1      
  callq .__cxa_guard_acquire                     #  86    0x39cf6  5      
  testl %eax, %eax                               #  87    0x39cfb  2      
  jne .L_39de0                                   #  88    0x39cfd  6      
  nop                                            #  89    0x39d03  1      
  nop                                            #  90    0x39d04  1      
.L_39dc0:                                        #        0x39d05  0      
  movl 0xfff705d(%rip), %eax                     #  91    0x39d05  6      
  jmpq .L_39d20                                  #  92    0x39d0b  5      
  nop                                            #  93    0x39d10  1      
  nop                                            #  94    0x39d11  1      
.L_39de0:                                        #        0x39d12  0      
  nop                                            #  95    0x39d12  1      
  nop                                            #  96    0x39d13  1      
  callq ._ZN2pp6Module3GetEv                     #  97    0x39d14  5      
  movl %eax, %edi                                #  98    0x39d19  2      
  movl $0x100206f0, %esi                         #  99    0x39d1b  5      
  nop                                            #  100   0x39d20  1      
  nop                                            #  101   0x39d21  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  102   0x39d22  5      
  movl $0x10030d60, %edi                         #  103   0x39d27  5      
  movl %eax, 0xfff7036(%rip)                     #  104   0x39d2c  6      
  nop                                            #  105   0x39d32  1      
  nop                                            #  106   0x39d33  1      
  callq .__cxa_guard_release                     #  107   0x39d34  5      
  jmpq .L_39dc0                                  #  108   0x39d39  5      
  nop                                            #  109   0x39d3e  1      
  nop                                            #  110   0x39d3f  1      
.L_39e60:                                        #        0x39d40  0      
  movl %eax, %ebx                                #  111   0x39d40  2      
  movl $0x10030d60, %edi                         #  112   0x39d42  5      
  nop                                            #  113   0x39d47  1      
  nop                                            #  114   0x39d48  1      
  callq .__cxa_guard_abort                       #  115   0x39d49  5      
  movl %ebx, %edi                                #  116   0x39d4e  2      
  nop                                            #  117   0x39d50  1      
  nop                                            #  118   0x39d51  1      
  callq ._Unwind_Resume                          #  119   0x39d52  5      
  jmpq .L_39e60                                  #  120   0x39d57  5      
  nop                                            #  121   0x39d5c  1      
  nop                                            #  122   0x39d5d  1      
                                                                          
.size _ZNK2pp15MouseInputEvent11GetMovementEv, .-_ZNK2pp15MouseInputEvent11GetMovementEv

