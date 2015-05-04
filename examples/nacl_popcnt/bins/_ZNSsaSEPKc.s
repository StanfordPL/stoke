  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0x48560
#! rip-offset  0x48560
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSsaSEPKc:              #        0x48560  0      
  movq %r12, -0x8(%rsp)    #  1     0x48560  5      
  movl %esi, %r12d         #  2     0x48565  3      
  movq %rbx, -0x10(%rsp)   #  3     0x48568  5      
  subl $0x18, %esp         #  4     0x4856d  3      
  addq %r15, %rsp          #  5     0x48570  3      
  movl %edi, %ebx          #  6     0x48573  2      
  movl %r12d, %edi         #  7     0x48575  3      
  nop                      #  8     0x48578  1      
  callq .strlen            #  9     0x48579  5      
  movl %r12d, %esi         #  10    0x4857e  3      
  movl %ebx, %edi          #  11    0x48581  2      
  movq 0x10(%rsp), %r12    #  12    0x48583  5      
  movq 0x8(%rsp), %rbx     #  13    0x48588  5      
  movl %eax, %edx          #  14    0x4858d  2      
  addl $0x18, %esp         #  15    0x4858f  3      
  addq %r15, %rsp          #  16    0x48592  3      
  jmpq ._ZNSs6assignEPKcj  #  17    0x48595  5      
  nop                      #  18    0x4859a  1      
  nop                      #  19    0x4859b  1      
  nop                      #  20    0x4859c  1      
  nop                      #  21    0x4859d  1      
                                                    
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

