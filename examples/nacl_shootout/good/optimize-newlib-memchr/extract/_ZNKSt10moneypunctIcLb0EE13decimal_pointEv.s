  .text
  .globl _ZNKSt10moneypunctIcLb0EE13decimal_pointEv
  .type _ZNKSt10moneypunctIcLb0EE13decimal_pointEv, @function

#! file-offset 0xb7380
#! rip-offset  0x77380
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13decimal_pointEv:  #        0x77380  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x77380  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x77382  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x77384  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x77388  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0x7738a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x7738f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x77395  1      OPC=nop             
  nop                                         #  8     0x77396  1      OPC=nop             
  nop                                         #  9     0x77397  1      OPC=nop             
  addq %r15, %rax                             #  10    0x77398  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x7739b  2      OPC=jmpq_r64        
  nop                                         #  12    0x7739d  1      OPC=nop             
  nop                                         #  13    0x7739e  1      OPC=nop             
  nop                                         #  14    0x7739f  1      OPC=nop             
  nop                                         #  15    0x773a0  1      OPC=nop             
  nop                                         #  16    0x773a1  1      OPC=nop             
  nop                                         #  17    0x773a2  1      OPC=nop             
  nop                                         #  18    0x773a3  1      OPC=nop             
  nop                                         #  19    0x773a4  1      OPC=nop             
  nop                                         #  20    0x773a5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13decimal_pointEv, .-_ZNKSt10moneypunctIcLb0EE13decimal_pointEv
