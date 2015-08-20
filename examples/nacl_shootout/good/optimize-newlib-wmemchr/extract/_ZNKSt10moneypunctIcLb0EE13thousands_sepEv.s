  .text
  .globl _ZNKSt10moneypunctIcLb0EE13thousands_sepEv
  .type _ZNKSt10moneypunctIcLb0EE13thousands_sepEv, @function

#! file-offset 0xb6c80
#! rip-offset  0x76c80
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13thousands_sepEv:  #        0x76c80  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76c80  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76c82  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0x76c84  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0x76c88  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0x76c8a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0x76c8f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0x76c95  1      OPC=nop             
  nop                                         #  8     0x76c96  1      OPC=nop             
  nop                                         #  9     0x76c97  1      OPC=nop             
  addq %r15, %rax                             #  10    0x76c98  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0x76c9b  2      OPC=jmpq_r64        
  nop                                         #  12    0x76c9d  1      OPC=nop             
  nop                                         #  13    0x76c9e  1      OPC=nop             
  nop                                         #  14    0x76c9f  1      OPC=nop             
  nop                                         #  15    0x76ca0  1      OPC=nop             
  nop                                         #  16    0x76ca1  1      OPC=nop             
  nop                                         #  17    0x76ca2  1      OPC=nop             
  nop                                         #  18    0x76ca3  1      OPC=nop             
  nop                                         #  19    0x76ca4  1      OPC=nop             
  nop                                         #  20    0x76ca5  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13thousands_sepEv, .-_ZNKSt10moneypunctIcLb0EE13thousands_sepEv

