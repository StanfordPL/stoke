  .text
  .globl _ZNKSt10moneypunctIwLb1EE13decimal_pointEv
  .type _ZNKSt10moneypunctIwLb1EE13decimal_pointEv, @function

#! file-offset 0xefea0
#! rip-offset  0xafea0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13decimal_pointEv:  #        0xafea0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafea0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafea2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xafea4  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xafea8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  5     0xafeaa  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xafeaf  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xafeb5  1      OPC=nop             
  nop                                         #  8     0xafeb6  1      OPC=nop             
  nop                                         #  9     0xafeb7  1      OPC=nop             
  addq %r15, %rax                             #  10    0xafeb8  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xafebb  2      OPC=jmpq_r64        
  nop                                         #  12    0xafebd  1      OPC=nop             
  nop                                         #  13    0xafebe  1      OPC=nop             
  nop                                         #  14    0xafebf  1      OPC=nop             
  nop                                         #  15    0xafec0  1      OPC=nop             
  nop                                         #  16    0xafec1  1      OPC=nop             
  nop                                         #  17    0xafec2  1      OPC=nop             
  nop                                         #  18    0xafec3  1      OPC=nop             
  nop                                         #  19    0xafec4  1      OPC=nop             
  nop                                         #  20    0xafec5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13decimal_pointEv, .-_ZNKSt10moneypunctIwLb1EE13decimal_pointEv

