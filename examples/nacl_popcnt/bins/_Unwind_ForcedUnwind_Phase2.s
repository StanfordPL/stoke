  .text
  .globl _Unwind_ForcedUnwind_Phase2
  .type _Unwind_ForcedUnwind_Phase2, @function

#! file-offset 0x5d160
#! rip-offset  0x5d160
#! capacity    512 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_ForcedUnwind_Phase2:    #        0x5d160  0      
  pushq %r14                     #  1     0x5d160  3      
  pushq %r13                     #  2     0x5d163  3      
  movl %esi, %r13d               #  3     0x5d166  3      
  pushq %r12                     #  4     0x5d169  3      
  movl %edi, %r12d               #  5     0x5d16c  3      
  pushq %rbx                     #  6     0x5d16f  2      
  subl $0x188, %esp              #  7     0x5d171  6      
  addq %r15, %rsp                #  8     0x5d177  3      
  movl %r12d, %r12d              #  9     0x5d17a  3      
  movl 0x10(%r15,%r12,1), %eax   #  10    0x5d17d  5      
  xchgw %ax, %ax                 #  11    0x5d182  3      
  movl %r12d, %r12d              #  12    0x5d185  3      
  movl 0x18(%r15,%r12,1), %r10d  #  13    0x5d188  5      
  leal 0x10(%rsp), %r14d         #  14    0x5d18d  5      
  movq %rax, 0x8(%rsp)           #  15    0x5d192  5      
  movq %r10, (%rsp)              #  16    0x5d197  4      
  nop                            #  17    0x5d19b  1      
.L_5d1a0:                        #        0x5d19c  0      
  movl %r14d, %esi               #  18    0x5d19c  3      
  movl %r13d, %edi               #  19    0x5d19f  3      
  nop                            #  20    0x5d1a2  1      
  nop                            #  21    0x5d1a3  1      
  callq .uw_frame_state_for      #  22    0x5d1a4  5      
  cmpl $0x5, %eax                #  23    0x5d1a9  3      
  movl %eax, %ebx                #  24    0x5d1ac  2      
  je .L_5d340                    #  25    0x5d1ae  6      
  testl %eax, %eax               #  26    0x5d1b4  2      
  je .L_5d220                    #  27    0x5d1b6  6      
  xchgw %ax, %ax                 #  28    0x5d1bc  3      
  nop                            #  29    0x5d1bf  1      
.L_5d1e0:                        #        0x5d1c0  0      
  movl $0x2, %ebx                #  30    0x5d1c0  5      
  nop                            #  31    0x5d1c5  1      
  nop                            #  32    0x5d1c6  1      
.L_5d200:                        #        0x5d1c7  0      
  addl $0x188, %esp              #  33    0x5d1c7  6      
  addq %r15, %rsp                #  34    0x5d1cd  3      
  movl %ebx, %eax                #  35    0x5d1d0  2      
  popq %rbx                      #  36    0x5d1d2  2      
  popq %r12                      #  37    0x5d1d4  3      
  popq %r13                      #  38    0x5d1d7  3      
  popq %r14                      #  39    0x5d1da  3      
  popq %r11                      #  40    0x5d1dd  3      
  andl $0xffffffe0, %r11d        #  41    0x5d1e0  7      
  addq %r15, %r11                #  42    0x5d1e7  3      
  jmpq %r11                      #  43    0x5d1ea  3      
  xchgw %ax, %ax                 #  44    0x5d1ed  3      
.L_5d220:                        #        0x5d1f0  0      
  movl $0xa, %esi                #  45    0x5d1f0  5      
  nop                            #  46    0x5d1f5  1      
  nop                            #  47    0x5d1f6  1      
.L_5d240:                        #        0x5d1f7  0      
  movl (%rsp), %r9d              #  48    0x5d1f7  4      
  movl %r13d, %r8d               #  49    0x5d1fb  3      
  movl %r12d, %ecx               #  50    0x5d1fe  3      
  movl %r12d, %r12d              #  51    0x5d201  3      
  movq (%r15,%r12,1), %rdx       #  52    0x5d204  4      
  movl $0x1, %edi                #  53    0x5d208  5      
  movq 0x8(%rsp), %r10           #  54    0x5d20d  5      
  nop                            #  55    0x5d212  1      
  nop                            #  56    0x5d213  1      
  nop                            #  57    0x5d214  1      
  andl $0xffffffe0, %r10d        #  58    0x5d215  7      
  addq %r15, %r10                #  59    0x5d21c  3      
  callq %r10                     #  60    0x5d21f  3      
  testl %eax, %eax               #  61    0x5d222  2      
  jne .L_5d1e0                   #  62    0x5d224  6      
  cmpl $0x5, %ebx                #  63    0x5d22a  3      
  je .L_5d200                    #  64    0x5d22d  6      
  movl 0x154(%rsp), %eax         #  65    0x5d233  7      
  testq %rax, %rax               #  66    0x5d23a  3      
  nop                            #  67    0x5d23d  1      
  je .L_5d300                    #  68    0x5d23e  6      
  movl %r13d, %r8d               #  69    0x5d244  3      
  movl %r12d, %ecx               #  70    0x5d247  3      
  movl %r12d, %r12d              #  71    0x5d24a  3      
  movq (%r15,%r12,1), %rdx       #  72    0x5d24d  4      
  movl $0xa, %esi                #  73    0x5d251  5      
  movl $0x1, %edi                #  74    0x5d256  5      
  nop                            #  75    0x5d25b  1      
  nop                            #  76    0x5d25c  1      
  nop                            #  77    0x5d25d  1      
  andl $0xffffffe0, %eax         #  78    0x5d25e  5      
  addq %r15, %rax                #  79    0x5d263  3      
  callq %rax                     #  80    0x5d266  2      
  cmpl $0x7, %eax                #  81    0x5d268  3      
  movl %eax, %ebx                #  82    0x5d26b  2      
  je .L_5d200                    #  83    0x5d26d  6      
  cmpl $0x8, %eax                #  84    0x5d273  3      
  jne .L_5d1e0                   #  85    0x5d276  6      
  nop                            #  86    0x5d27c  1      
.L_5d300:                        #        0x5d27d  0      
  movl %r14d, %esi               #  87    0x5d27d  3      
  movl %r13d, %edi               #  88    0x5d280  3      
  nop                            #  89    0x5d283  1      
  nop                            #  90    0x5d284  1      
  callq .uw_update_context       #  91    0x5d285  5      
  jmpq .L_5d1a0                  #  92    0x5d28a  5      
  nop                            #  93    0x5d28f  1      
  nop                            #  94    0x5d290  1      
.L_5d340:                        #        0x5d291  0      
  movl $0x1a, %esi               #  95    0x5d291  5      
  jmpq .L_5d240                  #  96    0x5d296  5      
  nop                            #  97    0x5d29b  1      
  nop                            #  98    0x5d29c  1      
                                                          
.size _Unwind_ForcedUnwind_Phase2, .-_Unwind_ForcedUnwind_Phase2

