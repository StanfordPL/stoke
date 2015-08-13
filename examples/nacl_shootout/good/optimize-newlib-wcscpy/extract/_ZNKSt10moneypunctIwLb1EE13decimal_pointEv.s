  .text
  .globl _ZNKSt10moneypunctIwLb1EE13decimal_pointEv
  .type _ZNKSt10moneypunctIwLb1EE13decimal_pointEv, @function

#! file-offset 0xefba0
#! rip-offset  0xafba0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13decimal_pointEv:  #        0xafba0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafba0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafba2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xafba4  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xafba8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0xafbaa  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xafbaf  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xafbb5  1      OPC=nop             
  nop                                         #  8     0xafbb6  1      OPC=nop             
  nop                                         #  9     0xafbb7  1      OPC=nop             
  addq %r15, %rax                             #  10    0xafbb8  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xafbbb  2      OPC=jmpq_r64        
  nop                                         #  12    0xafbbd  1      OPC=nop             
  nop                                         #  13    0xafbbe  1      OPC=nop             
  nop                                         #  14    0xafbbf  1      OPC=nop             
  nop                                         #  15    0xafbc0  1      OPC=nop             
  nop                                         #  16    0xafbc1  1      OPC=nop             
  nop                                         #  17    0xafbc2  1      OPC=nop             
  nop                                         #  18    0xafbc3  1      OPC=nop             
  nop                                         #  19    0xafbc4  1      OPC=nop             
  nop                                         #  20    0xafbc5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13decimal_pointEv, .-_ZNKSt10moneypunctIwLb1EE13decimal_pointEv

