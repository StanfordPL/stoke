  .text
  .globl strerror
  .type strerror, @function

#! file-offset 0x6b7a0
#! rip-offset  0x6b7a0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.strerror:                  #        0x6b7a0  0      
  pushq %rbx                #  1     0x6b7a0  2      
  movl %edi, %ebx           #  2     0x6b7a2  2      
  nop                       #  3     0x6b7a4  1      
  nop                       #  4     0x6b7a5  1      
  callq .__nacl_read_tp     #  5     0x6b7a6  5      
  leaq -0x480(%rax), %rax   #  6     0x6b7ab  7      
  movl %ebx, %esi           #  7     0x6b7b2  2      
  xorl %ecx, %ecx           #  8     0x6b7b4  2      
  popq %rbx                 #  9     0x6b7b6  2      
  xorl %edx, %edx           #  10    0x6b7b8  2      
  movl %eax, %eax           #  11    0x6b7ba  2      
  movl (%r15,%rax,1), %edi  #  12    0x6b7bc  4      
  jmpq ._strerror_r         #  13    0x6b7c0  5      
  nop                       #  14    0x6b7c5  1      
  nop                       #  15    0x6b7c6  1      
  nop                       #  16    0x6b7c7  1      
  nop                       #  17    0x6b7c8  1      
  nop                       #  18    0x6b7c9  1      
  nop                       #  19    0x6b7ca  1      
  nop                       #  20    0x6b7cb  1      
                                                     
.size strerror, .-strerror

