  .text
  .globl _ZNKSt10moneypunctIwLb0EE11frac_digitsEv
  .type _ZNKSt10moneypunctIwLb0EE11frac_digitsEv, @function

#! file-offset 0xefd60
#! rip-offset  0xafd60
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11frac_digitsEv:  #        0xafd60  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xafd60  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0xafd62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0xafd64  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0xafd68  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0xafd6a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0xafd6f  6      OPC=andl_r32_imm32  
  nop                                       #  7     0xafd75  1      OPC=nop             
  nop                                       #  8     0xafd76  1      OPC=nop             
  nop                                       #  9     0xafd77  1      OPC=nop             
  addq %r15, %rax                           #  10    0xafd78  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0xafd7b  2      OPC=jmpq_r64        
  nop                                       #  12    0xafd7d  1      OPC=nop             
  nop                                       #  13    0xafd7e  1      OPC=nop             
  nop                                       #  14    0xafd7f  1      OPC=nop             
  nop                                       #  15    0xafd80  1      OPC=nop             
  nop                                       #  16    0xafd81  1      OPC=nop             
  nop                                       #  17    0xafd82  1      OPC=nop             
  nop                                       #  18    0xafd83  1      OPC=nop             
  nop                                       #  19    0xafd84  1      OPC=nop             
  nop                                       #  20    0xafd85  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11frac_digitsEv, .-_ZNKSt10moneypunctIwLb0EE11frac_digitsEv

