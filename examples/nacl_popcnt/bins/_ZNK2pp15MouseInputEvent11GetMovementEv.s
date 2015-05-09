  .text
  .globl _ZNK2pp15MouseInputEvent11GetMovementEv
  .type _ZNK2pp15MouseInputEvent11GetMovementEv, @function

#! file-offset 0x39b40
#! rip-offset  0x39b40
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent11GetMovementEv:        #        0x39b40  0      
  pushq %r12                                     #  1     0x39b40  3      
  movl %esi, %r12d                               #  2     0x39b43  3      
  pushq %rbx                                     #  3     0x39b46  2      
  movl %edi, %ebx                                #  4     0x39b48  2      
  subl $0x8, %esp                                #  5     0x39b4a  3      
  addq %r15, %rsp                                #  6     0x39b4d  3      
  cmpb $0x0, 0xfff7209(%rip)                     #  7     0x39b50  7      
  je .L_39bc0                                    #  8     0x39b57  6      
  nop                                            #  9     0x39b5d  1      
.L_39b60:                                        #        0x39b5e  0      
  movl 0xfff7204(%rip), %eax                     #  10    0x39b5e  6      
  testq %rax, %rax                               #  11    0x39b64  3      
  jne .L_39c60                                   #  12    0x39b67  6      
  xchgw %ax, %ax                                 #  13    0x39b6d  3      
  nop                                            #  14    0x39b70  1      
.L_39b80:                                        #        0x39b71  0      
  movl %ebx, %ebx                                #  15    0x39b71  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x39b73  8      
  movl %ebx, %ebx                                #  17    0x39b7b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x39b7d  9      
  movl %ebx, %eax                                #  19    0x39b86  2      
  addl $0x8, %esp                                #  20    0x39b88  3      
  addq %r15, %rsp                                #  21    0x39b8b  3      
  popq %rbx                                      #  22    0x39b8e  2      
  popq %r12                                      #  23    0x39b90  3      
  popq %r11                                      #  24    0x39b93  3      
  andl $0xffffffe0, %r11d                        #  25    0x39b96  7      
  addq %r15, %r11                                #  26    0x39b9d  3      
  jmpq %r11                                      #  27    0x39ba0  3      
  nop                                            #  28    0x39ba3  1      
  nop                                            #  29    0x39ba4  1      
.L_39bc0:                                        #        0x39ba5  0      
  movl $0x10030d60, %edi                         #  30    0x39ba5  5      
  nop                                            #  31    0x39baa  1      
  nop                                            #  32    0x39bab  1      
  callq .__cxa_guard_acquire                     #  33    0x39bac  5      
  testl %eax, %eax                               #  34    0x39bb1  2      
  je .L_39b60                                    #  35    0x39bb3  6      
  nop                                            #  36    0x39bb9  1      
  nop                                            #  37    0x39bba  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x39bbb  5      
  movl %eax, %edi                                #  39    0x39bc0  2      
  movl $0x100206f0, %esi                         #  40    0x39bc2  5      
  nop                                            #  41    0x39bc7  1      
  nop                                            #  42    0x39bc8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x39bc9  5      
  movl $0x10030d60, %edi                         #  44    0x39bce  5      
  movl %eax, 0xfff718f(%rip)                     #  45    0x39bd3  6      
  nop                                            #  46    0x39bd9  1      
  nop                                            #  47    0x39bda  1      
  callq .__cxa_guard_release                     #  48    0x39bdb  5      
  movl 0xfff7182(%rip), %eax                     #  49    0x39be0  6      
  testq %rax, %rax                               #  50    0x39be6  3      
  je .L_39b80                                    #  51    0x39be9  6      
  xchgw %ax, %ax                                 #  52    0x39bef  3      
  nop                                            #  53    0x39bf2  1      
.L_39c60:                                        #        0x39bf3  0      
  cmpb $0x0, 0xfff7166(%rip)                     #  54    0x39bf3  7      
  je .L_39ce0                                    #  55    0x39bfa  6      
  nop                                            #  56    0x39c00  1      
  nop                                            #  57    0x39c01  1      
