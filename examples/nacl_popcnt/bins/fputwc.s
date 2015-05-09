  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x88080
#! rip-offset  0x88080
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.fputwc:                        #        0x88080  0      
  movq %rbx, -0x18(%rsp)        #  1     0x88080  5      
  movq %r12, -0x10(%rsp)        #  2     0x88085  5      
  movl %edi, %ebx               #  3     0x8808a  2      
  movq %r13, -0x8(%rsp)         #  4     0x8808c  5      
  subl $0x18, %esp              #  5     0x88091  3      
  addq %r15, %rsp               #  6     0x88094  3      
  movl %esi, %r13d              #  7     0x88097  3      
  nop                           #  8     0x8809a  1      
  callq .__nacl_read_tp         #  9     0x8809b  5      
  leaq -0x480(%rax), %rax       #  10    0x880a0  7      
  movl %eax, %eax               #  11    0x880a7  2      
  movl (%r15,%rax,1), %r12d     #  12    0x880a9  4      
  testq %r12, %r12              #  13    0x880ad  3      
  je .L_880e0                   #  14    0x880b0  6      
  movl %r12d, %r12d             #  15    0x880b6  3      
  movl 0x38(%r15,%r12,1), %eax  #  16    0x880b9  5      
  testl %eax, %eax              #  17    0x880be  2      
  nop                           #  18    0x880c0  1      
  jne .L_880e0                  #  19    0x880c1  6      
  movl %r12d, %edi              #  20    0x880c7  3      
  nop                           #  21    0x880ca  1      
  nop                           #  22    0x880cb  1      
  callq .__sinit                #  23    0x880cc  5      
.L_880e0:                       #        0x880d1  0      
  movl %r13d, %edx              #  24    0x880d1  3      
  movl %ebx, %esi               #  25    0x880d4  2      
  movl %r12d, %edi              #  26    0x880d6  3      
  movq (%rsp), %rbx             #  27    0x880d9  4      
  movq 0x8(%rsp), %r12          #  28    0x880dd  5      
  movq 0x10(%rsp), %r13         #  29    0x880e2  5      
  addl $0x18, %esp              #  30    0x880e7  3      
  addq %r15, %rsp               #  31    0x880ea  3      
  nop                           #  32    0x880ed  1      
  jmpq ._fputwc_r               #  33    0x880ee  5      
  nop                           #  34    0x880f3  1      
  nop                           #  35    0x880f4  1      
  nop                           #  36    0x880f5  1      
  nop                           #  37    0x880f6  1      
  nop                           #  38    0x880f7  1      
  nop                           #  39    0x880f8  1      
  nop                           #  40    0x880f9  1      
  nop                           #  41    0x880fa  1      
  nop                           #  42    0x880fb  1      
  nop                           #  43    0x880fc  1      
  nop                           #  44    0x880fd  1      
  nop                           #  45    0x880fe  1      
  nop                           #  46    0x880ff  1      
  nop                           #  47    0x88100  1      
  nop                           #  48    0x88101  1      
  nop                           #  49    0x88102  1      
  nop                           #  50    0x88103  1      
  nop                           #  51    0x88104  1      
  nop                           #  52    0x88105  1      
  nop                           #  53    0x88106  1      
  nop                           #  54    0x88107  1      
  nop                           #  55    0x88108  1      
  nop                           #  56    0x88109  1      
  nop                           #  57    0x8810a  1      
  nop                           #  58    0x8810b  1      
  nop                           #  59    0x8810c  1      
  nop                           #  60    0x8810d  1      
                                                         
.size fputwc, .-fputwc

