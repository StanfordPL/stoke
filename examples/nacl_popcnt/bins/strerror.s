  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x6b700
#! rip-offset  0x6b700
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.strerror:                  #        0x6b700  0      
  pushq %rbx                #  1     0x6b700  2      
  movl %edi, %ebx           #  2     0x6b702  2      
  nop                       #  3     0x6b704  1      
  nop                       #  4     0x6b705  1      
  callq .__nacl_read_tp     #  5     0x6b706  5      
  leaq -0x480(%rax), %rax   #  6     0x6b70b  7      
  movl %ebx, %esi           #  7     0x6b712  2      
  xorl %ecx, %ecx           #  8     0x6b714  2      
  popq %rbx                 #  9     0x6b716  2      
  xorl %edx, %edx           #  10    0x6b718  2      
  movl %eax, %eax           #  11    0x6b71a  2      
  movl (%r15,%rax,1), %edi  #  12    0x6b71c  4      
  jmpq ._strerror_r         #  13    0x6b720  5      
  nop                       #  14    0x6b725  1      
  nop                       #  15    0x6b726  1      
  nop                       #  16    0x6b727  1      
  nop                       #  17    0x6b728  1      
  nop                       #  18    0x6b729  1      
  nop                       #  19    0x6b72a  1      
  nop                       #  20    0x6b72b  1      
                                                     
.size strerror, .-strerror

