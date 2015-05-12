  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x80cc0
#! rip-offset  0x80cc0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.strtol:                    #        0x80cc0  0      
  movq %rbx, -0x18(%rsp)    #  1     0x80cc0  5      
  movq %r12, -0x10(%rsp)    #  2     0x80cc5  5      
  movl %edi, %ebx           #  3     0x80cca  2      
  movq %r13, -0x8(%rsp)     #  4     0x80ccc  5      
  subl $0x18, %esp          #  5     0x80cd1  3      
  addq %r15, %rsp           #  6     0x80cd4  3      
  movl %edx, %r13d          #  7     0x80cd7  3      
  movl %esi, %r12d          #  8     0x80cda  3      
  nop                       #  9     0x80cdd  1      
  nop                       #  10    0x80cde  1      
  nop                       #  11    0x80cdf  1      
  callq .__nacl_read_tp     #  12    0x80ce0  5      
  leaq -0x480(%rax), %rax   #  13    0x80ce5  7      
  movl %r13d, %ecx          #  14    0x80cec  3      
  movl %r12d, %edx          #  15    0x80cef  3      
  movl %ebx, %esi           #  16    0x80cf2  2      
  movq 0x8(%rsp), %r12      #  17    0x80cf4  5      
  movq (%rsp), %rbx         #  18    0x80cf9  4      
  movq 0x10(%rsp), %r13     #  19    0x80cfd  5      
  nop                       #  20    0x80d02  1      
  movl %eax, %eax           #  21    0x80d03  2      
  movl (%r15,%rax,1), %edi  #  22    0x80d05  4      
  addl $0x18, %esp          #  23    0x80d09  3      
  addq %r15, %rsp           #  24    0x80d0c  3      
  jmpq ._strtol_r           #  25    0x80d0f  5      
  nop                       #  26    0x80d14  1      
  nop                       #  27    0x80d15  1      
  nop                       #  28    0x80d16  1      
  nop                       #  29    0x80d17  1      
  nop                       #  30    0x80d18  1      
  nop                       #  31    0x80d19  1      
  nop                       #  32    0x80d1a  1      
  nop                       #  33    0x80d1b  1      
  nop                       #  34    0x80d1c  1      
  nop                       #  35    0x80d1d  1      
  nop                       #  36    0x80d1e  1      
  nop                       #  37    0x80d1f  1      
  nop                       #  38    0x80d20  1      
  nop                       #  39    0x80d21  1      
  nop                       #  40    0x80d22  1      
                                                     
.size strtol, .-strtol

