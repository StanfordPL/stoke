  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x4cbe0
#! rip-offset  0x4cbe0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZSt16__throw_bad_castv:          #        0x4cbe0  0      
  movl $0x4, %edi                  #  1     0x4cbe0  5      
  subl $0x8, %esp                  #  2     0x4cbe5  3      
  addq %r15, %rsp                  #  3     0x4cbe8  3      
  nop                              #  4     0x4cbeb  1      
  nop                              #  5     0x4cbec  1      
  callq .__cxa_allocate_exception  #  6     0x4cbed  5      
  movl %eax, %edi                  #  7     0x4cbf2  2      
  movl $0x4f4c0, %edx              #  8     0x4cbf4  5      
  movl $0x10021470, %esi           #  9     0x4cbf9  5      
  movl %edi, %edi                  #  10    0x4cbfe  2      
  movl $0x10021458, (%r15,%rdi,1)  #  11    0x4cc00  8      
  nop                              #  12    0x4cc08  1      
  callq .__cxa_throw               #  13    0x4cc09  5      
                                                            
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

