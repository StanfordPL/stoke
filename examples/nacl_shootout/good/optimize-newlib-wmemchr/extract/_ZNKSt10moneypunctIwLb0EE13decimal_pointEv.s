  .text
  .globl _ZNKSt10moneypunctIwLb0EE13decimal_pointEv
  .type _ZNKSt10moneypunctIwLb0EE13decimal_pointEv, @function

#! file-offset 0xefc20
#! rip-offset  0xafc20
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13decimal_pointEv:  #        0xafc20  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafc20  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafc22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xafc24  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xafc28  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0xafc2a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xafc2f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xafc35  1      OPC=nop             
  nop                                         #  8     0xafc36  1      OPC=nop             
  nop                                         #  9     0xafc37  1      OPC=nop             
  addq %r15, %rax                             #  10    0xafc38  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xafc3b  2      OPC=jmpq_r64        
  nop                                         #  12    0xafc3d  1      OPC=nop             
  nop                                         #  13    0xafc3e  1      OPC=nop             
  nop                                         #  14    0xafc3f  1      OPC=nop             
  nop                                         #  15    0xafc40  1      OPC=nop             
  nop                                         #  16    0xafc41  1      OPC=nop             
  nop                                         #  17    0xafc42  1      OPC=nop             
  nop                                         #  18    0xafc43  1      OPC=nop             
  nop                                         #  19    0xafc44  1      OPC=nop             
  nop                                         #  20    0xafc45  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13decimal_pointEv, .-_ZNKSt10moneypunctIwLb0EE13decimal_pointEv

