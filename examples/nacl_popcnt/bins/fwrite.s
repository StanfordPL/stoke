  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x69780
#! rip-offset  0x69780
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.fwrite:                    #        0x69780  0      
  movq %rbx, -0x20(%rsp)    #  1     0x69780  5      
  movq %r12, -0x18(%rsp)    #  2     0x69785  5      
  movl %edi, %ebx           #  3     0x6978a  2      
  movq %r13, -0x10(%rsp)    #  4     0x6978c  5      
  movq %r14, -0x8(%rsp)     #  5     0x69791  5      
  subl $0x28, %esp          #  6     0x69796  3      
  addq %r15, %rsp           #  7     0x69799  3      
  movl %esi, %r12d          #  8     0x6979c  3      
  nop                       #  9     0x6979f  1      
  movl %edx, %r13d          #  10    0x697a0  3      
  movl %ecx, %r14d          #  11    0x697a3  3      
  nop                       #  12    0x697a6  1      
  nop                       #  13    0x697a7  1      
  callq .__nacl_read_tp     #  14    0x697a8  5      
  leaq -0x480(%rax), %rax   #  15    0x697ad  7      
  movl %r14d, %r8d          #  16    0x697b4  3      
  movl %r13d, %ecx          #  17    0x697b7  3      
  movl %r12d, %edx          #  18    0x697ba  3      
  movl %ebx, %esi           #  19    0x697bd  2      
  movq 0x10(%rsp), %r12     #  20    0x697bf  5      
  movq 0x8(%rsp), %rbx      #  21    0x697c4  5      
  nop                       #  22    0x697c9  1      
  movq 0x18(%rsp), %r13     #  23    0x697ca  5      
  movq 0x20(%rsp), %r14     #  24    0x697cf  5      
  movl %eax, %eax           #  25    0x697d4  2      
  movl (%r15,%rax,1), %edi  #  26    0x697d6  4      
  addl $0x28, %esp          #  27    0x697da  3      
  addq %r15, %rsp           #  28    0x697dd  3      
  jmpq ._fwrite_r           #  29    0x697e0  5      
  nop                       #  30    0x697e5  1      
  nop                       #  31    0x697e6  1      
  nop                       #  32    0x697e7  1      
  nop                       #  33    0x697e8  1      
  nop                       #  34    0x697e9  1      
                                                     
.size fwrite, .-fwrite

