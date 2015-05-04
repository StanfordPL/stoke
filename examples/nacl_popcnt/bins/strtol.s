  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x80d40
#! rip-offset  0x80d40
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.strtol:                    #        0x80d40  0      
  movq %rbx, -0x18(%rsp)    #  1     0x80d40  5      
  movq %r12, -0x10(%rsp)    #  2     0x80d45  5      
  movl %edi, %ebx           #  3     0x80d4a  2      
  movq %r13, -0x8(%rsp)     #  4     0x80d4c  5      
  subl $0x18, %esp          #  5     0x80d51  3      
  addq %r15, %rsp           #  6     0x80d54  3      
  movl %edx, %r13d          #  7     0x80d57  3      
  movl %esi, %r12d          #  8     0x80d5a  3      
  nop                       #  9     0x80d5d  1      
  nop                       #  10    0x80d5e  1      
  nop                       #  11    0x80d5f  1      
  callq .__nacl_read_tp     #  12    0x80d60  5      
  leaq -0x480(%rax), %rax   #  13    0x80d65  7      
  movl %r13d, %ecx          #  14    0x80d6c  3      
  movl %r12d, %edx          #  15    0x80d6f  3      
  movl %ebx, %esi           #  16    0x80d72  2      
  movq 0x8(%rsp), %r12      #  17    0x80d74  5      
  movq (%rsp), %rbx         #  18    0x80d79  4      
  movq 0x10(%rsp), %r13     #  19    0x80d7d  5      
  nop                       #  20    0x80d82  1      
  movl %eax, %eax           #  21    0x80d83  2      
  movl (%r15,%rax,1), %edi  #  22    0x80d85  4      
  addl $0x18, %esp          #  23    0x80d89  3      
  addq %r15, %rsp           #  24    0x80d8c  3      
  jmpq ._strtol_r           #  25    0x80d8f  5      
  nop                       #  26    0x80d94  1      
  nop                       #  27    0x80d95  1      
  nop                       #  28    0x80d96  1      
  nop                       #  29    0x80d97  1      
  nop                       #  30    0x80d98  1      
  nop                       #  31    0x80d99  1      
  nop                       #  32    0x80d9a  1      
  nop                       #  33    0x80d9b  1      
  nop                       #  34    0x80d9c  1      
  nop                       #  35    0x80d9d  1      
  nop                       #  36    0x80d9e  1      
  nop                       #  37    0x80d9f  1      
  nop                       #  38    0x80da0  1      
  nop                       #  39    0x80da1  1      
  nop                       #  40    0x80da2  1      
                                                     
.size strtol, .-strtol

