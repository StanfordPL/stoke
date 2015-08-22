  .text
  .globl _ZNKSt10moneypunctIcLb0EE11frac_digitsEv
  .type _ZNKSt10moneypunctIcLb0EE11frac_digitsEv, @function

#! file-offset 0xb74c0
#! rip-offset  0x774c0
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE11frac_digitsEv:  #        0x774c0  0      OPC=<label>         
  movl %edi, %edi                           #  1     0x774c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0x774c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0x774c4  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0x774c8  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0x774ca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0x774cf  6      OPC=andl_r32_imm32  
  nop                                       #  7     0x774d5  1      OPC=nop             
  nop                                       #  8     0x774d6  1      OPC=nop             
  nop                                       #  9     0x774d7  1      OPC=nop             
  addq %r15, %rax                           #  10    0x774d8  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0x774db  2      OPC=jmpq_r64        
  nop                                       #  12    0x774dd  1      OPC=nop             
  nop                                       #  13    0x774de  1      OPC=nop             
  nop                                       #  14    0x774df  1      OPC=nop             
  nop                                       #  15    0x774e0  1      OPC=nop             
  nop                                       #  16    0x774e1  1      OPC=nop             
  nop                                       #  17    0x774e2  1      OPC=nop             
  nop                                       #  18    0x774e3  1      OPC=nop             
  nop                                       #  19    0x774e4  1      OPC=nop             
  nop                                       #  20    0x774e5  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb0EE11frac_digitsEv, .-_ZNKSt10moneypunctIcLb0EE11frac_digitsEv

