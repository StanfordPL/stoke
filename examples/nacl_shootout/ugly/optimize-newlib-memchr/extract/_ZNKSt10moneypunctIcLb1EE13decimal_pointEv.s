  .text
  .globl _ZNKSt10moneypunctIcLb1EE13decimal_pointEv
  .type _ZNKSt10moneypunctIcLb1EE13decimal_pointEv, @function

#! file-offset 0xb7600
#! rip-offset  0x77600
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13decimal_pointEv:  #        0x77600  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x77600  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x77602  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x77604  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x77608  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0x7760a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x7760f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x77615  1      OPC=nop             
  nop                                         #  8     0x77616  1      OPC=nop             
  nop                                         #  9     0x77617  1      OPC=nop             
  addq %r15, %rax                             #  10    0x77618  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x7761b  2      OPC=jmpq_r64        
  nop                                         #  12    0x7761d  1      OPC=nop             
  nop                                         #  13    0x7761e  1      OPC=nop             
  nop                                         #  14    0x7761f  1      OPC=nop             
  nop                                         #  15    0x77620  1      OPC=nop             
  nop                                         #  16    0x77621  1      OPC=nop             
  nop                                         #  17    0x77622  1      OPC=nop             
  nop                                         #  18    0x77623  1      OPC=nop             
  nop                                         #  19    0x77624  1      OPC=nop             
  nop                                         #  20    0x77625  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13decimal_pointEv, .-_ZNKSt10moneypunctIcLb1EE13decimal_pointEv

