  .text
  .globl _ZNKSt10moneypunctIcLb0EE13decimal_pointEv
  .type _ZNKSt10moneypunctIcLb0EE13decimal_pointEv, @function

#! file-offset 0xb6c60
#! rip-offset  0x76c60
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13decimal_pointEv:  #        0x76c60  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76c60  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76c62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x76c64  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x76c68  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0x76c6a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x76c6f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x76c75  1      OPC=nop             
  nop                                         #  8     0x76c76  1      OPC=nop             
  nop                                         #  9     0x76c77  1      OPC=nop             
  addq %r15, %rax                             #  10    0x76c78  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x76c7b  2      OPC=jmpq_r64        
  nop                                         #  12    0x76c7d  1      OPC=nop             
  nop                                         #  13    0x76c7e  1      OPC=nop             
  nop                                         #  14    0x76c7f  1      OPC=nop             
  nop                                         #  15    0x76c80  1      OPC=nop             
  nop                                         #  16    0x76c81  1      OPC=nop             
  nop                                         #  17    0x76c82  1      OPC=nop             
  nop                                         #  18    0x76c83  1      OPC=nop             
  nop                                         #  19    0x76c84  1      OPC=nop             
  nop                                         #  20    0x76c85  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13decimal_pointEv, .-_ZNKSt10moneypunctIcLb0EE13decimal_pointEv

