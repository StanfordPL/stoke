  .text
  .globl _ZSt17__throw_bad_allocv
  .type _ZSt17__throw_bad_allocv, @function

#! file-offset 0x4cb80
#! rip-offset  0x4cb80
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt17__throw_bad_allocv:         #        0x4cb80  0      
  movl $0x4, %edi                  #  1     0x4cb80  5      
  subl $0x8, %esp                  #  2     0x4cb85  3      
  addq %r15, %rsp                  #  3     0x4cb88  3      
  nop                              #  4     0x4cb8b  1      
  nop                              #  5     0x4cb8c  1      
  callq .__cxa_allocate_exception  #  6     0x4cb8d  5      
  movl %eax, %edi                  #  7     0x4cb92  2      
  movl $0x4f380, %edx              #  8     0x4cb94  5      
  movl $0x10021434, %esi           #  9     0x4cb99  5      
  movl %edi, %edi                  #  10    0x4cb9e  2      
  movl $0x10021418, (%r15,%rdi,1)  #  11    0x4cba0  8      
  nop                              #  12    0x4cba8  1      
  callq .__cxa_throw               #  13    0x4cba9  5      
                                                            
.size _ZSt17__throw_bad_allocv, .-_ZSt17__throw_bad_allocv

