  .text
  .globl _ZNKSt10moneypunctIcLb0EE13decimal_pointEv
  .type _ZNKSt10moneypunctIcLb0EE13decimal_pointEv, @function

#! file-offset 0xb6960
#! rip-offset  0x76960
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13decimal_pointEv:  #        0x76960  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76960  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76962  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x76964  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x76968  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0x7696a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x7696f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x76975  1      OPC=nop             
  nop                                         #  8     0x76976  1      OPC=nop             
  nop                                         #  9     0x76977  1      OPC=nop             
  addq %r15, %rax                             #  10    0x76978  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x7697b  2      OPC=jmpq_r64        
  nop                                         #  12    0x7697d  1      OPC=nop             
  nop                                         #  13    0x7697e  1      OPC=nop             
  nop                                         #  14    0x7697f  1      OPC=nop             
  nop                                         #  15    0x76980  1      OPC=nop             
  nop                                         #  16    0x76981  1      OPC=nop             
  nop                                         #  17    0x76982  1      OPC=nop             
  nop                                         #  18    0x76983  1      OPC=nop             
  nop                                         #  19    0x76984  1      OPC=nop             
  nop                                         #  20    0x76985  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13decimal_pointEv, .-_ZNKSt10moneypunctIcLb0EE13decimal_pointEv

