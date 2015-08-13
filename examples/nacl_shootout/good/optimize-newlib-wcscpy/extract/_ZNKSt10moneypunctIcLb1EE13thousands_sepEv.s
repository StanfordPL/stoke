  .text
  .globl _ZNKSt10moneypunctIcLb1EE13thousands_sepEv
  .type _ZNKSt10moneypunctIcLb1EE13thousands_sepEv, @function

#! file-offset 0xb6c00
#! rip-offset  0x76c00
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13thousands_sepEv:  #        0x76c00  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76c00  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76c02  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x76c04  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x76c08  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0x76c0a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x76c0f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x76c15  1      OPC=nop             
  nop                                         #  8     0x76c16  1      OPC=nop             
  nop                                         #  9     0x76c17  1      OPC=nop             
  addq %r15, %rax                             #  10    0x76c18  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x76c1b  2      OPC=jmpq_r64        
  nop                                         #  12    0x76c1d  1      OPC=nop             
  nop                                         #  13    0x76c1e  1      OPC=nop             
  nop                                         #  14    0x76c1f  1      OPC=nop             
  nop                                         #  15    0x76c20  1      OPC=nop             
  nop                                         #  16    0x76c21  1      OPC=nop             
  nop                                         #  17    0x76c22  1      OPC=nop             
  nop                                         #  18    0x76c23  1      OPC=nop             
  nop                                         #  19    0x76c24  1      OPC=nop             
  nop                                         #  20    0x76c25  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13thousands_sepEv, .-_ZNKSt10moneypunctIcLb1EE13thousands_sepEv

