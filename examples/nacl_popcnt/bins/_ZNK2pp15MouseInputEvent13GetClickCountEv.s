  .text
  .globl _ZNK2pp15MouseInputEvent13GetClickCountEv
  .type _ZNK2pp15MouseInputEvent13GetClickCountEv, @function

#! file-offset 0x3b160
#! rip-offset  0x3b160
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent13GetClickCountEv:      #        0x3b160  0      
  cmpb $0x0, 0xfff5bf9(%rip)                     #  1     0x3b160  7      
  pushq %rbx                                     #  2     0x3b167  2      
  movl %edi, %ebx                                #  3     0x3b169  2      
  je .L_3b1c0                                    #  4     0x3b16b  6      
  nop                                            #  5     0x3b171  1      
  nop                                            #  6     0x3b172  1      
.L_3b180:                                        #        0x3b173  0      
  movl 0xfff5bef(%rip), %eax                     #  7     0x3b173  6      
  testq %rax, %rax                               #  8     0x3b179  3      
  jne .L_3b260                                   #  9     0x3b17c  6      
  xchgw %ax, %ax                                 #  10    0x3b182  3      
  nop                                            #  11    0x3b185  1      
.L_3b1a0:                                        #        0x3b186  0      
  popq %rbx                                      #  12    0x3b186  2      
  popq %r11                                      #  13    0x3b188  3      
  andl $0xffffffe0, %r11d                        #  14    0x3b18b  7      
  addq %r15, %r11                                #  15    0x3b192  3      
  jmpq %r11                                      #  16    0x3b195  3      
  nop                                            #  17    0x3b198  1      
  nop                                            #  18    0x3b199  1      
.L_3b1c0:                                        #        0x3b19a  0      
  movl $0x10030d60, %edi                         #  19    0x3b19a  5      
  nop                                            #  20    0x3b19f  1      
  nop                                            #  21    0x3b1a0  1      
  callq .__cxa_guard_acquire                     #  22    0x3b1a1  5      
  testl %eax, %eax                               #  23    0x3b1a6  2      
  je .L_3b180                                    #  24    0x3b1a8  6      
  nop                                            #  25    0x3b1ae  1      
  nop                                            #  26    0x3b1af  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3b1b0  5      
  movl %eax, %edi                                #  28    0x3b1b5  2      
  movl $0x100206f0, %esi                         #  29    0x3b1b7  5      
  nop                                            #  30    0x3b1bc  1      
  nop                                            #  31    0x3b1bd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3b1be  5      
  movl $0x10030d60, %edi                         #  33    0x3b1c3  5      
  movl %eax, 0xfff5b9a(%rip)                     #  34    0x3b1c8  6      
  nop                                            #  35    0x3b1ce  1      
  nop                                            #  36    0x3b1cf  1      
  callq .__cxa_guard_release                     #  37    0x3b1d0  5      
  movl 0xfff5b8d(%rip), %eax                     #  38    0x3b1d5  6      
  testq %rax, %rax                               #  39    0x3b1db  3      
  je .L_3b1a0                                    #  40    0x3b1de  6      
  xchgw %ax, %ax                                 #  41    0x3b1e4  3      
  nop                                            #  42    0x3b1e7  1      
.L_3b260:                                        #        0x3b1e8  0      
  cmpb $0x0, 0xfff5b71(%rip)                     #  43    0x3b1e8  7      
  je .L_3b280                                    #  44    0x3b1ef  6      
  movl %ebx, %ebx                                #  45    0x3b1f5  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3b1f7  5      
  movl %eax, %eax                                #  47    0x3b1fc  2      
  movl 0x10(%r15,%rax,1), %eax                   #  48    0x3b1fe  5      
  popq %rbx                                      #  49    0x3b203  2      
  andl $0xffffffe0, %eax                         #  50    0x3b205  5      
  addq %r15, %rax                                #  51    0x3b20a  3      
  jmpq %rax                                      #  52    0x3b20d  2      
.L_3b280:                                        #        0x3b20f  0      
  movl $0x10030d60, %edi                         #  53    0x3b20f  5      
  nop                                            #  54    0x3b214  1      
  nop                                            #  55    0x3b215  1      
  callq .__cxa_guard_acquire                     #  56    0x3b216  5      
  testl %eax, %eax                               #  57    0x3b21b  2      
  jne .L_3b2e0                                   #  58    0x3b21d  6      
  nop                                            #  59    0x3b223  1      
  nop                                            #  60    0x3b224  1      
.L_3b2c0:                                        #        0x3b225  0      
  movl 0xfff5b3d(%rip), %eax                     #  61    0x3b225  6      
  movl %ebx, %ebx                                #  62    0x3b22b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3b22d  5      
  popq %rbx                                      #  64    0x3b232  2      
  movl %eax, %eax                                #  65    0x3b234  2      
  movl 0x10(%r15,%rax,1), %eax                   #  66    0x3b236  5      
  andl $0xffffffe0, %eax                         #  67    0x3b23b  5      
  addq %r15, %rax                                #  68    0x3b240  3      
  jmpq %rax                                      #  69    0x3b243  2      
  nop                                            #  70    0x3b245  1      
.L_3b2e0:                                        #        0x3b246  0      
  nop                                            #  71    0x3b246  1      
  nop                                            #  72    0x3b247  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3b248  5      
  movl %eax, %edi                                #  74    0x3b24d  2      
  movl $0x100206f0, %esi                         #  75    0x3b24f  5      
  nop                                            #  76    0x3b254  1      
  nop                                            #  77    0x3b255  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3b256  5      
  movl $0x10030d60, %edi                         #  79    0x3b25b  5      
  movl %eax, 0xfff5b02(%rip)                     #  80    0x3b260  6      
  nop                                            #  81    0x3b266  1      
  nop                                            #  82    0x3b267  1      
  callq .__cxa_guard_release                     #  83    0x3b268  5      
  jmpq .L_3b2c0                                  #  84    0x3b26d  5      
  nop                                            #  85    0x3b272  1      
  nop                                            #  86    0x3b273  1      
.L_3b360:                                        #        0x3b274  0      
  movl %eax, %ebx                                #  87    0x3b274  2      
  movl $0x10030d60, %edi                         #  88    0x3b276  5      
  nop                                            #  89    0x3b27b  1      
  nop                                            #  90    0x3b27c  1      
  callq .__cxa_guard_abort                       #  91    0x3b27d  5      
  movl %ebx, %edi                                #  92    0x3b282  2      
  nop                                            #  93    0x3b284  1      
  nop                                            #  94    0x3b285  1      
  callq ._Unwind_Resume                          #  95    0x3b286  5      
  jmpq .L_3b360                                  #  96    0x3b28b  5      
  nop                                            #  97    0x3b290  1      
  nop                                            #  98    0x3b291  1      
                                                                          
.size _ZNK2pp15MouseInputEvent13GetClickCountEv, .-_ZNK2pp15MouseInputEvent13GetClickCountEv

