  .text
  .globl _ZNK2pp15WheelInputEvent15GetScrollByPageEv
  .type _ZNK2pp15WheelInputEvent15GetScrollByPageEv, @function

#! file-offset 0x371e0
#! rip-offset  0x371e0
#! capacity    672 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent15GetScrollByPageEv:    #        0x371e0  0      
  cmpb $0x0, 0xfff9b69(%rip)                     #  1     0x371e0  7      
  pushq %rbx                                     #  2     0x371e7  2      
  movl %edi, %ebx                                #  3     0x371e9  2      
  je .L_37240                                    #  4     0x371eb  6      
  nop                                            #  5     0x371f1  1      
  nop                                            #  6     0x371f2  1      
.L_37200:                                        #        0x371f3  0      
  movl 0xfff9b5f(%rip), %edx                     #  7     0x371f3  6      
  xorl %eax, %eax                                #  8     0x371f9  2      
  testq %rdx, %rdx                               #  9     0x371fb  3      
  jne .L_372e0                                   #  10    0x371fe  6      
  nop                                            #  11    0x37204  1      
.L_37220:                                        #        0x37205  0      
  popq %rbx                                      #  12    0x37205  2      
  popq %r11                                      #  13    0x37207  3      
  andl $0xffffffe0, %r11d                        #  14    0x3720a  7      
  addq %r15, %r11                                #  15    0x37211  3      
  jmpq %r11                                      #  16    0x37214  3      
  nop                                            #  17    0x37217  1      
  nop                                            #  18    0x37218  1      
.L_37240:                                        #        0x37219  0      
  movl $0x10030d50, %edi                         #  19    0x37219  5      
  nop                                            #  20    0x3721e  1      
  nop                                            #  21    0x3721f  1      
  callq .__cxa_guard_acquire                     #  22    0x37220  5      
  testl %eax, %eax                               #  23    0x37225  2      
  je .L_37200                                    #  24    0x37227  6      
  nop                                            #  25    0x3722d  1      
  nop                                            #  26    0x3722e  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3722f  5      
  movl %eax, %edi                                #  28    0x37234  2      
  movl $0x100206c0, %esi                         #  29    0x37236  5      
  nop                                            #  30    0x3723b  1      
  nop                                            #  31    0x3723c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3723d  5      
  movl $0x10030d50, %edi                         #  33    0x37242  5      
  movl %eax, 0xfff9b0b(%rip)                     #  34    0x37247  6      
  nop                                            #  35    0x3724d  1      
  nop                                            #  36    0x3724e  1      
  callq .__cxa_guard_release                     #  37    0x3724f  5      
  movl 0xfff9afe(%rip), %edx                     #  38    0x37254  6      
  xorl %eax, %eax                                #  39    0x3725a  2      
  testq %rdx, %rdx                               #  40    0x3725c  3      
  je .L_37220                                    #  41    0x3725f  6      
  nop                                            #  42    0x37265  1      
.L_372e0:                                        #        0x37266  0      
  cmpb $0x0, 0xfff9ae3(%rip)                     #  43    0x37266  7      
  je .L_37340                                    #  44    0x3726d  6      
  nop                                            #  45    0x37273  1      
  nop                                            #  46    0x37274  1      
.L_37300:                                        #        0x37275  0      
  movl %edx, %edx                                #  47    0x37275  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  48    0x37277  5      
  movl %ebx, %ebx                                #  49    0x3727c  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  50    0x3727e  5      
  nop                                            #  51    0x37283  1      
  andl $0xffffffe0, %eax                         #  52    0x37284  5      
  addq %r15, %rax                                #  53    0x37289  3      
  callq %rax                                     #  54    0x3728c  2      
  popq %rbx                                      #  55    0x3728e  2      
  popq %r11                                      #  56    0x37290  3      
  testl %eax, %eax                               #  57    0x37293  2      
  setne %al                                      #  58    0x37295  3      
  andl $0xffffffe0, %r11d                        #  59    0x37298  7      
  addq %r15, %r11                                #  60    0x3729f  3      
  jmpq %r11                                      #  61    0x372a2  3      
  nop                                            #  62    0x372a5  1      
.L_37340:                                        #        0x372a6  0      
  movl $0x10030d50, %edi                         #  63    0x372a6  5      
  nop                                            #  64    0x372ab  1      
  nop                                            #  65    0x372ac  1      
  callq .__cxa_guard_acquire                     #  66    0x372ad  5      
  testl %eax, %eax                               #  67    0x372b2  2      
  jne .L_373a0                                   #  68    0x372b4  6      
  nop                                            #  69    0x372ba  1      
  nop                                            #  70    0x372bb  1      
.L_37380:                                        #        0x372bc  0      
  movl 0xfff9a96(%rip), %edx                     #  71    0x372bc  6      
  jmpq .L_37300                                  #  72    0x372c2  5      
  nop                                            #  73    0x372c7  1      
  nop                                            #  74    0x372c8  1      
.L_373a0:                                        #        0x372c9  0      
  nop                                            #  75    0x372c9  1      
  nop                                            #  76    0x372ca  1      
  callq ._ZN2pp6Module3GetEv                     #  77    0x372cb  5      
  movl %eax, %edi                                #  78    0x372d0  2      
  movl $0x100206c0, %esi                         #  79    0x372d2  5      
  nop                                            #  80    0x372d7  1      
  nop                                            #  81    0x372d8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  82    0x372d9  5      
  movl $0x10030d50, %edi                         #  83    0x372de  5      
  movl %eax, 0xfff9a6f(%rip)                     #  84    0x372e3  6      
  nop                                            #  85    0x372e9  1      
  nop                                            #  86    0x372ea  1      
  callq .__cxa_guard_release                     #  87    0x372eb  5      
  jmpq .L_37380                                  #  88    0x372f0  5      
  nop                                            #  89    0x372f5  1      
  nop                                            #  90    0x372f6  1      
.L_37420:                                        #        0x372f7  0      
  movl %eax, %ebx                                #  91    0x372f7  2      
  movl $0x10030d50, %edi                         #  92    0x372f9  5      
  nop                                            #  93    0x372fe  1      
  nop                                            #  94    0x372ff  1      
  callq .__cxa_guard_abort                       #  95    0x37300  5      
  movl %ebx, %edi                                #  96    0x37305  2      
  nop                                            #  97    0x37307  1      
  nop                                            #  98    0x37308  1      
  callq ._Unwind_Resume                          #  99    0x37309  5      
  jmpq .L_37420                                  #  100   0x3730e  5      
  nop                                            #  101   0x37313  1      
  nop                                            #  102   0x37314  1      
                                                                          
.size _ZNK2pp15WheelInputEvent15GetScrollByPageEv, .-_ZNK2pp15WheelInputEvent15GetScrollByPageEv

