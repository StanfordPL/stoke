  .text
  .globl _ZNKSt10moneypunctIwLb1EE13thousands_sepEv
  .type _ZNKSt10moneypunctIwLb1EE13thousands_sepEv, @function

#! file-offset 0xefbc0
#! rip-offset  0xafbc0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13thousands_sepEv:  #        0xafbc0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafbc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafbc2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xafbc4  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xafbc8  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0xafbca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xafbcf  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xafbd5  1      OPC=nop             
  nop                                         #  8     0xafbd6  1      OPC=nop             
  nop                                         #  9     0xafbd7  1      OPC=nop             
  addq %r15, %rax                             #  10    0xafbd8  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xafbdb  2      OPC=jmpq_r64        
  nop                                         #  12    0xafbdd  1      OPC=nop             
  nop                                         #  13    0xafbde  1      OPC=nop             
  nop                                         #  14    0xafbdf  1      OPC=nop             
  nop                                         #  15    0xafbe0  1      OPC=nop             
  nop                                         #  16    0xafbe1  1      OPC=nop             
  nop                                         #  17    0xafbe2  1      OPC=nop             
  nop                                         #  18    0xafbe3  1      OPC=nop             
  nop                                         #  19    0xafbe4  1      OPC=nop             
  nop                                         #  20    0xafbe5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13thousands_sepEv, .-_ZNKSt10moneypunctIwLb1EE13thousands_sepEv

