  .text
  .globl _ZSt21__throw_bad_exceptionv
  .type _ZSt21__throw_bad_exceptionv, @function

#! file-offset 0x4cc60
#! rip-offset  0x4cc60
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt21__throw_bad_exceptionv:     #        0x4cc60  0      
  movl $0x4, %edi                  #  1     0x4cc60  5      
  subl $0x8, %esp                  #  2     0x4cc65  3      
  addq %r15, %rsp                  #  3     0x4cc68  3      
  nop                              #  4     0x4cc6b  1      
  nop                              #  5     0x4cc6c  1      
  callq .__cxa_allocate_exception  #  6     0x4cc6d  5      
  movl %eax, %edi                  #  7     0x4cc72  2      
  movl $0x4c800, %edx              #  8     0x4cc74  5      
  movl $0x10020ee4, %esi           #  9     0x4cc79  5      
  movl %edi, %edi                  #  10    0x4cc7e  2      
  movl $0x10020e28, (%r15,%rdi,1)  #  11    0x4cc80  8      
  nop                              #  12    0x4cc88  1      
  callq .__cxa_throw               #  13    0x4cc89  5      
                                                            
.size _ZSt21__throw_bad_exceptionv, .-_ZSt21__throw_bad_exceptionv

