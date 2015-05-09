  .text
  .globl _ZNK2pp10InputEvent7GetTypeEv
  .type _ZNK2pp10InputEvent7GetTypeEv, @function

#! file-offset 0x36c00
#! rip-offset  0x36c00
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent7GetTypeEv:                  #        0x36c00  0      
  cmpb $0x0, 0xfffa169(%rip)                     #  1     0x36c00  7      
  pushq %rbx                                     #  2     0x36c07  2      
  movl %edi, %ebx                                #  3     0x36c09  2      
  je .L_36c60                                    #  4     0x36c0b  6      
  nop                                            #  5     0x36c11  1      
  nop                                            #  6     0x36c12  1      
.L_36c20:                                        #        0x36c13  0      
  movl 0xfffa15f(%rip), %eax                     #  7     0x36c13  6      
  testq %rax, %rax                               #  8     0x36c19  3      
  jne .L_36d00                                   #  9     0x36c1c  6      
  xchgw %ax, %ax                                 #  10    0x36c22  3      
  nop                                            #  11    0x36c25  1      
.L_36c40:                                        #        0x36c26  0      
  popq %rbx                                      #  12    0x36c26  2      
  popq %r11                                      #  13    0x36c28  3      
  movl $0xffffffff, %eax                         #  14    0x36c2b  5      
  andl $0xffffffe0, %r11d                        #  15    0x36c30  7      
  addq %r15, %r11                                #  16    0x36c37  3      
  jmpq %r11                                      #  17    0x36c3a  3      
  nop                                            #  18    0x36c3d  1      
.L_36c60:                                        #        0x36c3e  0      
  movl $0x10030d70, %edi                         #  19    0x36c3e  5      
  nop                                            #  20    0x36c43  1      
  nop                                            #  21    0x36c44  1      
  callq .__cxa_guard_acquire                     #  22    0x36c45  5      
  testl %eax, %eax                               #  23    0x36c4a  2      
  je .L_36c20                                    #  24    0x36c4c  6      
  nop                                            #  25    0x36c52  1      
  nop                                            #  26    0x36c53  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36c54  5      
  movl %eax, %edi                                #  28    0x36c59  2      
  movl $0x100202c8, %esi                         #  29    0x36c5b  5      
  nop                                            #  30    0x36c60  1      
  nop                                            #  31    0x36c61  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x36c62  5      
  movl $0x10030d70, %edi                         #  33    0x36c67  5      
  movl %eax, 0xfffa106(%rip)                     #  34    0x36c6c  6      
  nop                                            #  35    0x36c72  1      
  nop                                            #  36    0x36c73  1      
  callq .__cxa_guard_release                     #  37    0x36c74  5      
  movl 0xfffa0f9(%rip), %eax                     #  38    0x36c79  6      
  testq %rax, %rax                               #  39    0x36c7f  3      
  je .L_36c40                                    #  40    0x36c82  6      
  xchgw %ax, %ax                                 #  41    0x36c88  3      
  nop                                            #  42    0x36c8b  1      
.L_36d00:                                        #        0x36c8c  0      
  cmpb $0x0, 0xfffa0dd(%rip)                     #  43    0x36c8c  7      
  je .L_36d20                                    #  44    0x36c93  6      
  movl %ebx, %ebx                                #  45    0x36c99  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36c9b  5      
  movl %eax, %eax                                #  47    0x36ca0  2      
  movl 0x10(%r15,%rax,1), %eax                   #  48    0x36ca2  5      
  popq %rbx                                      #  49    0x36ca7  2      
  andl $0xffffffe0, %eax                         #  50    0x36ca9  5      
  addq %r15, %rax                                #  51    0x36cae  3      
  jmpq %rax                                      #  52    0x36cb1  2      
.L_36d20:                                        #        0x36cb3  0      
  movl $0x10030d70, %edi                         #  53    0x36cb3  5      
  nop                                            #  54    0x36cb8  1      
  nop                                            #  55    0x36cb9  1      
  callq .__cxa_guard_acquire                     #  56    0x36cba  5      
  testl %eax, %eax                               #  57    0x36cbf  2      
  jne .L_36d80                                   #  58    0x36cc1  6      
  nop                                            #  59    0x36cc7  1      
  nop                                            #  60    0x36cc8  1      
.L_36d60:                                        #        0x36cc9  0      
  movl 0xfffa0a9(%rip), %eax                     #  61    0x36cc9  6      
  movl %ebx, %ebx                                #  62    0x36ccf  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x36cd1  5      
  popq %rbx                                      #  64    0x36cd6  2      
  movl %eax, %eax                                #  65    0x36cd8  2      
  movl 0x10(%r15,%rax,1), %eax                   #  66    0x36cda  5      
  andl $0xffffffe0, %eax                         #  67    0x36cdf  5      
  addq %r15, %rax                                #  68    0x36ce4  3      
  jmpq %rax                                      #  69    0x36ce7  2      
  nop                                            #  70    0x36ce9  1      
.L_36d80:                                        #        0x36cea  0      
  nop                                            #  71    0x36cea  1      
  nop                                            #  72    0x36ceb  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36cec  5      
  movl %eax, %edi                                #  74    0x36cf1  2      
  movl $0x100202c8, %esi                         #  75    0x36cf3  5      
  nop                                            #  76    0x36cf8  1      
  nop                                            #  77    0x36cf9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36cfa  5      
  movl $0x10030d70, %edi                         #  79    0x36cff  5      
  movl %eax, 0xfffa06e(%rip)                     #  80    0x36d04  6      
  nop                                            #  81    0x36d0a  1      
  nop                                            #  82    0x36d0b  1      
  callq .__cxa_guard_release                     #  83    0x36d0c  5      
  jmpq .L_36d60                                  #  84    0x36d11  5      
  nop                                            #  85    0x36d16  1      
  nop                                            #  86    0x36d17  1      
.L_36e00:                                        #        0x36d18  0      
  movl %eax, %ebx                                #  87    0x36d18  2      
  movl $0x10030d70, %edi                         #  88    0x36d1a  5      
  nop                                            #  89    0x36d1f  1      
  nop                                            #  90    0x36d20  1      
  callq .__cxa_guard_abort                       #  91    0x36d21  5      
  movl %ebx, %edi                                #  92    0x36d26  2      
  nop                                            #  93    0x36d28  1      
  nop                                            #  94    0x36d29  1      
  callq ._Unwind_Resume                          #  95    0x36d2a  5      
  jmpq .L_36e00                                  #  96    0x36d2f  5      
  nop                                            #  97    0x36d34  1      
  nop                                            #  98    0x36d35  1      
                                                                          
.size _ZNK2pp10InputEvent7GetTypeEv, .-_ZNK2pp10InputEvent7GetTypeEv

