  .text
  .globl _ZNK2pp13IMEInputEvent16GetSegmentNumberEv
  .type _ZNK2pp13IMEInputEvent16GetSegmentNumberEv, @function

#! file-offset 0x3d0a0
#! rip-offset  0x3d0a0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetSegmentNumberEv:     #        0x3d0a0  0      
  cmpb $0x0, 0xfff3c69(%rip)                     #  1     0x3d0a0  7      
  pushq %rbx                                     #  2     0x3d0a7  2      
  movl %edi, %ebx                                #  3     0x3d0a9  2      
  je .L_3d100                                    #  4     0x3d0ab  6      
  nop                                            #  5     0x3d0b1  1      
  nop                                            #  6     0x3d0b2  1      
.L_3d0c0:                                        #        0x3d0b3  0      
  movl 0xfff3c5f(%rip), %eax                     #  7     0x3d0b3  6      
  testq %rax, %rax                               #  8     0x3d0b9  3      
  jne .L_3d1a0                                   #  9     0x3d0bc  6      
  xchgw %ax, %ax                                 #  10    0x3d0c2  3      
  nop                                            #  11    0x3d0c5  1      
.L_3d0e0:                                        #        0x3d0c6  0      
  popq %rbx                                      #  12    0x3d0c6  2      
  popq %r11                                      #  13    0x3d0c8  3      
  andl $0xffffffe0, %r11d                        #  14    0x3d0cb  7      
  addq %r15, %r11                                #  15    0x3d0d2  3      
  jmpq %r11                                      #  16    0x3d0d5  3      
  nop                                            #  17    0x3d0d8  1      
  nop                                            #  18    0x3d0d9  1      
.L_3d100:                                        #        0x3d0da  0      
  movl $0x10030d10, %edi                         #  19    0x3d0da  5      
  nop                                            #  20    0x3d0df  1      
  nop                                            #  21    0x3d0e0  1      
  callq .__cxa_guard_acquire                     #  22    0x3d0e1  5      
  testl %eax, %eax                               #  23    0x3d0e6  2      
  je .L_3d0c0                                    #  24    0x3d0e8  6      
  nop                                            #  25    0x3d0ee  1      
  nop                                            #  26    0x3d0ef  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3d0f0  5      
  movl %eax, %edi                                #  28    0x3d0f5  2      
  movl $0x10020674, %esi                         #  29    0x3d0f7  5      
  nop                                            #  30    0x3d0fc  1      
  nop                                            #  31    0x3d0fd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3d0fe  5      
  movl $0x10030d10, %edi                         #  33    0x3d103  5      
  movl %eax, 0xfff3c0a(%rip)                     #  34    0x3d108  6      
  nop                                            #  35    0x3d10e  1      
  nop                                            #  36    0x3d10f  1      
  callq .__cxa_guard_release                     #  37    0x3d110  5      
  movl 0xfff3bfd(%rip), %eax                     #  38    0x3d115  6      
  testq %rax, %rax                               #  39    0x3d11b  3      
  je .L_3d0e0                                    #  40    0x3d11e  6      
  xchgw %ax, %ax                                 #  41    0x3d124  3      
  nop                                            #  42    0x3d127  1      
.L_3d1a0:                                        #        0x3d128  0      
  cmpb $0x0, 0xfff3be1(%rip)                     #  43    0x3d128  7      
  je .L_3d1c0                                    #  44    0x3d12f  6      
  movl %ebx, %ebx                                #  45    0x3d135  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3d137  5      
  movl %eax, %eax                                #  47    0x3d13c  2      
  movl 0xc(%r15,%rax,1), %eax                    #  48    0x3d13e  5      
  popq %rbx                                      #  49    0x3d143  2      
  andl $0xffffffe0, %eax                         #  50    0x3d145  5      
  addq %r15, %rax                                #  51    0x3d14a  3      
  jmpq %rax                                      #  52    0x3d14d  2      
.L_3d1c0:                                        #        0x3d14f  0      
  movl $0x10030d10, %edi                         #  53    0x3d14f  5      
  nop                                            #  54    0x3d154  1      
  nop                                            #  55    0x3d155  1      
  callq .__cxa_guard_acquire                     #  56    0x3d156  5      
  testl %eax, %eax                               #  57    0x3d15b  2      
  jne .L_3d220                                   #  58    0x3d15d  6      
  nop                                            #  59    0x3d163  1      
  nop                                            #  60    0x3d164  1      
.L_3d200:                                        #        0x3d165  0      
  movl 0xfff3bad(%rip), %eax                     #  61    0x3d165  6      
  movl %ebx, %ebx                                #  62    0x3d16b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3d16d  5      
  popq %rbx                                      #  64    0x3d172  2      
  movl %eax, %eax                                #  65    0x3d174  2      
  movl 0xc(%r15,%rax,1), %eax                    #  66    0x3d176  5      
  andl $0xffffffe0, %eax                         #  67    0x3d17b  5      
  addq %r15, %rax                                #  68    0x3d180  3      
  jmpq %rax                                      #  69    0x3d183  2      
  nop                                            #  70    0x3d185  1      
.L_3d220:                                        #        0x3d186  0      
  nop                                            #  71    0x3d186  1      
  nop                                            #  72    0x3d187  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3d188  5      
  movl %eax, %edi                                #  74    0x3d18d  2      
  movl $0x10020674, %esi                         #  75    0x3d18f  5      
  nop                                            #  76    0x3d194  1      
  nop                                            #  77    0x3d195  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3d196  5      
  movl $0x10030d10, %edi                         #  79    0x3d19b  5      
  movl %eax, 0xfff3b72(%rip)                     #  80    0x3d1a0  6      
  nop                                            #  81    0x3d1a6  1      
  nop                                            #  82    0x3d1a7  1      
  callq .__cxa_guard_release                     #  83    0x3d1a8  5      
  jmpq .L_3d200                                  #  84    0x3d1ad  5      
  nop                                            #  85    0x3d1b2  1      
  nop                                            #  86    0x3d1b3  1      
.L_3d2a0:                                        #        0x3d1b4  0      
  movl %eax, %ebx                                #  87    0x3d1b4  2      
  movl $0x10030d10, %edi                         #  88    0x3d1b6  5      
  nop                                            #  89    0x3d1bb  1      
  nop                                            #  90    0x3d1bc  1      
  callq .__cxa_guard_abort                       #  91    0x3d1bd  5      
  movl %ebx, %edi                                #  92    0x3d1c2  2      
  nop                                            #  93    0x3d1c4  1      
  nop                                            #  94    0x3d1c5  1      
  callq ._Unwind_Resume                          #  95    0x3d1c6  5      
  jmpq .L_3d2a0                                  #  96    0x3d1cb  5      
  nop                                            #  97    0x3d1d0  1      
  nop                                            #  98    0x3d1d1  1      
                                                                          
.size _ZNK2pp13IMEInputEvent16GetSegmentNumberEv, .-_ZNK2pp13IMEInputEvent16GetSegmentNumberEv

