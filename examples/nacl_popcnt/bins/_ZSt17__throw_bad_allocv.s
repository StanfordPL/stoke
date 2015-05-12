  .text
  .globl _ZSt17__throw_bad_allocv
  .type _ZSt17__throw_bad_allocv, @function

#! file-offset 0x4cba0
#! rip-offset  0x4cba0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt17__throw_bad_allocv:         #        0x4cba0  0      
  movl $0x4, %edi                  #  1     0x4cba0  5      
  subl $0x8, %esp                  #  2     0x4cba5  3      
  addq %r15, %rsp                  #  3     0x4cba8  3      
  nop                              #  4     0x4cbab  1      
  nop                              #  5     0x4cbac  1      
  callq .__cxa_allocate_exception  #  6     0x4cbad  5      
  movl %eax, %edi                  #  7     0x4cbb2  2      
  movl $0x4f3a0, %edx              #  8     0x4cbb4  5      
  movl $0x10021434, %esi           #  9     0x4cbb9  5      
  movl %edi, %edi                  #  10    0x4cbbe  2      
  movl $0x10021418, (%r15,%rdi,1)  #  11    0x4cbc0  8      
  nop                              #  12    0x4cbc8  1      
  callq .__cxa_throw               #  13    0x4cbc9  5      
                                                            
.size _ZSt17__throw_bad_allocv, .-_ZSt17__throw_bad_allocv

