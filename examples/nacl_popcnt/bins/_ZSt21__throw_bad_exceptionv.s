  .text
  .globl _ZSt21__throw_bad_exceptionv
  .type _ZSt21__throw_bad_exceptionv, @function

#! file-offset 0x4cbc0
#! rip-offset  0x4cbc0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt21__throw_bad_exceptionv:     #        0x4cbc0  0      
  movl $0x4, %edi                  #  1     0x4cbc0  5      
  subl $0x8, %esp                  #  2     0x4cbc5  3      
  addq %r15, %rsp                  #  3     0x4cbc8  3      
  nop                              #  4     0x4cbcb  1      
  nop                              #  5     0x4cbcc  1      
  callq .__cxa_allocate_exception  #  6     0x4cbcd  5      
  movl %eax, %edi                  #  7     0x4cbd2  2      
  movl $0x4c760, %edx              #  8     0x4cbd4  5      
  movl $0x10020ee4, %esi           #  9     0x4cbd9  5      
  movl %edi, %edi                  #  10    0x4cbde  2      
  movl $0x10020e28, (%r15,%rdi,1)  #  11    0x4cbe0  8      
  nop                              #  12    0x4cbe8  1      
  callq .__cxa_throw               #  13    0x4cbe9  5      
                                                            
.size _ZSt21__throw_bad_exceptionv, .-_ZSt21__throw_bad_exceptionv

