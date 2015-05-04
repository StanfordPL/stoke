  .text
  .globl _ZNK2pp4View15GetScrollOffsetEv
  .type _ZNK2pp4View15GetScrollOffsetEv, @function

#! file-offset 0x2d940
#! rip-offset  0x2d940
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View15GetScrollOffsetEv:                #        0x2d940  0      
  pushq %r12                                     #  1     0x2d940  3      
  movl %esi, %r12d                               #  2     0x2d943  3      
  pushq %rbx                                     #  3     0x2d946  2      
  movl %edi, %ebx                                #  4     0x2d948  2      
  subl $0x18, %esp                               #  5     0x2d94a  3      
  addq %r15, %rsp                                #  6     0x2d94d  3      
  cmpb $0x0, 0x10003359(%rip)                    #  7     0x2d950  7      
  je .L_2d9c0                                    #  8     0x2d957  6      
  nop                                            #  9     0x2d95d  1      
.L_2d960:                                        #        0x2d95e  0      
  movl 0x10003354(%rip), %eax                    #  10    0x2d95e  6      
  testq %rax, %rax                               #  11    0x2d964  3      
  jne .L_2da60                                   #  12    0x2d967  6      
  xchgw %ax, %ax                                 #  13    0x2d96d  3      
  nop                                            #  14    0x2d970  1      
.L_2d980:                                        #        0x2d971  0      
  movl %ebx, %ebx                                #  15    0x2d971  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x2d973  8      
  movl %ebx, %ebx                                #  17    0x2d97b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x2d97d  9      
  movl %ebx, %eax                                #  19    0x2d986  2      
  addl $0x18, %esp                               #  20    0x2d988  3      
  addq %r15, %rsp                                #  21    0x2d98b  3      
  popq %rbx                                      #  22    0x2d98e  2      
  popq %r12                                      #  23    0x2d990  3      
  popq %r11                                      #  24    0x2d993  3      
  andl $0xffffffe0, %r11d                        #  25    0x2d996  7      
  addq %r15, %r11                                #  26    0x2d99d  3      
  jmpq %r11                                      #  27    0x2d9a0  3      
  nop                                            #  28    0x2d9a3  1      
  nop                                            #  29    0x2d9a4  1      
.L_2d9c0:                                        #        0x2d9a5  0      
  movl $0x10030cb0, %edi                         #  30    0x2d9a5  5      
  nop                                            #  31    0x2d9aa  1      
  nop                                            #  32    0x2d9ab  1      
  callq .__cxa_guard_acquire                     #  33    0x2d9ac  5      
  testl %eax, %eax                               #  34    0x2d9b1  2      
  je .L_2d960                                    #  35    0x2d9b3  6      
  nop                                            #  36    0x2d9b9  1      
  nop                                            #  37    0x2d9ba  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x2d9bb  5      
  movl %eax, %edi                                #  39    0x2d9c0  2      
  movl $0x10020625, %esi                         #  40    0x2d9c2  5      
  nop                                            #  41    0x2d9c7  1      
  nop                                            #  42    0x2d9c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x2d9c9  5      
  movl $0x10030cb0, %edi                         #  44    0x2d9ce  5      
  movl %eax, 0x100032df(%rip)                    #  45    0x2d9d3  6      
  nop                                            #  46    0x2d9d9  1      
  nop                                            #  47    0x2d9da  1      
  callq .__cxa_guard_release                     #  48    0x2d9db  5      
  movl 0x100032d2(%rip), %eax                    #  49    0x2d9e0  6      
  testq %rax, %rax                               #  50    0x2d9e6  3      
  je .L_2d980                                    #  51    0x2d9e9  6      
  xchgw %ax, %ax                                 #  52    0x2d9ef  3      
  nop                                            #  53    0x2d9f2  1      
.L_2da60:                                        #        0x2d9f3  0      
  cmpb $0x0, 0x100032b6(%rip)                    #  54    0x2d9f3  7      
  je .L_2dae0                                    #  55    0x2d9fa  6      
  nop                                            #  56    0x2da00  1      
  nop                                            #  57    0x2da01  1      
