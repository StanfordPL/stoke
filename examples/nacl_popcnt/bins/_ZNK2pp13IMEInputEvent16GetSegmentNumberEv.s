  .text
  .globl _ZNK2pp13IMEInputEvent16GetSegmentNumberEv
  .type _ZNK2pp13IMEInputEvent16GetSegmentNumberEv, @function

#! file-offset 0x3d080
#! rip-offset  0x3d080
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetSegmentNumberEv:     #        0x3d080  0      
  cmpb $0x0, 0xfff3c89(%rip)                     #  1     0x3d080  7      
  pushq %rbx                                     #  2     0x3d087  2      
  movl %edi, %ebx                                #  3     0x3d089  2      
  je .L_3d0e0                                    #  4     0x3d08b  6      
  nop                                            #  5     0x3d091  1      
  nop                                            #  6     0x3d092  1      
.L_3d0a0:                                        #        0x3d093  0      
  movl 0xfff3c7f(%rip), %eax                     #  7     0x3d093  6      
  testq %rax, %rax                               #  8     0x3d099  3      
  jne .L_3d180                                   #  9     0x3d09c  6      
  xchgw %ax, %ax                                 #  10    0x3d0a2  3      
  nop                                            #  11    0x3d0a5  1      
.L_3d0c0:                                        #        0x3d0a6  0      
  popq %rbx                                      #  12    0x3d0a6  2      
  popq %r11                                      #  13    0x3d0a8  3      
  andl $0xffffffe0, %r11d                        #  14    0x3d0ab  7      
  addq %r15, %r11                                #  15    0x3d0b2  3      
  jmpq %r11                                      #  16    0x3d0b5  3      
  nop                                            #  17    0x3d0b8  1      
  nop                                            #  18    0x3d0b9  1      
.L_3d0e0:                                        #        0x3d0ba  0      
  movl $0x10030d10, %edi                         #  19    0x3d0ba  5      
  nop                                            #  20    0x3d0bf  1      
  nop                                            #  21    0x3d0c0  1      
  callq .__cxa_guard_acquire                     #  22    0x3d0c1  5      
  testl %eax, %eax                               #  23    0x3d0c6  2      
  je .L_3d0a0                                    #  24    0x3d0c8  6      
  nop                                            #  25    0x3d0ce  1      
  nop                                            #  26    0x3d0cf  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3d0d0  5      
  movl %eax, %edi                                #  28    0x3d0d5  2      
  movl $0x10020674, %esi                         #  29    0x3d0d7  5      
  nop                                            #  30    0x3d0dc  1      
  nop                                            #  31    0x3d0dd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3d0de  5      
  movl $0x10030d10, %edi                         #  33    0x3d0e3  5      
  movl %eax, 0xfff3c2a(%rip)                     #  34    0x3d0e8  6      
  nop                                            #  35    0x3d0ee  1      
  nop                                            #  36    0x3d0ef  1      
  callq .__cxa_guard_release                     #  37    0x3d0f0  5      
  movl 0xfff3c1d(%rip), %eax                     #  38    0x3d0f5  6      
  testq %rax, %rax                               #  39    0x3d0fb  3      
  je .L_3d0c0                                    #  40    0x3d0fe  6      
  xchgw %ax, %ax                                 #  41    0x3d104  3      
  nop                                            #  42    0x3d107  1      
.L_3d180:                                        #        0x3d108  0      
  cmpb $0x0, 0xfff3c01(%rip)                     #  43    0x3d108  7      
  je .L_3d1a0                                    #  44    0x3d10f  6      
  movl %ebx, %ebx                                #  45    0x3d115  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3d117  5      
  movl %eax, %eax                                #  47    0x3d11c  2      
  movl 0xc(%r15,%rax,1), %eax                    #  48    0x3d11e  5      
  popq %rbx                                      #  49    0x3d123  2      
  andl $0xffffffe0, %eax                         #  50    0x3d125  5      
  addq %r15, %rax                                #  51    0x3d12a  3      
  jmpq %rax                                      #  52    0x3d12d  2      
.L_3d1a0:                                        #        0x3d12f  0      
  movl $0x10030d10, %edi                         #  53    0x3d12f  5      
  nop                                            #  54    0x3d134  1      
  nop                                            #  55    0x3d135  1      
  callq .__cxa_guard_acquire                     #  56    0x3d136  5      
  testl %eax, %eax                               #  57    0x3d13b  2      
  jne .L_3d200                                   #  58    0x3d13d  6      
  nop                                            #  59    0x3d143  1      
  nop                                            #  60    0x3d144  1      
.L_3d1e0:                                        #        0x3d145  0      
  movl 0xfff3bcd(%rip), %eax                     #  61    0x3d145  6      
  movl %ebx, %ebx                                #  62    0x3d14b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3d14d  5      
  popq %rbx                                      #  64    0x3d152  2      
  movl %eax, %eax                                #  65    0x3d154  2      
  movl 0xc(%r15,%rax,1), %eax                    #  66    0x3d156  5      
  andl $0xffffffe0, %eax                         #  67    0x3d15b  5      
  addq %r15, %rax                                #  68    0x3d160  3      
  jmpq %rax                                      #  69    0x3d163  2      
  nop                                            #  70    0x3d165  1      
.L_3d200:                                        #        0x3d166  0      
  nop                                            #  71    0x3d166  1      
  nop                                            #  72    0x3d167  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3d168  5      
  movl %eax, %edi                                #  74    0x3d16d  2      
  movl $0x10020674, %esi                         #  75    0x3d16f  5      
  nop                                            #  76    0x3d174  1      
  nop                                            #  77    0x3d175  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3d176  5      
  movl $0x10030d10, %edi                         #  79    0x3d17b  5      
  movl %eax, 0xfff3b92(%rip)                     #  80    0x3d180  6      
  nop                                            #  81    0x3d186  1      
  nop                                            #  82    0x3d187  1      
  callq .__cxa_guard_release                     #  83    0x3d188  5      
  jmpq .L_3d1e0                                  #  84    0x3d18d  5      
  nop                                            #  85    0x3d192  1      
  nop                                            #  86    0x3d193  1      
.L_3d280:                                        #        0x3d194  0      
  movl %eax, %ebx                                #  87    0x3d194  2      
  movl $0x10030d10, %edi                         #  88    0x3d196  5      
  nop                                            #  89    0x3d19b  1      
  nop                                            #  90    0x3d19c  1      
  callq .__cxa_guard_abort                       #  91    0x3d19d  5      
  movl %ebx, %edi                                #  92    0x3d1a2  2      
  nop                                            #  93    0x3d1a4  1      
  nop                                            #  94    0x3d1a5  1      
  callq ._Unwind_Resume                          #  95    0x3d1a6  5      
  jmpq .L_3d280                                  #  96    0x3d1ab  5      
  nop                                            #  97    0x3d1b0  1      
  nop                                            #  98    0x3d1b1  1      
                                                                          
.size _ZNK2pp13IMEInputEvent16GetSegmentNumberEv, .-_ZNK2pp13IMEInputEvent16GetSegmentNumberEv

