  .text
  .globl _ZNSs6assignEPKc
  .type _ZNSs6assignEPKc, @function

#! file-offset 0x48440
#! rip-offset  0x48440
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs6assignEPKc:         #        0x48440  0      
  movq %r12, -0x8(%rsp)    #  1     0x48440  5      
  movl %esi, %r12d         #  2     0x48445  3      
  movq %rbx, -0x10(%rsp)   #  3     0x48448  5      
  subl $0x18, %esp         #  4     0x4844d  3      
  addq %r15, %rsp          #  5     0x48450  3      
  movl %edi, %ebx          #  6     0x48453  2      
  movl %r12d, %edi         #  7     0x48455  3      
  nop                      #  8     0x48458  1      
  callq .strlen            #  9     0x48459  5      
  movl %r12d, %esi         #  10    0x4845e  3      
  movl %ebx, %edi          #  11    0x48461  2      
  movq 0x10(%rsp), %r12    #  12    0x48463  5      
  movq 0x8(%rsp), %rbx     #  13    0x48468  5      
  movl %eax, %edx          #  14    0x4846d  2      
  addl $0x18, %esp         #  15    0x4846f  3      
  addq %r15, %rsp          #  16    0x48472  3      
  jmpq ._ZNSs6assignEPKcj  #  17    0x48475  5      
  nop                      #  18    0x4847a  1      
  nop                      #  19    0x4847b  1      
  nop                      #  20    0x4847c  1      
  nop                      #  21    0x4847d  1      
                                                    
.size _ZNSs6assignEPKc, .-_ZNSs6assignEPKc

