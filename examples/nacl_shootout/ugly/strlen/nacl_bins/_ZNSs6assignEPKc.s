  .text
  .globl _ZNSs6assignEPKc
  .type _ZNSs6assignEPKc, @function

#! file-offset 0xedee0
#! rip-offset  0xadee0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
._ZNSs6assignEPKc:         #        0xadee0  0      OPC=0     
  movq %r12, -0x8(%rsp)    #  1     0xadee0  5      OPC=1138  
  movl %esi, %r12d         #  2     0xadee5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)   #  3     0xadee8  5      OPC=1138  
  subl $0x18, %esp         #  4     0xadeed  3      OPC=2384  
  addq %r15, %rsp          #  5     0xadef0  3      OPC=72    
  movl %edi, %ebx          #  6     0xadef3  2      OPC=1157  
  movl %r12d, %edi         #  7     0xadef5  3      OPC=1157  
  nop                      #  8     0xadef8  1      OPC=1343  
  nop                      #  9     0xadef9  1      OPC=1343  
  nop                      #  10    0xadefa  1      OPC=1343  
  callq .strlen            #  11    0xadefb  5      OPC=260   
  movl %r12d, %esi         #  12    0xadf00  3      OPC=1157  
  movl %ebx, %edi          #  13    0xadf03  2      OPC=1157  
  movq 0x10(%rsp), %r12    #  14    0xadf05  5      OPC=1161  
  movq 0x8(%rsp), %rbx     #  15    0xadf0a  5      OPC=1161  
  movl %eax, %edx          #  16    0xadf0f  2      OPC=1157  
  addl $0x18, %esp         #  17    0xadf11  3      OPC=65    
  addq %r15, %rsp          #  18    0xadf14  3      OPC=72    
  jmpq ._ZNSs6assignEPKcj  #  19    0xadf17  5      OPC=930   
  nop                      #  20    0xadf1c  1      OPC=1343  
  nop                      #  21    0xadf1d  1      OPC=1343  
  nop                      #  22    0xadf1e  1      OPC=1343  
  nop                      #  23    0xadf1f  1      OPC=1343  
                                                              
.size _ZNSs6assignEPKc, .-_ZNSs6assignEPKc

