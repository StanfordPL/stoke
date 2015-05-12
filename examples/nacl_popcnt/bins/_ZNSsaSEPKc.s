  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0x484e0
#! rip-offset  0x484e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSsaSEPKc:              #        0x484e0  0      
  movq %r12, -0x8(%rsp)    #  1     0x484e0  5      
  movl %esi, %r12d         #  2     0x484e5  3      
  movq %rbx, -0x10(%rsp)   #  3     0x484e8  5      
  subl $0x18, %esp         #  4     0x484ed  3      
  addq %r15, %rsp          #  5     0x484f0  3      
  movl %edi, %ebx          #  6     0x484f3  2      
  movl %r12d, %edi         #  7     0x484f5  3      
  nop                      #  8     0x484f8  1      
  callq .strlen            #  9     0x484f9  5      
  movl %r12d, %esi         #  10    0x484fe  3      
  movl %ebx, %edi          #  11    0x48501  2      
  movq 0x10(%rsp), %r12    #  12    0x48503  5      
  movq 0x8(%rsp), %rbx     #  13    0x48508  5      
  movl %eax, %edx          #  14    0x4850d  2      
  addl $0x18, %esp         #  15    0x4850f  3      
  addq %r15, %rsp          #  16    0x48512  3      
  jmpq ._ZNSs6assignEPKcj  #  17    0x48515  5      
  nop                      #  18    0x4851a  1      
  nop                      #  19    0x4851b  1      
  nop                      #  20    0x4851c  1      
  nop                      #  21    0x4851d  1      
                                                    
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

