  .text
  .globl _ZSt18__throw_bad_typeidv
  .type _ZSt18__throw_bad_typeidv, @function

#! file-offset 0x4cb00
#! rip-offset  0x4cb00
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt18__throw_bad_typeidv:        #        0x4cb00  0      
  movl $0x4, %edi                  #  1     0x4cb00  5      
  subl $0x8, %esp                  #  2     0x4cb05  3      
  addq %r15, %rsp                  #  3     0x4cb08  3      
  nop                              #  4     0x4cb0b  1      
  nop                              #  5     0x4cb0c  1      
  callq .__cxa_allocate_exception  #  6     0x4cb0d  5      
  movl %eax, %edi                  #  7     0x4cb12  2      
  movl $0x4f2c0, %edx              #  8     0x4cb14  5      
  movl $0x100213f4, %esi           #  9     0x4cb19  5      
  movl %edi, %edi                  #  10    0x4cb1e  2      
  movl $0x100213d8, (%r15,%rdi,1)  #  11    0x4cb20  8      
  nop                              #  12    0x4cb28  1      
  callq .__cxa_throw               #  13    0x4cb29  5      
                                                            
.size _ZSt18__throw_bad_typeidv, .-_ZSt18__throw_bad_typeidv

