  .text
  .globl _ZNKSt10moneypunctIwLb0EE13decimal_pointEv
  .type _ZNKSt10moneypunctIwLb0EE13decimal_pointEv, @function

#! file-offset 0xf0340
#! rip-offset  0xb0340
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13decimal_pointEv:  #        0xb0340  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb0340  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb0342  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xb0344  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xb0348  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0xb034a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xb034f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xb0355  1      OPC=nop             
  nop                                         #  8     0xb0356  1      OPC=nop             
  nop                                         #  9     0xb0357  1      OPC=nop             
  addq %r15, %rax                             #  10    0xb0358  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xb035b  2      OPC=jmpq_r64        
  nop                                         #  12    0xb035d  1      OPC=nop             
  nop                                         #  13    0xb035e  1      OPC=nop             
  nop                                         #  14    0xb035f  1      OPC=nop             
  nop                                         #  15    0xb0360  1      OPC=nop             
  nop                                         #  16    0xb0361  1      OPC=nop             
  nop                                         #  17    0xb0362  1      OPC=nop             
  nop                                         #  18    0xb0363  1      OPC=nop             
  nop                                         #  19    0xb0364  1      OPC=nop             
  nop                                         #  20    0xb0365  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13decimal_pointEv, .-_ZNKSt10moneypunctIwLb0EE13decimal_pointEv

