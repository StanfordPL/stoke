  .text
  .globl _ZN2pp8Instance11IsFullFrameEv
  .type _ZN2pp8Instance11IsFullFrameEv, @function

#! file-offset 0x22a60
#! rip-offset  0x22a60
#! capacity    672 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance11IsFullFrameEv:                 #        0x22a60  0      
  cmpb $0x0, 0x1000e1e1(%rip)                    #  1     0x22a60  7      
  pushq %rbx                                     #  2     0x22a67  2      
  movl %edi, %ebx                                #  3     0x22a69  2      
  je .L_22ac0                                    #  4     0x22a6b  6      
  nop                                            #  5     0x22a71  1      
  nop                                            #  6     0x22a72  1      
.L_22a80:                                        #        0x22a73  0      
  movl 0x1000e1d7(%rip), %edx                    #  7     0x22a73  6      
  xorl %eax, %eax                                #  8     0x22a79  2      
  testq %rdx, %rdx                               #  9     0x22a7b  3      
  jne .L_22b60                                   #  10    0x22a7e  6      
  nop                                            #  11    0x22a84  1      
.L_22aa0:                                        #        0x22a85  0      
  popq %rbx                                      #  12    0x22a85  2      
  popq %r11                                      #  13    0x22a87  3      
  andl $0xffffffe0, %r11d                        #  14    0x22a8a  7      
  addq %r15, %r11                                #  15    0x22a91  3      
  jmpq %r11                                      #  16    0x22a94  3      
  nop                                            #  17    0x22a97  1      
  nop                                            #  18    0x22a98  1      
.L_22ac0:                                        #        0x22a99  0      
  movl $0x10030c48, %edi                         #  19    0x22a99  5      
  nop                                            #  20    0x22a9e  1      
  nop                                            #  21    0x22a9f  1      
  callq .__cxa_guard_acquire                     #  22    0x22aa0  5      
  testl %eax, %eax                               #  23    0x22aa5  2      
  je .L_22a80                                    #  24    0x22aa7  6      
  nop                                            #  25    0x22aad  1      
  nop                                            #  26    0x22aae  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x22aaf  5      
  movl %eax, %edi                                #  28    0x22ab4  2      
  movl $0x100202ed, %esi                         #  29    0x22ab6  5      
  nop                                            #  30    0x22abb  1      
  nop                                            #  31    0x22abc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x22abd  5      
  movl $0x10030c48, %edi                         #  33    0x22ac2  5      
  movl %eax, 0x1000e183(%rip)                    #  34    0x22ac7  6      
  nop                                            #  35    0x22acd  1      
  nop                                            #  36    0x22ace  1      
  callq .__cxa_guard_release                     #  37    0x22acf  5      
  movl 0x1000e176(%rip), %edx                    #  38    0x22ad4  6      
  xorl %eax, %eax                                #  39    0x22ada  2      
  testq %rdx, %rdx                               #  40    0x22adc  3      
  je .L_22aa0                                    #  41    0x22adf  6      
  nop                                            #  42    0x22ae5  1      
.L_22b60:                                        #        0x22ae6  0      
  cmpb $0x0, 0x1000e15b(%rip)                    #  43    0x22ae6  7      
  je .L_22bc0                                    #  44    0x22aed  6      
  nop                                            #  45    0x22af3  1      
  nop                                            #  46    0x22af4  1      
.L_22b80:                                        #        0x22af5  0      
  movl %edx, %edx                                #  47    0x22af5  2      
  movl 0x4(%r15,%rdx,1), %eax                    #  48    0x22af7  5      
  movl %ebx, %ebx                                #  49    0x22afc  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  50    0x22afe  5      
  nop                                            #  51    0x22b03  1      
  andl $0xffffffe0, %eax                         #  52    0x22b04  5      
  addq %r15, %rax                                #  53    0x22b09  3      
  callq %rax                                     #  54    0x22b0c  2      
  popq %rbx                                      #  55    0x22b0e  2      
  popq %r11                                      #  56    0x22b10  3      
  testl %eax, %eax                               #  57    0x22b13  2      
  setne %al                                      #  58    0x22b15  3      
  andl $0xffffffe0, %r11d                        #  59    0x22b18  7      
  addq %r15, %r11                                #  60    0x22b1f  3      
  jmpq %r11                                      #  61    0x22b22  3      
  nop                                            #  62    0x22b25  1      
.L_22bc0:                                        #        0x22b26  0      
  movl $0x10030c48, %edi                         #  63    0x22b26  5      
  nop                                            #  64    0x22b2b  1      
  nop                                            #  65    0x22b2c  1      
  callq .__cxa_guard_acquire                     #  66    0x22b2d  5      
  testl %eax, %eax                               #  67    0x22b32  2      
  jne .L_22c20                                   #  68    0x22b34  6      
  nop                                            #  69    0x22b3a  1      
  nop                                            #  70    0x22b3b  1      
.L_22c00:                                        #        0x22b3c  0      
  movl 0x1000e10e(%rip), %edx                    #  71    0x22b3c  6      
  jmpq .L_22b80                                  #  72    0x22b42  5      
  nop                                            #  73    0x22b47  1      
  nop                                            #  74    0x22b48  1      
.L_22c20:                                        #        0x22b49  0      
  nop                                            #  75    0x22b49  1      
  nop                                            #  76    0x22b4a  1      
  callq ._ZN2pp6Module3GetEv                     #  77    0x22b4b  5      
  movl %eax, %edi                                #  78    0x22b50  2      
  movl $0x100202ed, %esi                         #  79    0x22b52  5      
  nop                                            #  80    0x22b57  1      
  nop                                            #  81    0x22b58  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  82    0x22b59  5      
  movl $0x10030c48, %edi                         #  83    0x22b5e  5      
  movl %eax, 0x1000e0e7(%rip)                    #  84    0x22b63  6      
  nop                                            #  85    0x22b69  1      
  nop                                            #  86    0x22b6a  1      
  callq .__cxa_guard_release                     #  87    0x22b6b  5      
  jmpq .L_22c00                                  #  88    0x22b70  5      
  nop                                            #  89    0x22b75  1      
  nop                                            #  90    0x22b76  1      
.L_22ca0:                                        #        0x22b77  0      
  movl %eax, %ebx                                #  91    0x22b77  2      
  movl $0x10030c48, %edi                         #  92    0x22b79  5      
  nop                                            #  93    0x22b7e  1      
  nop                                            #  94    0x22b7f  1      
  callq .__cxa_guard_abort                       #  95    0x22b80  5      
  movl %ebx, %edi                                #  96    0x22b85  2      
  nop                                            #  97    0x22b87  1      
  nop                                            #  98    0x22b88  1      
  callq ._Unwind_Resume                          #  99    0x22b89  5      
  jmpq .L_22ca0                                  #  100   0x22b8e  5      
  nop                                            #  101   0x22b93  1      
  nop                                            #  102   0x22b94  1      
                                                                          
.size _ZN2pp8Instance11IsFullFrameEv, .-_ZN2pp8Instance11IsFullFrameEv

