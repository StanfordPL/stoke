  .text
  .globl _ZNKSt10moneypunctIwLb0EE13decimal_pointEv
  .type _ZNKSt10moneypunctIwLb0EE13decimal_pointEv, @function

#! file-offset 0xef920
#! rip-offset  0xaf920
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13decimal_pointEv:  #        0xaf920  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xaf920  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xaf922  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xaf924  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xaf928  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0xaf92a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xaf92f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xaf935  1      OPC=nop             
  nop                                         #  8     0xaf936  1      OPC=nop             
  nop                                         #  9     0xaf937  1      OPC=nop             
  addq %r15, %rax                             #  10    0xaf938  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xaf93b  2      OPC=jmpq_r64        
  nop                                         #  12    0xaf93d  1      OPC=nop             
  nop                                         #  13    0xaf93e  1      OPC=nop             
  nop                                         #  14    0xaf93f  1      OPC=nop             
  nop                                         #  15    0xaf940  1      OPC=nop             
  nop                                         #  16    0xaf941  1      OPC=nop             
  nop                                         #  17    0xaf942  1      OPC=nop             
  nop                                         #  18    0xaf943  1      OPC=nop             
  nop                                         #  19    0xaf944  1      OPC=nop             
  nop                                         #  20    0xaf945  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13decimal_pointEv, .-_ZNKSt10moneypunctIwLb0EE13decimal_pointEv