.L_2da80:                                        #        0x2da02  0      
  movl %eax, %eax                                #  58    0x2da02  2      
  movl 0x20(%r15,%rax,1), %eax                   #  59    0x2da04  5      
  movl %esp, %esi                                #  60    0x2da09  2      
  movl %r12d, %r12d                              #  61    0x2da0b  3      
  movl 0x4(%r15,%r12,1), %edi                    #  62    0x2da0e  5      
  nop                                            #  63    0x2da13  1      
  andl $0xffffffe0, %eax                         #  64    0x2da14  5      
  addq %r15, %rax                                #  65    0x2da19  3      
  callq %rax                                     #  66    0x2da1c  2      
  testl %eax, %eax                               #  67    0x2da1e  2      
  je .L_2d980                                    #  68    0x2da20  6      
  movl (%rsp), %eax                              #  69    0x2da26  3      
  movl %ebx, %ebx                                #  70    0x2da29  2      
  movl %eax, (%r15,%rbx,1)                       #  71    0x2da2b  4      
  movl 0x4(%rsp), %eax                           #  72    0x2da2f  4      
  movl %ebx, %ebx                                #  73    0x2da33  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  74    0x2da35  5      
  nop                                            #  75    0x2da3a  1      
  addl $0x18, %esp                               #  76    0x2da3b  3      
  addq %r15, %rsp                                #  77    0x2da3e  3      
  movl %ebx, %eax                                #  78    0x2da41  2      
  popq %rbx                                      #  79    0x2da43  2      
  popq %r12                                      #  80    0x2da45  3      
  popq %r11                                      #  81    0x2da48  3      
  andl $0xffffffe0, %r11d                        #  82    0x2da4b  7      
  addq %r15, %r11                                #  83    0x2da52  3      
  jmpq %r11                                      #  84    0x2da55  3      
  nop                                            #  85    0x2da58  1      
.L_2dae0:                                        #        0x2da59  0      
  movl $0x10030cb0, %edi                         #  86    0x2da59  5      
  nop                                            #  87    0x2da5e  1      
  nop                                            #  88    0x2da5f  1      
  callq .__cxa_guard_acquire                     #  89    0x2da60  5      
  testl %eax, %eax                               #  90    0x2da65  2      
  jne .L_2db40                                   #  91    0x2da67  6      
  nop                                            #  92    0x2da6d  1      
  nop                                            #  93    0x2da6e  1      
.L_2db20:                                        #        0x2da6f  0      
  movl 0x10003243(%rip), %eax                    #  94    0x2da6f  6      
  jmpq .L_2da80                                  #  95    0x2da75  5      
  nop                                            #  96    0x2da7a  1      
  nop                                            #  97    0x2da7b  1      
.L_2db40:                                        #        0x2da7c  0      
  nop                                            #  98    0x2da7c  1      
  nop                                            #  99    0x2da7d  1      
  callq ._ZN2pp6Module3GetEv                     #  100   0x2da7e  5      
  movl %eax, %edi                                #  101   0x2da83  2      
  movl $0x10020625, %esi                         #  102   0x2da85  5      
  nop                                            #  103   0x2da8a  1      
  nop                                            #  104   0x2da8b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  105   0x2da8c  5      
  movl $0x10030cb0, %edi                         #  106   0x2da91  5      
  movl %eax, 0x1000321c(%rip)                    #  107   0x2da96  6      
  nop                                            #  108   0x2da9c  1      
  nop                                            #  109   0x2da9d  1      
  callq .__cxa_guard_release                     #  110   0x2da9e  5      
  jmpq .L_2db20                                  #  111   0x2daa3  5      
  nop                                            #  112   0x2daa8  1      
  nop                                            #  113   0x2daa9  1      
.L_2dbc0:                                        #        0x2daaa  0      
  movl %eax, %ebx                                #  114   0x2daaa  2      
  movl $0x10030cb0, %edi                         #  115   0x2daac  5      
  nop                                            #  116   0x2dab1  1      
  nop                                            #  117   0x2dab2  1      
  callq .__cxa_guard_abort                       #  118   0x2dab3  5      
  movl %ebx, %edi                                #  119   0x2dab8  2      
  nop                                            #  120   0x2daba  1      
  nop                                            #  121   0x2dabb  1      
  callq ._Unwind_Resume                          #  122   0x2dabc  5      
  jmpq .L_2dbc0                                  #  123   0x2dac1  5      
  nop                                            #  124   0x2dac6  1      
  nop                                            #  125   0x2dac7  1      
                                                                          
.size _ZNK2pp4View15GetScrollOffsetEv, .-_ZNK2pp4View15GetScrollOffsetEv

