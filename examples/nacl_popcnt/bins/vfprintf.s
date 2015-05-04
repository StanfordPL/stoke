  .text
  .globl vfprintf
  .type vfprintf, @function

#! file-offset 0x76e60
#! rip-offset  0x76e60
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.vfprintf:                  #        0x76e60  0      
  movq %rbx, -0x18(%rsp)    #  1     0x76e60  5      
  movq %r12, -0x10(%rsp)    #  2     0x76e65  5      
  movl %edi, %ebx           #  3     0x76e6a  2      
  movq %r13, -0x8(%rsp)     #  4     0x76e6c  5      
  subl $0x18, %esp          #  5     0x76e71  3      
  addq %r15, %rsp           #  6     0x76e74  3      
  movl %esi, %r12d          #  7     0x76e77  3      
  movl %edx, %r13d          #  8     0x76e7a  3      
  nop                       #  9     0x76e7d  1      
  nop                       #  10    0x76e7e  1      
  nop                       #  11    0x76e7f  1      
  callq .__nacl_read_tp     #  12    0x76e80  5      
  leaq -0x480(%rax), %rax   #  13    0x76e85  7      
  movl %r13d, %ecx          #  14    0x76e8c  3      
  movl %r12d, %edx          #  15    0x76e8f  3      
  movl %ebx, %esi           #  16    0x76e92  2      
  movq 0x8(%rsp), %r12      #  17    0x76e94  5      
  movq (%rsp), %rbx         #  18    0x76e99  4      
  movq 0x10(%rsp), %r13     #  19    0x76e9d  5      
  nop                       #  20    0x76ea2  1      
  movl %eax, %eax           #  21    0x76ea3  2      
  movl (%r15,%rax,1), %edi  #  22    0x76ea5  4      
  addl $0x18, %esp          #  23    0x76ea9  3      
  addq %r15, %rsp           #  24    0x76eac  3      
  jmpq ._vfprintf_r         #  25    0x76eaf  5      
  nop                       #  26    0x76eb4  1      
  nop                       #  27    0x76eb5  1      
  nop                       #  28    0x76eb6  1      
  nop                       #  29    0x76eb7  1      
  nop                       #  30    0x76eb8  1      
  nop                       #  31    0x76eb9  1      
  nop                       #  32    0x76eba  1      
  nop                       #  33    0x76ebb  1      
  nop                       #  34    0x76ebc  1      
  nop                       #  35    0x76ebd  1      
  nop                       #  36    0x76ebe  1      
  nop                       #  37    0x76ebf  1      
  nop                       #  38    0x76ec0  1      
  nop                       #  39    0x76ec1  1      
  nop                       #  40    0x76ec2  1      
                                                     
.size vfprintf, .-vfprintf

