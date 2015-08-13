  .text
  .globl _ZNKSt10moneypunctIcLb1EE13decimal_pointEv
  .type _ZNKSt10moneypunctIcLb1EE13decimal_pointEv, @function

#! file-offset 0xb6be0
#! rip-offset  0x76be0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13decimal_pointEv:  #        0x76be0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76be0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76be2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x76be4  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x76be8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0x76bea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x76bef  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x76bf5  1      OPC=nop             
  nop                                         #  8     0x76bf6  1      OPC=nop             
  nop                                         #  9     0x76bf7  1      OPC=nop             
  addq %r15, %rax                             #  10    0x76bf8  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x76bfb  2      OPC=jmpq_r64        
  nop                                         #  12    0x76bfd  1      OPC=nop             
  nop                                         #  13    0x76bfe  1      OPC=nop             
  nop                                         #  14    0x76bff  1      OPC=nop             
  nop                                         #  15    0x76c00  1      OPC=nop             
  nop                                         #  16    0x76c01  1      OPC=nop             
  nop                                         #  17    0x76c02  1      OPC=nop             
  nop                                         #  18    0x76c03  1      OPC=nop             
  nop                                         #  19    0x76c04  1      OPC=nop             
  nop                                         #  20    0x76c05  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13decimal_pointEv, .-_ZNKSt10moneypunctIcLb1EE13decimal_pointEv

