  .text
  .globl _Unwind_ForcedUnwind_Phase2
  .type _Unwind_ForcedUnwind_Phase2, @function

#! file-offset 0x5d140
#! rip-offset  0x5d140
#! capacity    512 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_ForcedUnwind_Phase2:    #        0x5d140  0      
  pushq %r14                     #  1     0x5d140  3      
  pushq %r13                     #  2     0x5d143  3      
  movl %esi, %r13d               #  3     0x5d146  3      
  pushq %r12                     #  4     0x5d149  3      
  movl %edi, %r12d               #  5     0x5d14c  3      
  pushq %rbx                     #  6     0x5d14f  2      
  subl $0x188, %esp              #  7     0x5d151  6      
  addq %r15, %rsp                #  8     0x5d157  3      
  movl %r12d, %r12d              #  9     0x5d15a  3      
  movl 0x10(%r15,%r12,1), %eax   #  10    0x5d15d  5      
  xchgw %ax, %ax                 #  11    0x5d162  3      
  movl %r12d, %r12d              #  12    0x5d165  3      
  movl 0x18(%r15,%r12,1), %r10d  #  13    0x5d168  5      
  leal 0x10(%rsp), %r14d         #  14    0x5d16d  5      
  movq %rax, 0x8(%rsp)           #  15    0x5d172  5      
  movq %r10, (%rsp)              #  16    0x5d177  4      
  nop                            #  17    0x5d17b  1      
.L_5d180:                        #        0x5d17c  0      
  movl %r14d, %esi               #  18    0x5d17c  3      
  movl %r13d, %edi               #  19    0x5d17f  3      
  nop                            #  20    0x5d182  1      
  nop                            #  21    0x5d183  1      
  callq .uw_frame_state_for      #  22    0x5d184  5      
  cmpl $0x5, %eax                #  23    0x5d189  3      
  movl %eax, %ebx                #  24    0x5d18c  2      
  je .L_5d320                    #  25    0x5d18e  6      
  testl %eax, %eax               #  26    0x5d194  2      
  je .L_5d200                    #  27    0x5d196  6      
  xchgw %ax, %ax                 #  28    0x5d19c  3      
  nop                            #  29    0x5d19f  1      
.L_5d1c0:                        #        0x5d1a0  0      
  movl $0x2, %ebx                #  30    0x5d1a0  5      
  nop                            #  31    0x5d1a5  1      
  nop                            #  32    0x5d1a6  1      
.L_5d1e0:                        #        0x5d1a7  0      
  addl $0x188, %esp              #  33    0x5d1a7  6      
  addq %r15, %rsp                #  34    0x5d1ad  3      
  movl %ebx, %eax                #  35    0x5d1b0  2      
  popq %rbx                      #  36    0x5d1b2  2      
  popq %r12                      #  37    0x5d1b4  3      
  popq %r13                      #  38    0x5d1b7  3      
  popq %r14                      #  39    0x5d1ba  3      
  popq %r11                      #  40    0x5d1bd  3      
  andl $0xffffffe0, %r11d        #  41    0x5d1c0  7      
  addq %r15, %r11                #  42    0x5d1c7  3      
  jmpq %r11                      #  43    0x5d1ca  3      
  xchgw %ax, %ax                 #  44    0x5d1cd  3      
.L_5d200:                        #        0x5d1d0  0      
  movl $0xa, %esi                #  45    0x5d1d0  5      
  nop                            #  46    0x5d1d5  1      
  nop                            #  47    0x5d1d6  1      
.L_5d220:                        #        0x5d1d7  0      
  movl (%rsp), %r9d              #  48    0x5d1d7  4      
  movl %r13d, %r8d               #  49    0x5d1db  3      
  movl %r12d, %ecx               #  50    0x5d1de  3      
  movl %r12d, %r12d              #  51    0x5d1e1  3      
  movq (%r15,%r12,1), %rdx       #  52    0x5d1e4  4      
  movl $0x1, %edi                #  53    0x5d1e8  5      
  movq 0x8(%rsp), %r10           #  54    0x5d1ed  5      
  nop                            #  55    0x5d1f2  1      
  nop                            #  56    0x5d1f3  1      
  nop                            #  57    0x5d1f4  1      
  andl $0xffffffe0, %r10d        #  58    0x5d1f5  7      
  addq %r15, %r10                #  59    0x5d1fc  3      
  callq %r10                     #  60    0x5d1ff  3      
  testl %eax, %eax               #  61    0x5d202  2      
  jne .L_5d1c0                   #  62    0x5d204  6      
  cmpl $0x5, %ebx                #  63    0x5d20a  3      
  je .L_5d1e0                    #  64    0x5d20d  6      
  movl 0x154(%rsp), %eax         #  65    0x5d213  7      
  testq %rax, %rax               #  66    0x5d21a  3      
  nop                            #  67    0x5d21d  1      
  je .L_5d2e0                    #  68    0x5d21e  6      
  movl %r13d, %r8d               #  69    0x5d224  3      
  movl %r12d, %ecx               #  70    0x5d227  3      
  movl %r12d, %r12d              #  71    0x5d22a  3      
  movq (%r15,%r12,1), %rdx       #  72    0x5d22d  4      
  movl $0xa, %esi                #  73    0x5d231  5      
  movl $0x1, %edi                #  74    0x5d236  5      
  nop                            #  75    0x5d23b  1      
  nop                            #  76    0x5d23c  1      
  nop                            #  77    0x5d23d  1      
  andl $0xffffffe0, %eax         #  78    0x5d23e  5      
  addq %r15, %rax                #  79    0x5d243  3      
  callq %rax                     #  80    0x5d246  2      
  cmpl $0x7, %eax                #  81    0x5d248  3      
  movl %eax, %ebx                #  82    0x5d24b  2      
  je .L_5d1e0                    #  83    0x5d24d  6      
  cmpl $0x8, %eax                #  84    0x5d253  3      
  jne .L_5d1c0                   #  85    0x5d256  6      
  nop                            #  86    0x5d25c  1      
.L_5d2e0:                        #        0x5d25d  0      
  movl %r14d, %esi               #  87    0x5d25d  3      
  movl %r13d, %edi               #  88    0x5d260  3      
  nop                            #  89    0x5d263  1      
  nop                            #  90    0x5d264  1      
  callq .uw_update_context       #  91    0x5d265  5      
  jmpq .L_5d180                  #  92    0x5d26a  5      
  nop                            #  93    0x5d26f  1      
  nop                            #  94    0x5d270  1      
.L_5d320:                        #        0x5d271  0      
  movl $0x1a, %esi               #  95    0x5d271  5      
  jmpq .L_5d220                  #  96    0x5d276  5      
  nop                            #  97    0x5d27b  1      
  nop                            #  98    0x5d27c  1      
                                                          
.size _Unwind_ForcedUnwind_Phase2, .-_Unwind_ForcedUnwind_Phase2

