  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x88120
#! rip-offset  0x88120
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.fputwc:                        #        0x88120  0      
  movq %rbx, -0x18(%rsp)        #  1     0x88120  5      
  movq %r12, -0x10(%rsp)        #  2     0x88125  5      
  movl %edi, %ebx               #  3     0x8812a  2      
  movq %r13, -0x8(%rsp)         #  4     0x8812c  5      
  subl $0x18, %esp              #  5     0x88131  3      
  addq %r15, %rsp               #  6     0x88134  3      
  movl %esi, %r13d              #  7     0x88137  3      
  nop                           #  8     0x8813a  1      
  callq .__nacl_read_tp         #  9     0x8813b  5      
  leaq -0x480(%rax), %rax       #  10    0x88140  7      
  movl %eax, %eax               #  11    0x88147  2      
  movl (%r15,%rax,1), %r12d     #  12    0x88149  4      
  testq %r12, %r12              #  13    0x8814d  3      
  je .L_88180                   #  14    0x88150  6      
  movl %r12d, %r12d             #  15    0x88156  3      
  movl 0x38(%r15,%r12,1), %eax  #  16    0x88159  5      
  testl %eax, %eax              #  17    0x8815e  2      
  nop                           #  18    0x88160  1      
  jne .L_88180                  #  19    0x88161  6      
  movl %r12d, %edi              #  20    0x88167  3      
  nop                           #  21    0x8816a  1      
  nop                           #  22    0x8816b  1      
  callq .__sinit                #  23    0x8816c  5      
.L_88180:                       #        0x88171  0      
  movl %r13d, %edx              #  24    0x88171  3      
  movl %ebx, %esi               #  25    0x88174  2      
  movl %r12d, %edi              #  26    0x88176  3      
  movq (%rsp), %rbx             #  27    0x88179  4      
  movq 0x8(%rsp), %r12          #  28    0x8817d  5      
  movq 0x10(%rsp), %r13         #  29    0x88182  5      
  addl $0x18, %esp              #  30    0x88187  3      
  addq %r15, %rsp               #  31    0x8818a  3      
  nop                           #  32    0x8818d  1      
  jmpq ._fputwc_r               #  33    0x8818e  5      
  nop                           #  34    0x88193  1      
  nop                           #  35    0x88194  1      
  nop                           #  36    0x88195  1      
  nop                           #  37    0x88196  1      
  nop                           #  38    0x88197  1      
  nop                           #  39    0x88198  1      
  nop                           #  40    0x88199  1      
  nop                           #  41    0x8819a  1      
  nop                           #  42    0x8819b  1      
  nop                           #  43    0x8819c  1      
  nop                           #  44    0x8819d  1      
  nop                           #  45    0x8819e  1      
  nop                           #  46    0x8819f  1      
  nop                           #  47    0x881a0  1      
  nop                           #  48    0x881a1  1      
  nop                           #  49    0x881a2  1      
  nop                           #  50    0x881a3  1      
  nop                           #  51    0x881a4  1      
  nop                           #  52    0x881a5  1      
  nop                           #  53    0x881a6  1      
  nop                           #  54    0x881a7  1      
  nop                           #  55    0x881a8  1      
  nop                           #  56    0x881a9  1      
  nop                           #  57    0x881aa  1      
  nop                           #  58    0x881ab  1      
  nop                           #  59    0x881ac  1      
  nop                           #  60    0x881ad  1      
                                                         
.size fputwc, .-fputwc

