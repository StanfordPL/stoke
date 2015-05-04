  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x69800
#! rip-offset  0x69800
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.fwrite:                    #        0x69800  0      
  movq %rbx, -0x20(%rsp)    #  1     0x69800  5      
  movq %r12, -0x18(%rsp)    #  2     0x69805  5      
  movl %edi, %ebx           #  3     0x6980a  2      
  movq %r13, -0x10(%rsp)    #  4     0x6980c  5      
  movq %r14, -0x8(%rsp)     #  5     0x69811  5      
  subl $0x28, %esp          #  6     0x69816  3      
  addq %r15, %rsp           #  7     0x69819  3      
  movl %esi, %r12d          #  8     0x6981c  3      
  nop                       #  9     0x6981f  1      
  movl %edx, %r13d          #  10    0x69820  3      
  movl %ecx, %r14d          #  11    0x69823  3      
  nop                       #  12    0x69826  1      
  nop                       #  13    0x69827  1      
  callq .__nacl_read_tp     #  14    0x69828  5      
  leaq -0x480(%rax), %rax   #  15    0x6982d  7      
  movl %r14d, %r8d          #  16    0x69834  3      
  movl %r13d, %ecx          #  17    0x69837  3      
  movl %r12d, %edx          #  18    0x6983a  3      
  movl %ebx, %esi           #  19    0x6983d  2      
  movq 0x10(%rsp), %r12     #  20    0x6983f  5      
  movq 0x8(%rsp), %rbx      #  21    0x69844  5      
  nop                       #  22    0x69849  1      
  movq 0x18(%rsp), %r13     #  23    0x6984a  5      
  movq 0x20(%rsp), %r14     #  24    0x6984f  5      
  movl %eax, %eax           #  25    0x69854  2      
  movl (%r15,%rax,1), %edi  #  26    0x69856  4      
  addl $0x28, %esp          #  27    0x6985a  3      
  addq %r15, %rsp           #  28    0x6985d  3      
  jmpq ._fwrite_r           #  29    0x69860  5      
  nop                       #  30    0x69865  1      
  nop                       #  31    0x69866  1      
  nop                       #  32    0x69867  1      
  nop                       #  33    0x69868  1      
  nop                       #  34    0x69869  1      
                                                     
.size fwrite, .-fwrite