.L_39c80:                                        #        0x39c02  0      
  movl %eax, %eax                                #  58    0x39c02  2      
  movl 0x14(%r15,%rax,1), %eax                   #  59    0x39c04  5      
  movl %r12d, %r12d                              #  60    0x39c09  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x39c0c  5      
  nop                                            #  62    0x39c11  1      
  andl $0xffffffe0, %eax                         #  63    0x39c12  5      
  addq %r15, %rax                                #  64    0x39c17  3      
  callq %rax                                     #  65    0x39c1a  2      
  movl %ebx, %ebx                                #  66    0x39c1c  2      
  movl %eax, (%r15,%rbx,1)                       #  67    0x39c1e  4      
  sarq $0x20, %rax                               #  68    0x39c22  4      
  movl %ebx, %ebx                                #  69    0x39c26  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  70    0x39c28  5      
  addl $0x8, %esp                                #  71    0x39c2d  3      
  addq %r15, %rsp                                #  72    0x39c30  3      
  movl %ebx, %eax                                #  73    0x39c33  2      
  popq %rbx                                      #  74    0x39c35  2      
  popq %r12                                      #  75    0x39c37  3      
  popq %r11                                      #  76    0x39c3a  3      
  xchgw %ax, %ax                                 #  77    0x39c3d  3      
  andl $0xffffffe0, %r11d                        #  78    0x39c40  7      
  addq %r15, %r11                                #  79    0x39c47  3      
  jmpq %r11                                      #  80    0x39c4a  3      
  nop                                            #  81    0x39c4d  1      
  nop                                            #  82    0x39c4e  1      
.L_39ce0:                                        #        0x39c4f  0      
  movl $0x10030d60, %edi                         #  83    0x39c4f  5      
  nop                                            #  84    0x39c54  1      
  nop                                            #  85    0x39c55  1      
  callq .__cxa_guard_acquire                     #  86    0x39c56  5      
  testl %eax, %eax                               #  87    0x39c5b  2      
  jne .L_39d40                                   #  88    0x39c5d  6      
  nop                                            #  89    0x39c63  1      
  nop                                            #  90    0x39c64  1      
.L_39d20:                                        #        0x39c65  0      
  movl 0xfff70fd(%rip), %eax                     #  91    0x39c65  6      
  jmpq .L_39c80                                  #  92    0x39c6b  5      
  nop                                            #  93    0x39c70  1      
  nop                                            #  94    0x39c71  1      
.L_39d40:                                        #        0x39c72  0      
  nop                                            #  95    0x39c72  1      
  nop                                            #  96    0x39c73  1      
  callq ._ZN2pp6Module3GetEv                     #  97    0x39c74  5      
  movl %eax, %edi                                #  98    0x39c79  2      
  movl $0x100206f0, %esi                         #  99    0x39c7b  5      
  nop                                            #  100   0x39c80  1      
  nop                                            #  101   0x39c81  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  102   0x39c82  5      
  movl $0x10030d60, %edi                         #  103   0x39c87  5      
  movl %eax, 0xfff70d6(%rip)                     #  104   0x39c8c  6      
  nop                                            #  105   0x39c92  1      
  nop                                            #  106   0x39c93  1      
  callq .__cxa_guard_release                     #  107   0x39c94  5      
  jmpq .L_39d20                                  #  108   0x39c99  5      
  nop                                            #  109   0x39c9e  1      
  nop                                            #  110   0x39c9f  1      
.L_39dc0:                                        #        0x39ca0  0      
  movl %eax, %ebx                                #  111   0x39ca0  2      
  movl $0x10030d60, %edi                         #  112   0x39ca2  5      
  nop                                            #  113   0x39ca7  1      
  nop                                            #  114   0x39ca8  1      
  callq .__cxa_guard_abort                       #  115   0x39ca9  5      
  movl %ebx, %edi                                #  116   0x39cae  2      
  nop                                            #  117   0x39cb0  1      
  nop                                            #  118   0x39cb1  1      
  callq ._Unwind_Resume                          #  119   0x39cb2  5      
  jmpq .L_39dc0                                  #  120   0x39cb7  5      
  nop                                            #  121   0x39cbc  1      
  nop                                            #  122   0x39cbd  1      
                                                                          
.size _ZNK2pp15MouseInputEvent11GetMovementEv, .-_ZNK2pp15MouseInputEvent11GetMovementEv

