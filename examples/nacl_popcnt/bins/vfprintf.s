  .text
  .globl vfprintf
  .type vfprintf, @function

#! file-offset 0x76de0
#! rip-offset  0x76de0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.vfprintf:                  #        0x76de0  0      
  movq %rbx, -0x18(%rsp)    #  1     0x76de0  5      
  movq %r12, -0x10(%rsp)    #  2     0x76de5  5      
  movl %edi, %ebx           #  3     0x76dea  2      
  movq %r13, -0x8(%rsp)     #  4     0x76dec  5      
  subl $0x18, %esp          #  5     0x76df1  3      
  addq %r15, %rsp           #  6     0x76df4  3      
  movl %esi, %r12d          #  7     0x76df7  3      
  movl %edx, %r13d          #  8     0x76dfa  3      
  nop                       #  9     0x76dfd  1      
  nop                       #  10    0x76dfe  1      
  nop                       #  11    0x76dff  1      
  callq .__nacl_read_tp     #  12    0x76e00  5      
  leaq -0x480(%rax), %rax   #  13    0x76e05  7      
  movl %r13d, %ecx          #  14    0x76e0c  3      
  movl %r12d, %edx          #  15    0x76e0f  3      
  movl %ebx, %esi           #  16    0x76e12  2      
  movq 0x8(%rsp), %r12      #  17    0x76e14  5      
  movq (%rsp), %rbx         #  18    0x76e19  4      
  movq 0x10(%rsp), %r13     #  19    0x76e1d  5      
  nop                       #  20    0x76e22  1      
  movl %eax, %eax           #  21    0x76e23  2      
  movl (%r15,%rax,1), %edi  #  22    0x76e25  4      
  addl $0x18, %esp          #  23    0x76e29  3      
  addq %r15, %rsp           #  24    0x76e2c  3      
  jmpq ._vfprintf_r         #  25    0x76e2f  5      
  nop                       #  26    0x76e34  1      
  nop                       #  27    0x76e35  1      
  nop                       #  28    0x76e36  1      
  nop                       #  29    0x76e37  1      
  nop                       #  30    0x76e38  1      
  nop                       #  31    0x76e39  1      
  nop                       #  32    0x76e3a  1      
  nop                       #  33    0x76e3b  1      
  nop                       #  34    0x76e3c  1      
  nop                       #  35    0x76e3d  1      
  nop                       #  36    0x76e3e  1      
  nop                       #  37    0x76e3f  1      
  nop                       #  38    0x76e40  1      
  nop                       #  39    0x76e41  1      
  nop                       #  40    0x76e42  1      
                                                     
.size vfprintf, .-vfprintf

