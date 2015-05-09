  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x4cb40
#! rip-offset  0x4cb40
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt16__throw_bad_castv:          #        0x4cb40  0      
  movl $0x4, %edi                  #  1     0x4cb40  5      
  subl $0x8, %esp                  #  2     0x4cb45  3      
  addq %r15, %rsp                  #  3     0x4cb48  3      
  nop                              #  4     0x4cb4b  1      
  nop                              #  5     0x4cb4c  1      
  callq .__cxa_allocate_exception  #  6     0x4cb4d  5      
  movl %eax, %edi                  #  7     0x4cb52  2      
  movl $0x4f420, %edx              #  8     0x4cb54  5      
  movl $0x10021470, %esi           #  9     0x4cb59  5      
  movl %edi, %edi                  #  10    0x4cb5e  2      
  movl $0x10021458, (%r15,%rdi,1)  #  11    0x4cb60  8      
  nop                              #  12    0x4cb68  1      
  callq .__cxa_throw               #  13    0x4cb69  5      
                                                            
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

