  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x69760
#! rip-offset  0x69760
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.fwrite:                    #        0x69760  0      
  movq %rbx, -0x20(%rsp)    #  1     0x69760  5      
  movq %r12, -0x18(%rsp)    #  2     0x69765  5      
  movl %edi, %ebx           #  3     0x6976a  2      
  movq %r13, -0x10(%rsp)    #  4     0x6976c  5      
  movq %r14, -0x8(%rsp)     #  5     0x69771  5      
  subl $0x28, %esp          #  6     0x69776  3      
  addq %r15, %rsp           #  7     0x69779  3      
  movl %esi, %r12d          #  8     0x6977c  3      
  nop                       #  9     0x6977f  1      
  movl %edx, %r13d          #  10    0x69780  3      
  movl %ecx, %r14d          #  11    0x69783  3      
  nop                       #  12    0x69786  1      
  nop                       #  13    0x69787  1      
  callq .__nacl_read_tp     #  14    0x69788  5      
  leaq -0x480(%rax), %rax   #  15    0x6978d  7      
  movl %r14d, %r8d          #  16    0x69794  3      
  movl %r13d, %ecx          #  17    0x69797  3      
  movl %r12d, %edx          #  18    0x6979a  3      
  movl %ebx, %esi           #  19    0x6979d  2      
  movq 0x10(%rsp), %r12     #  20    0x6979f  5      
  movq 0x8(%rsp), %rbx      #  21    0x697a4  5      
  nop                       #  22    0x697a9  1      
  movq 0x18(%rsp), %r13     #  23    0x697aa  5      
  movq 0x20(%rsp), %r14     #  24    0x697af  5      
  movl %eax, %eax           #  25    0x697b4  2      
  movl (%r15,%rax,1), %edi  #  26    0x697b6  4      
  addl $0x28, %esp          #  27    0x697ba  3      
  addq %r15, %rsp           #  28    0x697bd  3      
  jmpq ._fwrite_r           #  29    0x697c0  5      
  nop                       #  30    0x697c5  1      
  nop                       #  31    0x697c6  1      
  nop                       #  32    0x697c7  1      
  nop                       #  33    0x697c8  1      
  nop                       #  34    0x697c9  1      
                                                     
.size fwrite, .-fwrite

