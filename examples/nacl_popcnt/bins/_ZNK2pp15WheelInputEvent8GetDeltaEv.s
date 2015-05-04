  .text
  .globl _ZNK2pp15WheelInputEvent8GetDeltaEv
  .type _ZNK2pp15WheelInputEvent8GetDeltaEv, @function

#! file-offset 0x38260
#! rip-offset  0x38260
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15WheelInputEvent8GetDeltaEv:            #        0x38260  0      
  pushq %r12                                     #  1     0x38260  3      
  movl %esi, %r12d                               #  2     0x38263  3      
  pushq %rbx                                     #  3     0x38266  2      
  movl %edi, %ebx                                #  4     0x38268  2      
  subl $0x18, %esp                               #  5     0x3826a  3      
  addq %r15, %rsp                                #  6     0x3826d  3      
  cmpb $0x0, 0xfff8ad9(%rip)                     #  7     0x38270  7      
  je .L_382e0                                    #  8     0x38277  6      
  nop                                            #  9     0x3827d  1      
.L_38280:                                        #        0x3827e  0      
  movl 0xfff8ad4(%rip), %eax                     #  10    0x3827e  6      
  testq %rax, %rax                               #  11    0x38284  3      
  jne .L_38380                                   #  12    0x38287  6      
  xchgw %ax, %ax                                 #  13    0x3828d  3      
  nop                                            #  14    0x38290  1      
.L_382a0:                                        #        0x38291  0      
  movl %ebx, %ebx                                #  15    0x38291  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x38293  8      
  movl %ebx, %ebx                                #  17    0x3829b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x3829d  9      
  movl %ebx, %eax                                #  19    0x382a6  2      
  addl $0x18, %esp                               #  20    0x382a8  3      
  addq %r15, %rsp                                #  21    0x382ab  3      
  popq %rbx                                      #  22    0x382ae  2      
  popq %r12                                      #  23    0x382b0  3      
  popq %r11                                      #  24    0x382b3  3      
  andl $0xffffffe0, %r11d                        #  25    0x382b6  7      
  addq %r15, %r11                                #  26    0x382bd  3      
  jmpq %r11                                      #  27    0x382c0  3      
  nop                                            #  28    0x382c3  1      
  nop                                            #  29    0x382c4  1      
.L_382e0:                                        #        0x382c5  0      
  movl $0x10030d50, %edi                         #  30    0x382c5  5      
  nop                                            #  31    0x382ca  1      
  nop                                            #  32    0x382cb  1      
  callq .__cxa_guard_acquire                     #  33    0x382cc  5      
  testl %eax, %eax                               #  34    0x382d1  2      
  je .L_38280                                    #  35    0x382d3  6      
  nop                                            #  36    0x382d9  1      
  nop                                            #  37    0x382da  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x382db  5      
  movl %eax, %edi                                #  39    0x382e0  2      
  movl $0x100206c0, %esi                         #  40    0x382e2  5      
  nop                                            #  41    0x382e7  1      
  nop                                            #  42    0x382e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x382e9  5      
  movl $0x10030d50, %edi                         #  44    0x382ee  5      
  movl %eax, 0xfff8a5f(%rip)                     #  45    0x382f3  6      
  nop                                            #  46    0x382f9  1      
  nop                                            #  47    0x382fa  1      
  callq .__cxa_guard_release                     #  48    0x382fb  5      
  movl 0xfff8a52(%rip), %eax                     #  49    0x38300  6      
  testq %rax, %rax                               #  50    0x38306  3      
  je .L_382a0                                    #  51    0x38309  6      
  xchgw %ax, %ax                                 #  52    0x3830f  3      
  nop                                            #  53    0x38312  1      
.L_38380:                                        #        0x38313  0      
  cmpb $0x0, 0xfff8a36(%rip)                     #  54    0x38313  7      
  je .L_38400                                    #  55    0x3831a  6      
  nop                                            #  56    0x38320  1      
  nop                                            #  57    0x38321  1      
