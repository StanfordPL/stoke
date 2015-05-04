  .text
  .globl _ZNK2pp15WheelInputEvent15GetScrollByPageEv
  .type _ZNK2pp15WheelInputEvent15GetScrollByPageEv, @function

#! file-offset 0x37260
#! rip-offset  0x37260
#! capacity    672 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent15GetScrollByPageEv:    #        0x37260  0      
  cmpb $0x0, 0xfff9ae9(%rip)                     #  1     0x37260  7      
  pushq %rbx                                     #  2     0x37267  2      
  movl %edi, %ebx                                #  3     0x37269  2      
  je .L_372c0                                    #  4     0x3726b  6      
  nop                                            #  5     0x37271  1      
  nop                                            #  6     0x37272  1      
.L_37280:                                        #        0x37273  0      
  movl 0xfff9adf(%rip), %edx                     #  7     0x37273  6      
  xorl %eax, %eax                                #  8     0x37279  2      
  testq %rdx, %rdx                               #  9     0x3727b  3      
  jne .L_37360                                   #  10    0x3727e  6      
  nop                                            #  11    0x37284  1      
.L_372a0:                                        #        0x37285  0      
  popq %rbx                                      #  12    0x37285  2      
  popq %r11                                      #  13    0x37287  3      
  andl $0xffffffe0, %r11d                        #  14    0x3728a  7      
  addq %r15, %r11                                #  15    0x37291  3      
  jmpq %r11                                      #  16    0x37294  3      
  nop                                            #  17    0x37297  1      
  nop                                            #  18    0x37298  1      
.L_372c0:                                        #        0x37299  0      
  movl $0x10030d50, %edi                         #  19    0x37299  5      
  nop                                            #  20    0x3729e  1      
  nop                                            #  21    0x3729f  1      
  callq .__cxa_guard_acquire                     #  22    0x372a0  5      
  testl %eax, %eax                               #  23    0x372a5  2      
  je .L_37280                                    #  24    0x372a7  6      
  nop                                            #  25    0x372ad  1      
  nop                                            #  26    0x372ae  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x372af  5      
  movl %eax, %edi                                #  28    0x372b4  2      
  movl $0x100206c0, %esi                         #  29    0x372b6  5      
  nop                                            #  30    0x372bb  1      
  nop                                            #  31    0x372bc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x372bd  5      
  movl $0x10030d50, %edi                         #  33    0x372c2  5      
  movl %eax, 0xfff9a8b(%rip)                     #  34    0x372c7  6      
  nop                                            #  35    0x372cd  1      
  nop                                            #  36    0x372ce  1      
  callq .__cxa_guard_release                     #  37    0x372cf  5      
  movl 0xfff9a7e(%rip), %edx                     #  38    0x372d4  6      
  xorl %eax, %eax                                #  39    0x372da  2      
  testq %rdx, %rdx                               #  40    0x372dc  3      
  je .L_372a0                                    #  41    0x372df  6      
  nop                                            #  42    0x372e5  1      
.L_37360:                                        #        0x372e6  0      
  cmpb $0x0, 0xfff9a63(%rip)                     #  43    0x372e6  7      
  je .L_373c0                                    #  44    0x372ed  6      
  nop                                            #  45    0x372f3  1      
  nop                                            #  46    0x372f4  1      
.L_37380:                                        #        0x372f5  0      
  movl %edx, %edx                                #  47    0x372f5  2      
  movl 0x10(%r15,%rdx,1), %eax                   #  48    0x372f7  5      
  movl %ebx, %ebx                                #  49    0x372fc  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  50    0x372fe  5      
  nop                                            #  51    0x37303  1      
  andl $0xffffffe0, %eax                         #  52    0x37304  5      
  addq %r15, %rax                                #  53    0x37309  3      
  callq %rax                                     #  54    0x3730c  2      
  popq %rbx                                      #  55    0x3730e  2      
  popq %r11                                      #  56    0x37310  3      
  testl %eax, %eax                               #  57    0x37313  2      
  setne %al                                      #  58    0x37315  3      
  andl $0xffffffe0, %r11d                        #  59    0x37318  7      
  addq %r15, %r11                                #  60    0x3731f  3      
  jmpq %r11                                      #  61    0x37322  3      
  nop                                            #  62    0x37325  1      
.L_373c0:                                        #        0x37326  0      
  movl $0x10030d50, %edi                         #  63    0x37326  5      
  nop                                            #  64    0x3732b  1      
  nop                                            #  65    0x3732c  1      
  callq .__cxa_guard_acquire                     #  66    0x3732d  5      
  testl %eax, %eax                               #  67    0x37332  2      
  jne .L_37420                                   #  68    0x37334  6      
  nop                                            #  69    0x3733a  1      
  nop                                            #  70    0x3733b  1      
.L_37400:                                        #        0x3733c  0      
  movl 0xfff9a16(%rip), %edx                     #  71    0x3733c  6      
  jmpq .L_37380                                  #  72    0x37342  5      
  nop                                            #  73    0x37347  1      
  nop                                            #  74    0x37348  1      
.L_37420:                                        #        0x37349  0      
  nop                                            #  75    0x37349  1      
  nop                                            #  76    0x3734a  1      
  callq ._ZN2pp6Module3GetEv                     #  77    0x3734b  5      
  movl %eax, %edi                                #  78    0x37350  2      
  movl $0x100206c0, %esi                         #  79    0x37352  5      
  nop                                            #  80    0x37357  1      
  nop                                            #  81    0x37358  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  82    0x37359  5      
  movl $0x10030d50, %edi                         #  83    0x3735e  5      
  movl %eax, 0xfff99ef(%rip)                     #  84    0x37363  6      
  nop                                            #  85    0x37369  1      
  nop                                            #  86    0x3736a  1      
  callq .__cxa_guard_release                     #  87    0x3736b  5      
  jmpq .L_37400                                  #  88    0x37370  5      
  nop                                            #  89    0x37375  1      
  nop                                            #  90    0x37376  1      
.L_374a0:                                        #        0x37377  0      
  movl %eax, %ebx                                #  91    0x37377  2      
  movl $0x10030d50, %edi                         #  92    0x37379  5      
  nop                                            #  93    0x3737e  1      
  nop                                            #  94    0x3737f  1      
  callq .__cxa_guard_abort                       #  95    0x37380  5      
  movl %ebx, %edi                                #  96    0x37385  2      
  nop                                            #  97    0x37387  1      
  nop                                            #  98    0x37388  1      
  callq ._Unwind_Resume                          #  99    0x37389  5      
  jmpq .L_374a0                                  #  100   0x3738e  5      
  nop                                            #  101   0x37393  1      
  nop                                            #  102   0x37394  1      
                                                                          
.size _ZNK2pp15WheelInputEvent15GetScrollByPageEv, .-_ZNK2pp15WheelInputEvent15GetScrollByPageEv

