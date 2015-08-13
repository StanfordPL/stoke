  .text
  .globl _ZNKSt10moneypunctIcLb0EE13thousands_sepEv
  .type _ZNKSt10moneypunctIcLb0EE13thousands_sepEv, @function

#! file-offset 0xb6980
#! rip-offset  0x76980
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13thousands_sepEv:  #        0x76980  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76980  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76982  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x76984  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x76988  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0x7698a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x7698f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x76995  1      OPC=nop             
  nop                                         #  8     0x76996  1      OPC=nop             
  nop                                         #  9     0x76997  1      OPC=nop             
  addq %r15, %rax                             #  10    0x76998  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x7699b  2      OPC=jmpq_r64        
  nop                                         #  12    0x7699d  1      OPC=nop             
  nop                                         #  13    0x7699e  1      OPC=nop             
  nop                                         #  14    0x7699f  1      OPC=nop             
  nop                                         #  15    0x769a0  1      OPC=nop             
  nop                                         #  16    0x769a1  1      OPC=nop             
  nop                                         #  17    0x769a2  1      OPC=nop             
  nop                                         #  18    0x769a3  1      OPC=nop             
  nop                                         #  19    0x769a4  1      OPC=nop             
  nop                                         #  20    0x769a5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13thousands_sepEv, .-_ZNKSt10moneypunctIcLb0EE13thousands_sepEv

