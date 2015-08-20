  .text
  .globl _ZNKSt10moneypunctIwLb1EE11frac_digitsEv
  .type _ZNKSt10moneypunctIwLb1EE11frac_digitsEv, @function

#! file-offset 0xeffe0
#! rip-offset  0xaffe0
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11frac_digitsEv:  #        0xaffe0  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xaffe0  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0xaffe2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0xaffe4  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0xaffe8  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0xaffea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0xaffef  6      OPC=andl_r32_imm32  
  nop                                       #  7     0xafff5  1      OPC=nop             
  nop                                       #  8     0xafff6  1      OPC=nop             
  nop                                       #  9     0xafff7  1      OPC=nop             
  addq %r15, %rax                           #  10    0xafff8  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0xafffb  2      OPC=jmpq_r64        
  nop                                       #  12    0xafffd  1      OPC=nop             
  nop                                       #  13    0xafffe  1      OPC=nop             
  nop                                       #  14    0xaffff  1      OPC=nop             
  nop                                       #  15    0xb0000  1      OPC=nop             
  nop                                       #  16    0xb0001  1      OPC=nop             
  nop                                       #  17    0xb0002  1      OPC=nop             
  nop                                       #  18    0xb0003  1      OPC=nop             
  nop                                       #  19    0xb0004  1      OPC=nop             
  nop                                       #  20    0xb0005  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11frac_digitsEv, .-_ZNKSt10moneypunctIwLb1EE11frac_digitsEv