.L_383a0:                                        #        0x38322  0      
  movl %eax, %eax                                #  58    0x38322  2      
  movl 0x8(%r15,%rax,1), %eax                    #  59    0x38324  5      
  movl %r12d, %r12d                              #  60    0x38329  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x3832c  5      
  nop                                            #  62    0x38331  1      
  andl $0xffffffe0, %eax                         #  63    0x38332  5      
  addq %r15, %rax                                #  64    0x38337  3      
  callq %rax                                     #  65    0x3833a  2      
  movq %xmm0, 0x8(%rsp)                          #  66    0x3833c  7      
  movq 0x8(%rsp), %rax                           #  67    0x38343  5      
  movl %ebx, %ebx                                #  68    0x38348  2      
  movl %eax, (%r15,%rbx,1)                       #  69    0x3834a  4      
  shrq $0x20, %rax                               #  70    0x3834e  4      
  movl %ebx, %ebx                                #  71    0x38352  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  72    0x38354  5      
  nop                                            #  73    0x38359  1      
  addl $0x18, %esp                               #  74    0x3835a  3      
  addq %r15, %rsp                                #  75    0x3835d  3      
  movl %ebx, %eax                                #  76    0x38360  2      
  popq %rbx                                      #  77    0x38362  2      
  popq %r12                                      #  78    0x38364  3      
  popq %r11                                      #  79    0x38367  3      
  andl $0xffffffe0, %r11d                        #  80    0x3836a  7      
  addq %r15, %r11                                #  81    0x38371  3      
  jmpq %r11                                      #  82    0x38374  3      
  nop                                            #  83    0x38377  1      
.L_38400:                                        #        0x38378  0      
  movl $0x10030d50, %edi                         #  84    0x38378  5      
  nop                                            #  85    0x3837d  1      
  nop                                            #  86    0x3837e  1      
  callq .__cxa_guard_acquire                     #  87    0x3837f  5      
  testl %eax, %eax                               #  88    0x38384  2      
  jne .L_38460                                   #  89    0x38386  6      
  nop                                            #  90    0x3838c  1      
  nop                                            #  91    0x3838d  1      
.L_38440:                                        #        0x3838e  0      
  movl 0xfff89c4(%rip), %eax                     #  92    0x3838e  6      
  jmpq .L_383a0                                  #  93    0x38394  5      
  nop                                            #  94    0x38399  1      
  nop                                            #  95    0x3839a  1      
.L_38460:                                        #        0x3839b  0      
  nop                                            #  96    0x3839b  1      
  nop                                            #  97    0x3839c  1      
  callq ._ZN2pp6Module3GetEv                     #  98    0x3839d  5      
  movl %eax, %edi                                #  99    0x383a2  2      
  movl $0x100206c0, %esi                         #  100   0x383a4  5      
  nop                                            #  101   0x383a9  1      
  nop                                            #  102   0x383aa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  103   0x383ab  5      
  movl $0x10030d50, %edi                         #  104   0x383b0  5      
  movl %eax, 0xfff899d(%rip)                     #  105   0x383b5  6      
  nop                                            #  106   0x383bb  1      
  nop                                            #  107   0x383bc  1      
  callq .__cxa_guard_release                     #  108   0x383bd  5      
  jmpq .L_38440                                  #  109   0x383c2  5      
  nop                                            #  110   0x383c7  1      
  nop                                            #  111   0x383c8  1      
.L_384e0:                                        #        0x383c9  0      
  movl %eax, %ebx                                #  112   0x383c9  2      
  movl $0x10030d50, %edi                         #  113   0x383cb  5      
  nop                                            #  114   0x383d0  1      
  nop                                            #  115   0x383d1  1      
  callq .__cxa_guard_abort                       #  116   0x383d2  5      
  movl %ebx, %edi                                #  117   0x383d7  2      
  nop                                            #  118   0x383d9  1      
  nop                                            #  119   0x383da  1      
  callq ._Unwind_Resume                          #  120   0x383db  5      
  jmpq .L_384e0                                  #  121   0x383e0  5      
  nop                                            #  122   0x383e5  1      
  nop                                            #  123   0x383e6  1      
                                                                          
.size _ZNK2pp15WheelInputEvent8GetDeltaEv, .-_ZNK2pp15WheelInputEvent8GetDeltaEv

