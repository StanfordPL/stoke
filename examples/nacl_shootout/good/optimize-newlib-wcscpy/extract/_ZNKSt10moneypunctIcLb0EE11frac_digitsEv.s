  .text
  .globl _ZNKSt10moneypunctIcLb0EE11frac_digitsEv
  .type _ZNKSt10moneypunctIcLb0EE11frac_digitsEv, @function

#! file-offset 0xb6aa0
#! rip-offset  0x76aa0
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE11frac_digitsEv:  #        0x76aa0  0      OPC=<label>         
  movl %edi, %edi                           #  1     0x76aa0  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0x76aa2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0x76aa4  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0x76aa8  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0x76aaa  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0x76aaf  6      OPC=andl_r32_imm32  
  nop                                       #  7     0x76ab5  1      OPC=nop             
  nop                                       #  8     0x76ab6  1      OPC=nop             
  nop                                       #  9     0x76ab7  1      OPC=nop             
  addq %r15, %rax                           #  10    0x76ab8  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0x76abb  2      OPC=jmpq_r64        
  nop                                       #  12    0x76abd  1      OPC=nop             
  nop                                       #  13    0x76abe  1      OPC=nop             
  nop                                       #  14    0x76abf  1      OPC=nop             
  nop                                       #  15    0x76ac0  1      OPC=nop             
  nop                                       #  16    0x76ac1  1      OPC=nop             
  nop                                       #  17    0x76ac2  1      OPC=nop             
  nop                                       #  18    0x76ac3  1      OPC=nop             
  nop                                       #  19    0x76ac4  1      OPC=nop             
  nop                                       #  20    0x76ac5  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb0EE11frac_digitsEv, .-_ZNKSt10moneypunctIcLb0EE11frac_digitsEv

