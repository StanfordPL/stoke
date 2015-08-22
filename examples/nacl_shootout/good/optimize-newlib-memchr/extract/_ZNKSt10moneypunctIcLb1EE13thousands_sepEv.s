  .text
  .globl _ZNKSt10moneypunctIcLb1EE13thousands_sepEv
  .type _ZNKSt10moneypunctIcLb1EE13thousands_sepEv, @function

#! file-offset 0xb7620
#! rip-offset  0x77620
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13thousands_sepEv:  #        0x77620  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x77620  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x77622  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x77624  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x77628  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0x7762a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x7762f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x77635  1      OPC=nop             
  nop                                         #  8     0x77636  1      OPC=nop             
  nop                                         #  9     0x77637  1      OPC=nop             
  addq %r15, %rax                             #  10    0x77638  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x7763b  2      OPC=jmpq_r64        
  nop                                         #  12    0x7763d  1      OPC=nop             
  nop                                         #  13    0x7763e  1      OPC=nop             
  nop                                         #  14    0x7763f  1      OPC=nop             
  nop                                         #  15    0x77640  1      OPC=nop             
  nop                                         #  16    0x77641  1      OPC=nop             
  nop                                         #  17    0x77642  1      OPC=nop             
  nop                                         #  18    0x77643  1      OPC=nop             
  nop                                         #  19    0x77644  1      OPC=nop             
  nop                                         #  20    0x77645  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13thousands_sepEv, .-_ZNKSt10moneypunctIcLb1EE13thousands_sepEv

