  .text
  .globl _ZSt18__throw_bad_typeidv
  .type _ZSt18__throw_bad_typeidv, @function

#! file-offset 0x4cb20
#! rip-offset  0x4cb20
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt18__throw_bad_typeidv:        #        0x4cb20  0      
  movl $0x4, %edi                  #  1     0x4cb20  5      
  subl $0x8, %esp                  #  2     0x4cb25  3      
  addq %r15, %rsp                  #  3     0x4cb28  3      
  nop                              #  4     0x4cb2b  1      
  nop                              #  5     0x4cb2c  1      
  callq .__cxa_allocate_exception  #  6     0x4cb2d  5      
  movl %eax, %edi                  #  7     0x4cb32  2      
  movl $0x4f2e0, %edx              #  8     0x4cb34  5      
  movl $0x100213f4, %esi           #  9     0x4cb39  5      
  movl %edi, %edi                  #  10    0x4cb3e  2      
  movl $0x100213d8, (%r15,%rdi,1)  #  11    0x4cb40  8      
  nop                              #  12    0x4cb48  1      
  callq .__cxa_throw               #  13    0x4cb49  5      
                                                            
.size _ZSt18__throw_bad_typeidv, .-_ZSt18__throw_bad_typeidv

