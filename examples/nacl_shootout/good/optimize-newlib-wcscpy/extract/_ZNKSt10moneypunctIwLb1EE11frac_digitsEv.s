  .text
  .globl _ZNKSt10moneypunctIwLb1EE11frac_digitsEv
  .type _ZNKSt10moneypunctIwLb1EE11frac_digitsEv, @function

#! file-offset 0xefce0
#! rip-offset  0xafce0
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11frac_digitsEv:  #        0xafce0  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xafce0  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0xafce2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0xafce4  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0xafce8  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0xafcea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0xafcef  6      OPC=andl_r32_imm32  
  nop                                       #  7     0xafcf5  1      OPC=nop             
  nop                                       #  8     0xafcf6  1      OPC=nop             
  nop                                       #  9     0xafcf7  1      OPC=nop             
  addq %r15, %rax                           #  10    0xafcf8  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0xafcfb  2      OPC=jmpq_r64        
  nop                                       #  12    0xafcfd  1      OPC=nop             
  nop                                       #  13    0xafcfe  1      OPC=nop             
  nop                                       #  14    0xafcff  1      OPC=nop             
  nop                                       #  15    0xafd00  1      OPC=nop             
  nop                                       #  16    0xafd01  1      OPC=nop             
  nop                                       #  17    0xafd02  1      OPC=nop             
  nop                                       #  18    0xafd03  1      OPC=nop             
  nop                                       #  19    0xafd04  1      OPC=nop             
  nop                                       #  20    0xafd05  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11frac_digitsEv, .-_ZNKSt10moneypunctIwLb1EE11frac_digitsEv

