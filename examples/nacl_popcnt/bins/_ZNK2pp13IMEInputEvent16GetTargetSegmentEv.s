  .text
  .globl _ZNK2pp13IMEInputEvent16GetTargetSegmentEv
  .type _ZNK2pp13IMEInputEvent16GetTargetSegmentEv, @function

#! file-offset 0x3e8a0
#! rip-offset  0x3e8a0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetTargetSegmentEv:     #        0x3e8a0  0      
  cmpb $0x0, 0xfff2469(%rip)                     #  1     0x3e8a0  7      
  pushq %rbx                                     #  2     0x3e8a7  2      
  movl %edi, %ebx                                #  3     0x3e8a9  2      
  je .L_3e900                                    #  4     0x3e8ab  6      
  nop                                            #  5     0x3e8b1  1      
  nop                                            #  6     0x3e8b2  1      
.L_3e8c0:                                        #        0x3e8b3  0      
  movl 0xfff245f(%rip), %eax                     #  7     0x3e8b3  6      
  testq %rax, %rax                               #  8     0x3e8b9  3      
  jne .L_3e9a0                                   #  9     0x3e8bc  6      
  xchgw %ax, %ax                                 #  10    0x3e8c2  3      
  nop                                            #  11    0x3e8c5  1      
.L_3e8e0:                                        #        0x3e8c6  0      
  popq %rbx                                      #  12    0x3e8c6  2      
  popq %r11                                      #  13    0x3e8c8  3      
  andl $0xffffffe0, %r11d                        #  14    0x3e8cb  7      
  addq %r15, %r11                                #  15    0x3e8d2  3      
  jmpq %r11                                      #  16    0x3e8d5  3      
  nop                                            #  17    0x3e8d8  1      
  nop                                            #  18    0x3e8d9  1      
.L_3e900:                                        #        0x3e8da  0      
  movl $0x10030d10, %edi                         #  19    0x3e8da  5      
  nop                                            #  20    0x3e8df  1      
  nop                                            #  21    0x3e8e0  1      
  callq .__cxa_guard_acquire                     #  22    0x3e8e1  5      
  testl %eax, %eax                               #  23    0x3e8e6  2      
  je .L_3e8c0                                    #  24    0x3e8e8  6      
  nop                                            #  25    0x3e8ee  1      
  nop                                            #  26    0x3e8ef  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3e8f0  5      
  movl %eax, %edi                                #  28    0x3e8f5  2      
  movl $0x10020674, %esi                         #  29    0x3e8f7  5      
  nop                                            #  30    0x3e8fc  1      
  nop                                            #  31    0x3e8fd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3e8fe  5      
  movl $0x10030d10, %edi                         #  33    0x3e903  5      
  movl %eax, 0xfff240a(%rip)                     #  34    0x3e908  6      
  nop                                            #  35    0x3e90e  1      
  nop                                            #  36    0x3e90f  1      
  callq .__cxa_guard_release                     #  37    0x3e910  5      
  movl 0xfff23fd(%rip), %eax                     #  38    0x3e915  6      
  testq %rax, %rax                               #  39    0x3e91b  3      
  je .L_3e8e0                                    #  40    0x3e91e  6      
  xchgw %ax, %ax                                 #  41    0x3e924  3      
  nop                                            #  42    0x3e927  1      
.L_3e9a0:                                        #        0x3e928  0      
  cmpb $0x0, 0xfff23e1(%rip)                     #  43    0x3e928  7      
  je .L_3e9c0                                    #  44    0x3e92f  6      
  movl %ebx, %ebx                                #  45    0x3e935  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3e937  5      
  movl %eax, %eax                                #  47    0x3e93c  2      
  movl 0x14(%r15,%rax,1), %eax                   #  48    0x3e93e  5      
  popq %rbx                                      #  49    0x3e943  2      
  andl $0xffffffe0, %eax                         #  50    0x3e945  5      
  addq %r15, %rax                                #  51    0x3e94a  3      
  jmpq %rax                                      #  52    0x3e94d  2      
.L_3e9c0:                                        #        0x3e94f  0      
  movl $0x10030d10, %edi                         #  53    0x3e94f  5      
  nop                                            #  54    0x3e954  1      
  nop                                            #  55    0x3e955  1      
  callq .__cxa_guard_acquire                     #  56    0x3e956  5      
  testl %eax, %eax                               #  57    0x3e95b  2      
  jne .L_3ea20                                   #  58    0x3e95d  6      
  nop                                            #  59    0x3e963  1      
  nop                                            #  60    0x3e964  1      
.L_3ea00:                                        #        0x3e965  0      
  movl 0xfff23ad(%rip), %eax                     #  61    0x3e965  6      
  movl %ebx, %ebx                                #  62    0x3e96b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3e96d  5      
  popq %rbx                                      #  64    0x3e972  2      
  movl %eax, %eax                                #  65    0x3e974  2      
  movl 0x14(%r15,%rax,1), %eax                   #  66    0x3e976  5      
  andl $0xffffffe0, %eax                         #  67    0x3e97b  5      
  addq %r15, %rax                                #  68    0x3e980  3      
  jmpq %rax                                      #  69    0x3e983  2      
  nop                                            #  70    0x3e985  1      
.L_3ea20:                                        #        0x3e986  0      
  nop                                            #  71    0x3e986  1      
  nop                                            #  72    0x3e987  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3e988  5      
  movl %eax, %edi                                #  74    0x3e98d  2      
  movl $0x10020674, %esi                         #  75    0x3e98f  5      
  nop                                            #  76    0x3e994  1      
  nop                                            #  77    0x3e995  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3e996  5      
  movl $0x10030d10, %edi                         #  79    0x3e99b  5      
  movl %eax, 0xfff2372(%rip)                     #  80    0x3e9a0  6      
  nop                                            #  81    0x3e9a6  1      
  nop                                            #  82    0x3e9a7  1      
  callq .__cxa_guard_release                     #  83    0x3e9a8  5      
  jmpq .L_3ea00                                  #  84    0x3e9ad  5      
  nop                                            #  85    0x3e9b2  1      
  nop                                            #  86    0x3e9b3  1      
.L_3eaa0:                                        #        0x3e9b4  0      
  movl %eax, %ebx                                #  87    0x3e9b4  2      
  movl $0x10030d10, %edi                         #  88    0x3e9b6  5      
  nop                                            #  89    0x3e9bb  1      
  nop                                            #  90    0x3e9bc  1      
  callq .__cxa_guard_abort                       #  91    0x3e9bd  5      
  movl %ebx, %edi                                #  92    0x3e9c2  2      
  nop                                            #  93    0x3e9c4  1      
  nop                                            #  94    0x3e9c5  1      
  callq ._Unwind_Resume                          #  95    0x3e9c6  5      
  jmpq .L_3eaa0                                  #  96    0x3e9cb  5      
  nop                                            #  97    0x3e9d0  1      
  nop                                            #  98    0x3e9d1  1      
                                                                          
.size _ZNK2pp13IMEInputEvent16GetTargetSegmentEv, .-_ZNK2pp13IMEInputEvent16GetTargetSegmentEv

