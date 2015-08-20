  .text
  .globl _ZNKSt10moneypunctIwLb1EE13thousands_sepEv
  .type _ZNKSt10moneypunctIwLb1EE13thousands_sepEv, @function

#! file-offset 0xefec0
#! rip-offset  0xafec0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13thousands_sepEv:  #        0xafec0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafec0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafec2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xafec4  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xafec8  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0xafeca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xafecf  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xafed5  1      OPC=nop             
  nop                                         #  8     0xafed6  1      OPC=nop             
  nop                                         #  9     0xafed7  1      OPC=nop             
  addq %r15, %rax                             #  10    0xafed8  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xafedb  2      OPC=jmpq_r64        
  nop                                         #  12    0xafedd  1      OPC=nop             
  nop                                         #  13    0xafede  1      OPC=nop             
  nop                                         #  14    0xafedf  1      OPC=nop             
  nop                                         #  15    0xafee0  1      OPC=nop             
  nop                                         #  16    0xafee1  1      OPC=nop             
  nop                                         #  17    0xafee2  1      OPC=nop             
  nop                                         #  18    0xafee3  1      OPC=nop             
  nop                                         #  19    0xafee4  1      OPC=nop             
  nop                                         #  20    0xafee5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13thousands_sepEv, .-_ZNKSt10moneypunctIwLb1EE13thousands_sepEv

