  .text
  .globl _ZNK2pp15MouseInputEvent13GetClickCountEv
  .type _ZNK2pp15MouseInputEvent13GetClickCountEv, @function

#! file-offset 0x3b180
#! rip-offset  0x3b180
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent13GetClickCountEv:      #        0x3b180  0      
  cmpb $0x0, 0xfff5bd9(%rip)                     #  1     0x3b180  7      
  pushq %rbx                                     #  2     0x3b187  2      
  movl %edi, %ebx                                #  3     0x3b189  2      
  je .L_3b1e0                                    #  4     0x3b18b  6      
  nop                                            #  5     0x3b191  1      
  nop                                            #  6     0x3b192  1      
.L_3b1a0:                                        #        0x3b193  0      
  movl 0xfff5bcf(%rip), %eax                     #  7     0x3b193  6      
  testq %rax, %rax                               #  8     0x3b199  3      
  jne .L_3b280                                   #  9     0x3b19c  6      
  xchgw %ax, %ax                                 #  10    0x3b1a2  3      
  nop                                            #  11    0x3b1a5  1      
.L_3b1c0:                                        #        0x3b1a6  0      
  popq %rbx                                      #  12    0x3b1a6  2      
  popq %r11                                      #  13    0x3b1a8  3      
  andl $0xffffffe0, %r11d                        #  14    0x3b1ab  7      
  addq %r15, %r11                                #  15    0x3b1b2  3      
  jmpq %r11                                      #  16    0x3b1b5  3      
  nop                                            #  17    0x3b1b8  1      
  nop                                            #  18    0x3b1b9  1      
.L_3b1e0:                                        #        0x3b1ba  0      
  movl $0x10030d60, %edi                         #  19    0x3b1ba  5      
  nop                                            #  20    0x3b1bf  1      
  nop                                            #  21    0x3b1c0  1      
  callq .__cxa_guard_acquire                     #  22    0x3b1c1  5      
  testl %eax, %eax                               #  23    0x3b1c6  2      
  je .L_3b1a0                                    #  24    0x3b1c8  6      
  nop                                            #  25    0x3b1ce  1      
  nop                                            #  26    0x3b1cf  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3b1d0  5      
  movl %eax, %edi                                #  28    0x3b1d5  2      
  movl $0x100206f0, %esi                         #  29    0x3b1d7  5      
  nop                                            #  30    0x3b1dc  1      
  nop                                            #  31    0x3b1dd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3b1de  5      
  movl $0x10030d60, %edi                         #  33    0x3b1e3  5      
  movl %eax, 0xfff5b7a(%rip)                     #  34    0x3b1e8  6      
  nop                                            #  35    0x3b1ee  1      
  nop                                            #  36    0x3b1ef  1      
  callq .__cxa_guard_release                     #  37    0x3b1f0  5      
  movl 0xfff5b6d(%rip), %eax                     #  38    0x3b1f5  6      
  testq %rax, %rax                               #  39    0x3b1fb  3      
  je .L_3b1c0                                    #  40    0x3b1fe  6      
  xchgw %ax, %ax                                 #  41    0x3b204  3      
  nop                                            #  42    0x3b207  1      
.L_3b280:                                        #        0x3b208  0      
  cmpb $0x0, 0xfff5b51(%rip)                     #  43    0x3b208  7      
  je .L_3b2a0                                    #  44    0x3b20f  6      
  movl %ebx, %ebx                                #  45    0x3b215  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3b217  5      
  movl %eax, %eax                                #  47    0x3b21c  2      
  movl 0x10(%r15,%rax,1), %eax                   #  48    0x3b21e  5      
  popq %rbx                                      #  49    0x3b223  2      
  andl $0xffffffe0, %eax                         #  50    0x3b225  5      
  addq %r15, %rax                                #  51    0x3b22a  3      
  jmpq %rax                                      #  52    0x3b22d  2      
.L_3b2a0:                                        #        0x3b22f  0      
  movl $0x10030d60, %edi                         #  53    0x3b22f  5      
  nop                                            #  54    0x3b234  1      
  nop                                            #  55    0x3b235  1      
  callq .__cxa_guard_acquire                     #  56    0x3b236  5      
  testl %eax, %eax                               #  57    0x3b23b  2      
  jne .L_3b300                                   #  58    0x3b23d  6      
  nop                                            #  59    0x3b243  1      
  nop                                            #  60    0x3b244  1      
.L_3b2e0:                                        #        0x3b245  0      
  movl 0xfff5b1d(%rip), %eax                     #  61    0x3b245  6      
  movl %ebx, %ebx                                #  62    0x3b24b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3b24d  5      
  popq %rbx                                      #  64    0x3b252  2      
  movl %eax, %eax                                #  65    0x3b254  2      
  movl 0x10(%r15,%rax,1), %eax                   #  66    0x3b256  5      
  andl $0xffffffe0, %eax                         #  67    0x3b25b  5      
  addq %r15, %rax                                #  68    0x3b260  3      
  jmpq %rax                                      #  69    0x3b263  2      
  nop                                            #  70    0x3b265  1      
.L_3b300:                                        #        0x3b266  0      
  nop                                            #  71    0x3b266  1      
  nop                                            #  72    0x3b267  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3b268  5      
  movl %eax, %edi                                #  74    0x3b26d  2      
  movl $0x100206f0, %esi                         #  75    0x3b26f  5      
  nop                                            #  76    0x3b274  1      
  nop                                            #  77    0x3b275  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3b276  5      
  movl $0x10030d60, %edi                         #  79    0x3b27b  5      
  movl %eax, 0xfff5ae2(%rip)                     #  80    0x3b280  6      
  nop                                            #  81    0x3b286  1      
  nop                                            #  82    0x3b287  1      
  callq .__cxa_guard_release                     #  83    0x3b288  5      
  jmpq .L_3b2e0                                  #  84    0x3b28d  5      
  nop                                            #  85    0x3b292  1      
  nop                                            #  86    0x3b293  1      
.L_3b380:                                        #        0x3b294  0      
  movl %eax, %ebx                                #  87    0x3b294  2      
  movl $0x10030d60, %edi                         #  88    0x3b296  5      
  nop                                            #  89    0x3b29b  1      
  nop                                            #  90    0x3b29c  1      
  callq .__cxa_guard_abort                       #  91    0x3b29d  5      
  movl %ebx, %edi                                #  92    0x3b2a2  2      
  nop                                            #  93    0x3b2a4  1      
  nop                                            #  94    0x3b2a5  1      
  callq ._Unwind_Resume                          #  95    0x3b2a6  5      
  jmpq .L_3b380                                  #  96    0x3b2ab  5      
  nop                                            #  97    0x3b2b0  1      
  nop                                            #  98    0x3b2b1  1      
                                                                          
.size _ZNK2pp15MouseInputEvent13GetClickCountEv, .-_ZNK2pp15MouseInputEvent13GetClickCountEv

