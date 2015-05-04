  .text
  .globl _ZN2pp8Instance11IsFullFrameEv
  .type _ZN2pp8Instance11IsFullFrameEv, @function

#! file-offset 0x22b00
#! rip-offset  0x22b00
#! capacity    672 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance11IsFullFrameEv:                 #        0x22b00  0      
  cmpb $0x0, 0x1000e141(%rip)                    #  1     0x22b00  7      
  pushq %rbx                                     #  2     0x22b07  2      
  movl %edi, %ebx                                #  3     0x22b09  2      
  je .L_22b60                                    #  4     0x22b0b  6      
  nop                                            #  5     0x22b11  1      
  nop                                            #  6     0x22b12  1      
.L_22b20:                                        #        0x22b13  0      
  movl 0x1000e137(%rip), %edx                    #  7     0x22b13  6      
  xorl %eax, %eax                                #  8     0x22b19  2      
  testq %rdx, %rdx                               #  9     0x22b1b  3      
  jne .L_22c00                                   #  10    0x22b1e  6      
  nop                                            #  11    0x22b24  1      
.L_22b40:                                        #        0x22b25  0      
  popq %rbx                                      #  12    0x22b25  2      
  popq %r11                                      #  13    0x22b27  3      
  andl $0xffffffe0, %r11d                        #  14    0x22b2a  7      
  addq %r15, %r11                                #  15    0x22b31  3      
  jmpq %r11                                      #  16    0x22b34  3      
  nop                                            #  17    0x22b37  1      
  nop                                            #  18    0x22b38  1      
.L_22b60:                                        #        0x22b39  0      
  movl $0x10030c48, %edi                         #  19    0x22b39  5      
  nop                                            #  20    0x22b3e  1      
  nop                                            #  21    0x22b3f  1      
  callq .__cxa_guard_acquire                     #  22    0x22b40  5      
  testl %eax, %eax                               #  23    0x22b45  2      
  je .L_22b20                                    #  24    0x22b47  6      
  nop                                            #  25    0x22b4d  1      
  nop                                            #  26    0x22b4e  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x22b4f  5      
  movl %eax, %edi                                #  28    0x22b54  2      
  movl $0x100202ed, %esi                         #  29    0x22b56  5      
  nop                                            #  30    0x22b5b  1      
  nop                                            #  31    0x22b5c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x22b5d  5      
  movl $0x10030c48, %edi                         #  33    0x22b62  5      
  movl %eax, 0x1000e0e3(%rip)                    #  34    0x22b67  6      
  nop                                            #  35    0x22b6d  1      
  nop                                            #  36    0x22b6e  1      
  callq .__cxa_guard_release                     #  37    0x22b6f  5      
  movl 0x1000e0d6(%rip), %edx                    #  38    0x22b74  6      
  xorl %eax, %eax                                #  39    0x22b7a  2      
  testq %rdx, %rdx                               #  40    0x22b7c  3      
  je .L_22b40                                    #  41    0x22b7f  6      
  nop                                            #  42    0x22b85  1      
.L_22c00:                                        #        0x22b86  0      
  cmpb $0x0, 0x1000e0bb(%rip)                    #  43    0x22b86  7      
  je .L_22c60                                    #  44    0x22b8d  6      
  nop                                            #  45    0x22b93  1      
  nop                                            #  46    0x22b94  1      
.L_22c20:                                        #        0x22b95  0      
  movl %edx, %edx                                #  47    0x22b95  2      
  movl 0x4(%r15,%rdx,1), %eax                    #  48    0x22b97  5      
  movl %ebx, %ebx                                #  49    0x22b9c  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  50    0x22b9e  5      
  nop                                            #  51    0x22ba3  1      
  andl $0xffffffe0, %eax                         #  52    0x22ba4  5      
  addq %r15, %rax                                #  53    0x22ba9  3      
  callq %rax                                     #  54    0x22bac  2      
  popq %rbx                                      #  55    0x22bae  2      
  popq %r11                                      #  56    0x22bb0  3      
  testl %eax, %eax                               #  57    0x22bb3  2      
  setne %al                                      #  58    0x22bb5  3      
  andl $0xffffffe0, %r11d                        #  59    0x22bb8  7      
  addq %r15, %r11                                #  60    0x22bbf  3      
  jmpq %r11                                      #  61    0x22bc2  3      
  nop                                            #  62    0x22bc5  1      
.L_22c60:                                        #        0x22bc6  0      
  movl $0x10030c48, %edi                         #  63    0x22bc6  5      
  nop                                            #  64    0x22bcb  1      
  nop                                            #  65    0x22bcc  1      
  callq .__cxa_guard_acquire                     #  66    0x22bcd  5      
  testl %eax, %eax                               #  67    0x22bd2  2      
  jne .L_22cc0                                   #  68    0x22bd4  6      
  nop                                            #  69    0x22bda  1      
  nop                                            #  70    0x22bdb  1      
.L_22ca0:                                        #        0x22bdc  0      
  movl 0x1000e06e(%rip), %edx                    #  71    0x22bdc  6      
  jmpq .L_22c20                                  #  72    0x22be2  5      
  nop                                            #  73    0x22be7  1      
  nop                                            #  74    0x22be8  1      
.L_22cc0:                                        #        0x22be9  0      
  nop                                            #  75    0x22be9  1      
  nop                                            #  76    0x22bea  1      
  callq ._ZN2pp6Module3GetEv                     #  77    0x22beb  5      
  movl %eax, %edi                                #  78    0x22bf0  2      
  movl $0x100202ed, %esi                         #  79    0x22bf2  5      
  nop                                            #  80    0x22bf7  1      
  nop                                            #  81    0x22bf8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  82    0x22bf9  5      
  movl $0x10030c48, %edi                         #  83    0x22bfe  5      
  movl %eax, 0x1000e047(%rip)                    #  84    0x22c03  6      
  nop                                            #  85    0x22c09  1      
  nop                                            #  86    0x22c0a  1      
  callq .__cxa_guard_release                     #  87    0x22c0b  5      
  jmpq .L_22ca0                                  #  88    0x22c10  5      
  nop                                            #  89    0x22c15  1      
  nop                                            #  90    0x22c16  1      
.L_22d40:                                        #        0x22c17  0      
  movl %eax, %ebx                                #  91    0x22c17  2      
  movl $0x10030c48, %edi                         #  92    0x22c19  5      
  nop                                            #  93    0x22c1e  1      
  nop                                            #  94    0x22c1f  1      
  callq .__cxa_guard_abort                       #  95    0x22c20  5      
  movl %ebx, %edi                                #  96    0x22c25  2      
  nop                                            #  97    0x22c27  1      
  nop                                            #  98    0x22c28  1      
  callq ._Unwind_Resume                          #  99    0x22c29  5      
  jmpq .L_22d40                                  #  100   0x22c2e  5      
  nop                                            #  101   0x22c33  1      
  nop                                            #  102   0x22c34  1      
                                                                          
.size _ZN2pp8Instance11IsFullFrameEv, .-_ZN2pp8Instance11IsFullFrameEv

