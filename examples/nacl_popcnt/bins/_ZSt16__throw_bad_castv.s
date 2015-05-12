  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x4cb60
#! rip-offset  0x4cb60
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt16__throw_bad_castv:          #        0x4cb60  0      
  movl $0x4, %edi                  #  1     0x4cb60  5      
  subl $0x8, %esp                  #  2     0x4cb65  3      
  addq %r15, %rsp                  #  3     0x4cb68  3      
  nop                              #  4     0x4cb6b  1      
  nop                              #  5     0x4cb6c  1      
  callq .__cxa_allocate_exception  #  6     0x4cb6d  5      
  movl %eax, %edi                  #  7     0x4cb72  2      
  movl $0x4f440, %edx              #  8     0x4cb74  5      
  movl $0x10021470, %esi           #  9     0x4cb79  5      
  movl %edi, %edi                  #  10    0x4cb7e  2      
  movl $0x10021458, (%r15,%rdi,1)  #  11    0x4cb80  8      
  nop                              #  12    0x4cb88  1      
  callq .__cxa_throw               #  13    0x4cb89  5      
                                                            
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

