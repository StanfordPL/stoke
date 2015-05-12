  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x880a0
#! rip-offset  0x880a0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.fputwc:                        #        0x880a0  0      
  movq %rbx, -0x18(%rsp)        #  1     0x880a0  5      
  movq %r12, -0x10(%rsp)        #  2     0x880a5  5      
  movl %edi, %ebx               #  3     0x880aa  2      
  movq %r13, -0x8(%rsp)         #  4     0x880ac  5      
  subl $0x18, %esp              #  5     0x880b1  3      
  addq %r15, %rsp               #  6     0x880b4  3      
  movl %esi, %r13d              #  7     0x880b7  3      
  nop                           #  8     0x880ba  1      
  callq .__nacl_read_tp         #  9     0x880bb  5      
  leaq -0x480(%rax), %rax       #  10    0x880c0  7      
  movl %eax, %eax               #  11    0x880c7  2      
  movl (%r15,%rax,1), %r12d     #  12    0x880c9  4      
  testq %r12, %r12              #  13    0x880cd  3      
  je .L_88100                   #  14    0x880d0  6      
  movl %r12d, %r12d             #  15    0x880d6  3      
  movl 0x38(%r15,%r12,1), %eax  #  16    0x880d9  5      
  testl %eax, %eax              #  17    0x880de  2      
  nop                           #  18    0x880e0  1      
  jne .L_88100                  #  19    0x880e1  6      
  movl %r12d, %edi              #  20    0x880e7  3      
  nop                           #  21    0x880ea  1      
  nop                           #  22    0x880eb  1      
  callq .__sinit                #  23    0x880ec  5      
.L_88100:                       #        0x880f1  0      
  movl %r13d, %edx              #  24    0x880f1  3      
  movl %ebx, %esi               #  25    0x880f4  2      
  movl %r12d, %edi              #  26    0x880f6  3      
  movq (%rsp), %rbx             #  27    0x880f9  4      
  movq 0x8(%rsp), %r12          #  28    0x880fd  5      
  movq 0x10(%rsp), %r13         #  29    0x88102  5      
  addl $0x18, %esp              #  30    0x88107  3      
  addq %r15, %rsp               #  31    0x8810a  3      
  nop                           #  32    0x8810d  1      
  jmpq ._fputwc_r               #  33    0x8810e  5      
  nop                           #  34    0x88113  1      
  nop                           #  35    0x88114  1      
  nop                           #  36    0x88115  1      
  nop                           #  37    0x88116  1      
  nop                           #  38    0x88117  1      
  nop                           #  39    0x88118  1      
  nop                           #  40    0x88119  1      
  nop                           #  41    0x8811a  1      
  nop                           #  42    0x8811b  1      
  nop                           #  43    0x8811c  1      
  nop                           #  44    0x8811d  1      
  nop                           #  45    0x8811e  1      
  nop                           #  46    0x8811f  1      
  nop                           #  47    0x88120  1      
  nop                           #  48    0x88121  1      
  nop                           #  49    0x88122  1      
  nop                           #  50    0x88123  1      
  nop                           #  51    0x88124  1      
  nop                           #  52    0x88125  1      
  nop                           #  53    0x88126  1      
  nop                           #  54    0x88127  1      
  nop                           #  55    0x88128  1      
  nop                           #  56    0x88129  1      
  nop                           #  57    0x8812a  1      
  nop                           #  58    0x8812b  1      
  nop                           #  59    0x8812c  1      
  nop                           #  60    0x8812d  1      
                                                         
.size fputwc, .-fputwc

