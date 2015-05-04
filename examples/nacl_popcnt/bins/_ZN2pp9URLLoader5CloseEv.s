  .text
  .globl _ZN2pp9URLLoader5CloseEv
  .type _ZN2pp9URLLoader5CloseEv, @function

#! file-offset 0x28060
#! rip-offset  0x28060
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp9URLLoader5CloseEv:                       #        0x28060  0      
  cmpb $0x0, 0x10008bf9(%rip)                    #  1     0x28060  7      
  pushq %rbx                                     #  2     0x28067  2      
  movl %edi, %ebx                                #  3     0x28069  2      
  je .L_280c0                                    #  4     0x2806b  6      
  nop                                            #  5     0x28071  1      
  nop                                            #  6     0x28072  1      
.L_28080:                                        #        0x28073  0      
  movl 0x10008bef(%rip), %eax                    #  7     0x28073  6      
  testq %rax, %rax                               #  8     0x28079  3      
  jne .L_28160                                   #  9     0x2807c  6      
  xchgw %ax, %ax                                 #  10    0x28082  3      
  nop                                            #  11    0x28085  1      
.L_280a0:                                        #        0x28086  0      
  popq %rbx                                      #  12    0x28086  2      
  popq %r11                                      #  13    0x28088  3      
  andl $0xffffffe0, %r11d                        #  14    0x2808b  7      
  addq %r15, %r11                                #  15    0x28092  3      
  jmpq %r11                                      #  16    0x28095  3      
  nop                                            #  17    0x28098  1      
  nop                                            #  18    0x28099  1      
.L_280c0:                                        #        0x2809a  0      
  movl $0x10030c60, %edi                         #  19    0x2809a  5      
  nop                                            #  20    0x2809f  1      
  nop                                            #  21    0x280a0  1      
  callq .__cxa_guard_acquire                     #  22    0x280a1  5      
  testl %eax, %eax                               #  23    0x280a6  2      
  je .L_28080                                    #  24    0x280a8  6      
  nop                                            #  25    0x280ae  1      
  nop                                            #  26    0x280af  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x280b0  5      
  movl %eax, %edi                                #  28    0x280b5  2      
  movl $0x10020478, %esi                         #  29    0x280b7  5      
  nop                                            #  30    0x280bc  1      
  nop                                            #  31    0x280bd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x280be  5      
  movl $0x10030c60, %edi                         #  33    0x280c3  5      
  movl %eax, 0x10008b9a(%rip)                    #  34    0x280c8  6      
  nop                                            #  35    0x280ce  1      
  nop                                            #  36    0x280cf  1      
  callq .__cxa_guard_release                     #  37    0x280d0  5      
  movl 0x10008b8d(%rip), %eax                    #  38    0x280d5  6      
  testq %rax, %rax                               #  39    0x280db  3      
  je .L_280a0                                    #  40    0x280de  6      
  xchgw %ax, %ax                                 #  41    0x280e4  3      
  nop                                            #  42    0x280e7  1      
.L_28160:                                        #        0x280e8  0      
  cmpb $0x0, 0x10008b71(%rip)                    #  43    0x280e8  7      
  je .L_28180                                    #  44    0x280ef  6      
  movl %ebx, %ebx                                #  45    0x280f5  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x280f7  5      
  movl %eax, %eax                                #  47    0x280fc  2      
  movl 0x24(%r15,%rax,1), %eax                   #  48    0x280fe  5      
  popq %rbx                                      #  49    0x28103  2      
  andl $0xffffffe0, %eax                         #  50    0x28105  5      
  addq %r15, %rax                                #  51    0x2810a  3      
  jmpq %rax                                      #  52    0x2810d  2      
.L_28180:                                        #        0x2810f  0      
  movl $0x10030c60, %edi                         #  53    0x2810f  5      
  nop                                            #  54    0x28114  1      
  nop                                            #  55    0x28115  1      
  callq .__cxa_guard_acquire                     #  56    0x28116  5      
  testl %eax, %eax                               #  57    0x2811b  2      
  jne .L_281e0                                   #  58    0x2811d  6      
  nop                                            #  59    0x28123  1      
  nop                                            #  60    0x28124  1      
.L_281c0:                                        #        0x28125  0      
  movl 0x10008b3d(%rip), %eax                    #  61    0x28125  6      
  movl %ebx, %ebx                                #  62    0x2812b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x2812d  5      
  popq %rbx                                      #  64    0x28132  2      
  movl %eax, %eax                                #  65    0x28134  2      
  movl 0x24(%r15,%rax,1), %eax                   #  66    0x28136  5      
  andl $0xffffffe0, %eax                         #  67    0x2813b  5      
  addq %r15, %rax                                #  68    0x28140  3      
  jmpq %rax                                      #  69    0x28143  2      
  nop                                            #  70    0x28145  1      
.L_281e0:                                        #        0x28146  0      
  nop                                            #  71    0x28146  1      
  nop                                            #  72    0x28147  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x28148  5      
  movl %eax, %edi                                #  74    0x2814d  2      
  movl $0x10020478, %esi                         #  75    0x2814f  5      
  nop                                            #  76    0x28154  1      
  nop                                            #  77    0x28155  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x28156  5      
  movl $0x10030c60, %edi                         #  79    0x2815b  5      
  movl %eax, 0x10008b02(%rip)                    #  80    0x28160  6      
  nop                                            #  81    0x28166  1      
  nop                                            #  82    0x28167  1      
  callq .__cxa_guard_release                     #  83    0x28168  5      
  jmpq .L_281c0                                  #  84    0x2816d  5      
  nop                                            #  85    0x28172  1      
  nop                                            #  86    0x28173  1      
.L_28260:                                        #        0x28174  0      
  movl %eax, %ebx                                #  87    0x28174  2      
  movl $0x10030c60, %edi                         #  88    0x28176  5      
  nop                                            #  89    0x2817b  1      
  nop                                            #  90    0x2817c  1      
  callq .__cxa_guard_abort                       #  91    0x2817d  5      
  movl %ebx, %edi                                #  92    0x28182  2      
  nop                                            #  93    0x28184  1      
  nop                                            #  94    0x28185  1      
  callq ._Unwind_Resume                          #  95    0x28186  5      
  jmpq .L_28260                                  #  96    0x2818b  5      
  nop                                            #  97    0x28190  1      
  nop                                            #  98    0x28191  1      
                                                                          
.size _ZN2pp9URLLoader5CloseEv, .-_ZN2pp9URLLoader5CloseEv

