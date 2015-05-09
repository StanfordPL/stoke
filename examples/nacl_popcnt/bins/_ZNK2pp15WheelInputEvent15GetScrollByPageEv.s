  .text
  .globl _ZNK2pp15WheelInputEvent15GetScrollByPageEv
  .type _ZNK2pp15WheelInputEvent15GetScrollByPageEv, @function

#! file-offset 0x371c0
#! rip-offset  0x371c0
#! capacity    672 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent15GetScrollByPageEv:    #        0x371c0  0      
  cmpb $0x0, 0xfff9b89(%rip)                     #  1     0x371c0  7      
  pushq %rbx                                     #  2     0x371c7  2      
  movl %edi, %ebx                                #  3     0x371c9  2      
  je .L_37220                                    #  4     0x371cb  6      
  nop                                            #  5     0x371d1  1      
  nop                                            #  6     0x371d2  1      
.L_371e0:                                        #        0x371d3  0      
  movl 0xfff9b7f(%rip), %edx                     #  7     0x371d3  6      
  xorl %eax, %eax                                #  8     0x371d9  2      
  testq %rdx, %rdx                               #  9     0x371db  3      
  jne .L_372c0                                   #  10    0x371de  6      
  nop                                            #  11    0x371e4  1      
.L_37200:                                        #        0x371e5  0      
  popq %rbx                                      #  12    0x371e5  2      
  popq %r11                                      #  13    0x371e7  3      
  andl $0xffffffe0, %r11d                        #  14    0x371ea  7      
  addq %r15, %r11                                #  15    0x371f1  3      
  jmpq %r11                                      #  16    0x371f4  3      
  nop                                            #  17    0x371f7  1      
  nop                                            #  18    0x371f8  1      
.L_37220:                                        #        0x371f9  0      
  movl $0x10030d50, %edi                         #  19    0x371f9  5      
  nop                                            #  20    0x371fe  1      
  nop                                            #  21    0x371ff  1      
  callq .__cxa_guard_acquire                     #  22    0x37200  5      
  testl %eax, %eax                               #  23    0x37205  2      
  je .L_371e0                                    #  24    0x37207  6      
  nop                                            #  25    0x3720d  1      
  nop                                            #  26    0x3720e  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3720f  5      
  movl %eax, %edi                                #  28    0x37214  2      
  movl $0x100206c0, %esi                         #  29    0x37216  5      
  nop                                            #  30    0x3721b  1      
  nop                                            #  31    0x3721c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3721d  5      
  movl $0x10030d50, %edi                         #  33    0x37222  5      
  movl %eax, 0xfff9b2b(%rip)                     #  34    0x37227  6      
  nop                                            #  35    0x3722d  1      
  nop                                            #  36    0x3722e  1      
  callq .__cxa_guard_release                     #  37    0x3722f  5      
  movl 0xfff9b1e(%rip), %edx                     #  38    0x37234  6      
  xorl %eax, %eax                                #  39    0x3723a  2      
  testq %rdx, %rdx                               #  40    0x3723c  3      
  je .L_37200                                    #  41    0x3723f  6      
  nop                                            #  42    0x37245  1      
.L_372c0:                                        #        0x37246  0      
  cmpb $0x0, 0xfff9b03(%rip)                     #  43    0x37246  7      
  je .L_37320                                    #  44    0x3724d  6      
  nop                                            #  45    0x37253  1      
  nop                                            #  46    0x37254  1      
.L_372e0:                                        #        0x37255  0      
  movl %edx, %edx                                #  47    0x37255  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  48    0x37257  5      
  movl %ebx, %ebx                                #  49    0x3725c  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  50    0x3725e  5      
  nop                                            #  51    0x37263  1      
  andl $0xffffffe0, %eax                         #  52    0x37264  5      
  addq %r15, %rax                                #  53    0x37269  3      
  callq %rax                                     #  54    0x3726c  2      
  popq %rbx                                      #  55    0x3726e  2      
  popq %r11                                      #  56    0x37270  3      
  testl %eax, %eax                               #  57    0x37273  2      
  setne %al                                      #  58    0x37275  3      
  andl $0xffffffe0, %r11d                        #  59    0x37278  7      
  addq %r15, %r11                                #  60    0x3727f  3      
  jmpq %r11                                      #  61    0x37282  3      
  nop                                            #  62    0x37285  1      
.L_37320:                                        #        0x37286  0      
  movl $0x10030d50, %edi                         #  63    0x37286  5      
  nop                                            #  64    0x3728b  1      
  nop                                            #  65    0x3728c  1      
  callq .__cxa_guard_acquire                     #  66    0x3728d  5      
  testl %eax, %eax                               #  67    0x37292  2      
  jne .L_37380                                   #  68    0x37294  6      
  nop                                            #  69    0x3729a  1      
  nop                                            #  70    0x3729b  1      
.L_37360:                                        #        0x3729c  0      
  movl 0xfff9ab6(%rip), %edx                     #  71    0x3729c  6      
  jmpq .L_372e0                                  #  72    0x372a2  5      
  nop                                            #  73    0x372a7  1      
  nop                                            #  74    0x372a8  1      
.L_37380:                                        #        0x372a9  0      
  nop                                            #  75    0x372a9  1      
  nop                                            #  76    0x372aa  1      
  callq ._ZN2pp6Module3GetEv                     #  77    0x372ab  5      
  movl %eax, %edi                                #  78    0x372b0  2      
  movl $0x100206c0, %esi                         #  79    0x372b2  5      
  nop                                            #  80    0x372b7  1      
  nop                                            #  81    0x372b8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  82    0x372b9  5      
  movl $0x10030d50, %edi                         #  83    0x372be  5      
  movl %eax, 0xfff9a8f(%rip)                     #  84    0x372c3  6      
  nop                                            #  85    0x372c9  1      
  nop                                            #  86    0x372ca  1      
  callq .__cxa_guard_release                     #  87    0x372cb  5      
  jmpq .L_37360                                  #  88    0x372d0  5      
  nop                                            #  89    0x372d5  1      
  nop                                            #  90    0x372d6  1      
.L_37400:                                        #        0x372d7  0      
  movl %eax, %ebx                                #  91    0x372d7  2      
  movl $0x10030d50, %edi                         #  92    0x372d9  5      
  nop                                            #  93    0x372de  1      
  nop                                            #  94    0x372df  1      
  callq .__cxa_guard_abort                       #  95    0x372e0  5      
  movl %ebx, %edi                                #  96    0x372e5  2      
  nop                                            #  97    0x372e7  1      
  nop                                            #  98    0x372e8  1      
  callq ._Unwind_Resume                          #  99    0x372e9  5      
  jmpq .L_37400                                  #  100   0x372ee  5      
  nop                                            #  101   0x372f3  1      
  nop                                            #  102   0x372f4  1      
                                                                          
.size _ZNK2pp15WheelInputEvent15GetScrollByPageEv, .-_ZNK2pp15WheelInputEvent15GetScrollByPageEv

