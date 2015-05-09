  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x80ca0
#! rip-offset  0x80ca0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.strtol:                    #        0x80ca0  0      
  movq %rbx, -0x18(%rsp)    #  1     0x80ca0  5      
  movq %r12, -0x10(%rsp)    #  2     0x80ca5  5      
  movl %edi, %ebx           #  3     0x80caa  2      
  movq %r13, -0x8(%rsp)     #  4     0x80cac  5      
  subl $0x18, %esp          #  5     0x80cb1  3      
  addq %r15, %rsp           #  6     0x80cb4  3      
  movl %edx, %r13d          #  7     0x80cb7  3      
  movl %esi, %r12d          #  8     0x80cba  3      
  nop                       #  9     0x80cbd  1      
  nop                       #  10    0x80cbe  1      
  nop                       #  11    0x80cbf  1      
  callq .__nacl_read_tp     #  12    0x80cc0  5      
  leaq -0x480(%rax), %rax   #  13    0x80cc5  7      
  movl %r13d, %ecx          #  14    0x80ccc  3      
  movl %r12d, %edx          #  15    0x80ccf  3      
  movl %ebx, %esi           #  16    0x80cd2  2      
  movq 0x8(%rsp), %r12      #  17    0x80cd4  5      
  movq (%rsp), %rbx         #  18    0x80cd9  4      
  movq 0x10(%rsp), %r13     #  19    0x80cdd  5      
  nop                       #  20    0x80ce2  1      
  movl %eax, %eax           #  21    0x80ce3  2      
  movl (%r15,%rax,1), %edi  #  22    0x80ce5  4      
  addl $0x18, %esp          #  23    0x80ce9  3      
  addq %r15, %rsp           #  24    0x80cec  3      
  jmpq ._strtol_r           #  25    0x80cef  5      
  nop                       #  26    0x80cf4  1      
  nop                       #  27    0x80cf5  1      
  nop                       #  28    0x80cf6  1      
  nop                       #  29    0x80cf7  1      
  nop                       #  30    0x80cf8  1      
  nop                       #  31    0x80cf9  1      
  nop                       #  32    0x80cfa  1      
  nop                       #  33    0x80cfb  1      
  nop                       #  34    0x80cfc  1      
  nop                       #  35    0x80cfd  1      
  nop                       #  36    0x80cfe  1      
  nop                       #  37    0x80cff  1      
  nop                       #  38    0x80d00  1      
  nop                       #  39    0x80d01  1      
  nop                       #  40    0x80d02  1      
                                                     
.size strtol, .-strtol

