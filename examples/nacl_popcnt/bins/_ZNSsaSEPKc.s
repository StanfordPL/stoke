  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0x484c0
#! rip-offset  0x484c0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSsaSEPKc:              #        0x484c0  0      
  movq %r12, -0x8(%rsp)    #  1     0x484c0  5      
  movl %esi, %r12d         #  2     0x484c5  3      
  movq %rbx, -0x10(%rsp)   #  3     0x484c8  5      
  subl $0x18, %esp         #  4     0x484cd  3      
  addq %r15, %rsp          #  5     0x484d0  3      
  movl %edi, %ebx          #  6     0x484d3  2      
  movl %r12d, %edi         #  7     0x484d5  3      
  nop                      #  8     0x484d8  1      
  callq .strlen            #  9     0x484d9  5      
  movl %r12d, %esi         #  10    0x484de  3      
  movl %ebx, %edi          #  11    0x484e1  2      
  movq 0x10(%rsp), %r12    #  12    0x484e3  5      
  movq 0x8(%rsp), %rbx     #  13    0x484e8  5      
  movl %eax, %edx          #  14    0x484ed  2      
  addl $0x18, %esp         #  15    0x484ef  3      
  addq %r15, %rsp          #  16    0x484f2  3      
  jmpq ._ZNSs6assignEPKcj  #  17    0x484f5  5      
  nop                      #  18    0x484fa  1      
  nop                      #  19    0x484fb  1      
  nop                      #  20    0x484fc  1      
  nop                      #  21    0x484fd  1      
                                                    
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

