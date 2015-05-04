  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0x46780
#! rip-offset  0x46780
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSspLEPKc:              #        0x46780  0      
  movq %r12, -0x8(%rsp)    #  1     0x46780  5      
  movl %esi, %r12d         #  2     0x46785  3      
  movq %rbx, -0x10(%rsp)   #  3     0x46788  5      
  subl $0x18, %esp         #  4     0x4678d  3      
  addq %r15, %rsp          #  5     0x46790  3      
  movl %edi, %ebx          #  6     0x46793  2      
  movl %r12d, %edi         #  7     0x46795  3      
  nop                      #  8     0x46798  1      
  callq .strlen            #  9     0x46799  5      
  movl %r12d, %esi         #  10    0x4679e  3      
  movl %ebx, %edi          #  11    0x467a1  2      
  movq 0x10(%rsp), %r12    #  12    0x467a3  5      
  movq 0x8(%rsp), %rbx     #  13    0x467a8  5      
  movl %eax, %edx          #  14    0x467ad  2      
  addl $0x18, %esp         #  15    0x467af  3      
  addq %r15, %rsp          #  16    0x467b2  3      
  jmpq ._ZNSs6appendEPKcj  #  17    0x467b5  5      
  nop                      #  18    0x467ba  1      
  nop                      #  19    0x467bb  1      
  nop                      #  20    0x467bc  1      
  nop                      #  21    0x467bd  1      
                                                    
.size _ZNSspLEPKc, .-_ZNSspLEPKc

