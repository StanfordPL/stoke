  .text
  .globl _Unwind_ForcedUnwind_Phase2
  .type _Unwind_ForcedUnwind_Phase2, @function

#! file-offset 0x5d1e0
#! rip-offset  0x5d1e0
#! capacity    512 bytes

# Text                           #  Line  RIP      Bytes  
._Unwind_ForcedUnwind_Phase2:    #        0x5d1e0  0      
  pushq %r14                     #  1     0x5d1e0  3      
  pushq %r13                     #  2     0x5d1e3  3      
  movl %esi, %r13d               #  3     0x5d1e6  3      
  pushq %r12                     #  4     0x5d1e9  3      
  movl %edi, %r12d               #  5     0x5d1ec  3      
  pushq %rbx                     #  6     0x5d1ef  2      
  subl $0x188, %esp              #  7     0x5d1f1  6      
  addq %r15, %rsp                #  8     0x5d1f7  3      
  movl %r12d, %r12d              #  9     0x5d1fa  3      
  movl 0x10(%r15,%r12,1), %eax   #  10    0x5d1fd  5      
  xchgw %ax, %ax                 #  11    0x5d202  3      
  movl %r12d, %r12d              #  12    0x5d205  3      
  movl 0x18(%r15,%r12,1), %r10d  #  13    0x5d208  5      
  leal 0x10(%rsp), %r14d         #  14    0x5d20d  5      
  movq %rax, 0x8(%rsp)           #  15    0x5d212  5      
  movq %r10, (%rsp)              #  16    0x5d217  4      
  nop                            #  17    0x5d21b  1      
.L_5d220:                        #        0x5d21c  0      
  movl %r14d, %esi               #  18    0x5d21c  3      
  movl %r13d, %edi               #  19    0x5d21f  3      
  nop                            #  20    0x5d222  1      
  nop                            #  21    0x5d223  1      
  callq .uw_frame_state_for      #  22    0x5d224  5      
  cmpl $0x5, %eax                #  23    0x5d229  3      
  movl %eax, %ebx                #  24    0x5d22c  2      
  je .L_5d3c0                    #  25    0x5d22e  6      
  testl %eax, %eax               #  26    0x5d234  2      
  je .L_5d2a0                    #  27    0x5d236  6      
  xchgw %ax, %ax                 #  28    0x5d23c  3      
  nop                            #  29    0x5d23f  1      
.L_5d260:                        #        0x5d240  0      
  movl $0x2, %ebx                #  30    0x5d240  5      
  nop                            #  31    0x5d245  1      
  nop                            #  32    0x5d246  1      
.L_5d280:                        #        0x5d247  0      
  addl $0x188, %esp              #  33    0x5d247  6      
  addq %r15, %rsp                #  34    0x5d24d  3      
  movl %ebx, %eax                #  35    0x5d250  2      
  popq %rbx                      #  36    0x5d252  2      
  popq %r12                      #  37    0x5d254  3      
  popq %r13                      #  38    0x5d257  3      
  popq %r14                      #  39    0x5d25a  3      
  popq %r11                      #  40    0x5d25d  3      
  andl $0xffffffe0, %r11d        #  41    0x5d260  7      
  addq %r15, %r11                #  42    0x5d267  3      
  jmpq %r11                      #  43    0x5d26a  3      
  xchgw %ax, %ax                 #  44    0x5d26d  3      
.L_5d2a0:                        #        0x5d270  0      
  movl $0xa, %esi                #  45    0x5d270  5      
  nop                            #  46    0x5d275  1      
  nop                            #  47    0x5d276  1      
.L_5d2c0:                        #        0x5d277  0      
  movl (%rsp), %r9d              #  48    0x5d277  4      
  movl %r13d, %r8d               #  49    0x5d27b  3      
  movl %r12d, %ecx               #  50    0x5d27e  3      
  movl %r12d, %r12d              #  51    0x5d281  3      
  movq (%r15,%r12,1), %rdx       #  52    0x5d284  4      
  movl $0x1, %edi                #  53    0x5d288  5      
  movq 0x8(%rsp), %r10           #  54    0x5d28d  5      
  nop                            #  55    0x5d292  1      
  nop                            #  56    0x5d293  1      
  nop                            #  57    0x5d294  1      
  andl $0xffffffe0, %r10d        #  58    0x5d295  7      
  addq %r15, %r10                #  59    0x5d29c  3      
  callq %r10                     #  60    0x5d29f  3      
  testl %eax, %eax               #  61    0x5d2a2  2      
  jne .L_5d260                   #  62    0x5d2a4  6      
  cmpl $0x5, %ebx                #  63    0x5d2aa  3      
  je .L_5d280                    #  64    0x5d2ad  6      
  movl 0x154(%rsp), %eax         #  65    0x5d2b3  7      
  testq %rax, %rax               #  66    0x5d2ba  3      
  nop                            #  67    0x5d2bd  1      
  je .L_5d380                    #  68    0x5d2be  6      
  movl %r13d, %r8d               #  69    0x5d2c4  3      
  movl %r12d, %ecx               #  70    0x5d2c7  3      
  movl %r12d, %r12d              #  71    0x5d2ca  3      
  movq (%r15,%r12,1), %rdx       #  72    0x5d2cd  4      
  movl $0xa, %esi                #  73    0x5d2d1  5      
  movl $0x1, %edi                #  74    0x5d2d6  5      
  nop                            #  75    0x5d2db  1      
  nop                            #  76    0x5d2dc  1      
  nop                            #  77    0x5d2dd  1      
  andl $0xffffffe0, %eax         #  78    0x5d2de  5      
  addq %r15, %rax                #  79    0x5d2e3  3      
  callq %rax                     #  80    0x5d2e6  2      
  cmpl $0x7, %eax                #  81    0x5d2e8  3      
  movl %eax, %ebx                #  82    0x5d2eb  2      
  je .L_5d280                    #  83    0x5d2ed  6      
  cmpl $0x8, %eax                #  84    0x5d2f3  3      
  jne .L_5d260                   #  85    0x5d2f6  6      
  nop                            #  86    0x5d2fc  1      
.L_5d380:                        #        0x5d2fd  0      
  movl %r14d, %esi               #  87    0x5d2fd  3      
  movl %r13d, %edi               #  88    0x5d300  3      
  nop                            #  89    0x5d303  1      
  nop                            #  90    0x5d304  1      
  callq .uw_update_context       #  91    0x5d305  5      
  jmpq .L_5d220                  #  92    0x5d30a  5      
  nop                            #  93    0x5d30f  1      
  nop                            #  94    0x5d310  1      
.L_5d3c0:                        #        0x5d311  0      
  movl $0x1a, %esi               #  95    0x5d311  5      
  jmpq .L_5d2c0                  #  96    0x5d316  5      
  nop                            #  97    0x5d31b  1      
  nop                            #  98    0x5d31c  1      
                                                          
.size _Unwind_ForcedUnwind_Phase2, .-_Unwind_ForcedUnwind_Phase2

