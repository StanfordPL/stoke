  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0xedf80
#! rip-offset  0xadf80
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
._ZNSsaSEPKc:              #        0xadf80  0      OPC=0     
  movq %r12, -0x8(%rsp)    #  1     0xadf80  5      OPC=1138  
  movl %esi, %r12d         #  2     0xadf85  3      OPC=1157  
  movq %rbx, -0x10(%rsp)   #  3     0xadf88  5      OPC=1138  
  subl $0x18, %esp         #  4     0xadf8d  3      OPC=2384  
  addq %r15, %rsp          #  5     0xadf90  3      OPC=72    
  movl %edi, %ebx          #  6     0xadf93  2      OPC=1157  
  movl %r12d, %edi         #  7     0xadf95  3      OPC=1157  
  nop                      #  8     0xadf98  1      OPC=1343  
  nop                      #  9     0xadf99  1      OPC=1343  
  nop                      #  10    0xadf9a  1      OPC=1343  
  callq .strlen            #  11    0xadf9b  5      OPC=260   
  movl %r12d, %esi         #  12    0xadfa0  3      OPC=1157  
  movl %ebx, %edi          #  13    0xadfa3  2      OPC=1157  
  movq 0x10(%rsp), %r12    #  14    0xadfa5  5      OPC=1161  
  movq 0x8(%rsp), %rbx     #  15    0xadfaa  5      OPC=1161  
  movl %eax, %edx          #  16    0xadfaf  2      OPC=1157  
  addl $0x18, %esp         #  17    0xadfb1  3      OPC=65    
  addq %r15, %rsp          #  18    0xadfb4  3      OPC=72    
  jmpq ._ZNSs6assignEPKcj  #  19    0xadfb7  5      OPC=930   
  nop                      #  20    0xadfbc  1      OPC=1343  
  nop                      #  21    0xadfbd  1      OPC=1343  
  nop                      #  22    0xadfbe  1      OPC=1343  
  nop                      #  23    0xadfbf  1      OPC=1343  
                                                              
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

