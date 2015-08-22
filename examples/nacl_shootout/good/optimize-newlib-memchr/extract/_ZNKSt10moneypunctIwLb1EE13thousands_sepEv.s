  .text
  .globl _ZNKSt10moneypunctIwLb1EE13thousands_sepEv
  .type _ZNKSt10moneypunctIwLb1EE13thousands_sepEv, @function

#! file-offset 0xf05e0
#! rip-offset  0xb05e0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13thousands_sepEv:  #        0xb05e0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb05e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb05e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xb05e4  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xb05e8  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0xb05ea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xb05ef  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xb05f5  1      OPC=nop             
  nop                                         #  8     0xb05f6  1      OPC=nop             
  nop                                         #  9     0xb05f7  1      OPC=nop             
  addq %r15, %rax                             #  10    0xb05f8  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xb05fb  2      OPC=jmpq_r64        
  nop                                         #  12    0xb05fd  1      OPC=nop             
  nop                                         #  13    0xb05fe  1      OPC=nop             
  nop                                         #  14    0xb05ff  1      OPC=nop             
  nop                                         #  15    0xb0600  1      OPC=nop             
  nop                                         #  16    0xb0601  1      OPC=nop             
  nop                                         #  17    0xb0602  1      OPC=nop             
  nop                                         #  18    0xb0603  1      OPC=nop             
  nop                                         #  19    0xb0604  1      OPC=nop             
  nop                                         #  20    0xb0605  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13thousands_sepEv, .-_ZNKSt10moneypunctIwLb1EE13thousands_sepEv

