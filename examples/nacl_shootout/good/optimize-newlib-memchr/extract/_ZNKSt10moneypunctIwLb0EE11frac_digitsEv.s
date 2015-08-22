  .text
  .globl _ZNKSt10moneypunctIwLb0EE11frac_digitsEv
  .type _ZNKSt10moneypunctIwLb0EE11frac_digitsEv, @function

#! file-offset 0xf0480
#! rip-offset  0xb0480
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11frac_digitsEv:  #        0xb0480  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xb0480  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0xb0482  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0xb0484  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0xb0488  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0xb048a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0xb048f  6      OPC=andl_r32_imm32  
  nop                                       #  7     0xb0495  1      OPC=nop             
  nop                                       #  8     0xb0496  1      OPC=nop             
  nop                                       #  9     0xb0497  1      OPC=nop             
  addq %r15, %rax                           #  10    0xb0498  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0xb049b  2      OPC=jmpq_r64        
  nop                                       #  12    0xb049d  1      OPC=nop             
  nop                                       #  13    0xb049e  1      OPC=nop             
  nop                                       #  14    0xb049f  1      OPC=nop             
  nop                                       #  15    0xb04a0  1      OPC=nop             
  nop                                       #  16    0xb04a1  1      OPC=nop             
  nop                                       #  17    0xb04a2  1      OPC=nop             
  nop                                       #  18    0xb04a3  1      OPC=nop             
  nop                                       #  19    0xb04a4  1      OPC=nop             
  nop                                       #  20    0xb04a5  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11frac_digitsEv, .-_ZNKSt10moneypunctIwLb0EE11frac_digitsEv

