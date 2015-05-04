  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x7d280
#! rip-offset  0x7d280
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.setlocale:                 #        0x7d280  0      
  movq %rbx, -0x10(%rsp)    #  1     0x7d280  5      
  movq %r12, -0x8(%rsp)     #  2     0x7d285  5      
  subl $0x18, %esp          #  3     0x7d28a  3      
  addq %r15, %rsp           #  4     0x7d28d  3      
  movl %edi, %ebx           #  5     0x7d290  2      
  movl %esi, %r12d          #  6     0x7d292  3      
  nop                       #  7     0x7d295  1      
  callq .__nacl_read_tp     #  8     0x7d296  5      
  leaq -0x480(%rax), %rax   #  9     0x7d29b  7      
  movl %r12d, %edx          #  10    0x7d2a2  3      
  movl %ebx, %esi           #  11    0x7d2a5  2      
  movq 0x10(%rsp), %r12     #  12    0x7d2a7  5      
  movq 0x8(%rsp), %rbx      #  13    0x7d2ac  5      
  movl %eax, %eax           #  14    0x7d2b1  2      
  movl (%r15,%rax,1), %edi  #  15    0x7d2b3  4      
  nop                       #  16    0x7d2b7  1      
  addl $0x18, %esp          #  17    0x7d2b8  3      
  addq %r15, %rsp           #  18    0x7d2bb  3      
  jmpq ._setlocale_r        #  19    0x7d2be  5      
  nop                       #  20    0x7d2c3  1      
  nop                       #  21    0x7d2c4  1      
  nop                       #  22    0x7d2c5  1      
  nop                       #  23    0x7d2c6  1      
  nop                       #  24    0x7d2c7  1      
  nop                       #  25    0x7d2c8  1      
  nop                       #  26    0x7d2c9  1      
  nop                       #  27    0x7d2ca  1      
  nop                       #  28    0x7d2cb  1      
  nop                       #  29    0x7d2cc  1      
  nop                       #  30    0x7d2cd  1      
  nop                       #  31    0x7d2ce  1      
  nop                       #  32    0x7d2cf  1      
  nop                       #  33    0x7d2d0  1      
  nop                       #  34    0x7d2d1  1      
  nop                       #  35    0x7d2d2  1      
  nop                       #  36    0x7d2d3  1      
  nop                       #  37    0x7d2d4  1      
  nop                       #  38    0x7d2d5  1      
  nop                       #  39    0x7d2d6  1      
  nop                       #  40    0x7d2d7  1      
                                                     
.size setlocale, .-setlocale

