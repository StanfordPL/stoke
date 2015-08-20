  .text
  .globl _ZNKSt10moneypunctIcLb1EE11frac_digitsEv
  .type _ZNKSt10moneypunctIcLb1EE11frac_digitsEv, @function

#! file-offset 0xb7020
#! rip-offset  0x77020
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE11frac_digitsEv:  #        0x77020  0      OPC=<label>         
  movl %edi, %edi                           #  1     0x77020  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0x77022  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0x77024  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0x77028  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0x7702a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0x7702f  6      OPC=andl_r32_imm32  
  nop                                       #  7     0x77035  1      OPC=nop             
  nop                                       #  8     0x77036  1      OPC=nop             
  nop                                       #  9     0x77037  1      OPC=nop             
  addq %r15, %rax                           #  10    0x77038  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0x7703b  2      OPC=jmpq_r64        
  nop                                       #  12    0x7703d  1      OPC=nop             
  nop                                       #  13    0x7703e  1      OPC=nop             
  nop                                       #  14    0x7703f  1      OPC=nop             
  nop                                       #  15    0x77040  1      OPC=nop             
  nop                                       #  16    0x77041  1      OPC=nop             
  nop                                       #  17    0x77042  1      OPC=nop             
  nop                                       #  18    0x77043  1      OPC=nop             
  nop                                       #  19    0x77044  1      OPC=nop             
  nop                                       #  20    0x77045  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb1EE11frac_digitsEv, .-_ZNKSt10moneypunctIcLb1EE11frac_digitsEv

