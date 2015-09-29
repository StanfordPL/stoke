  .text
  .globl _ZNKSt10moneypunctIwLb1EE11frac_digitsEv
  .type _ZNKSt10moneypunctIwLb1EE11frac_digitsEv, @function

#! file-offset 0xf0700
#! rip-offset  0xb0700
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11frac_digitsEv:  #        0xb0700  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xb0700  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0xb0702  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0xb0704  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0xb0708  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0xb070a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0xb070f  6      OPC=andl_r32_imm32  
  nop                                       #  7     0xb0715  1      OPC=nop             
  nop                                       #  8     0xb0716  1      OPC=nop             
  nop                                       #  9     0xb0717  1      OPC=nop             
  addq %r15, %rax                           #  10    0xb0718  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0xb071b  2      OPC=jmpq_r64        
  nop                                       #  12    0xb071d  1      OPC=nop             
  nop                                       #  13    0xb071e  1      OPC=nop             
  nop                                       #  14    0xb071f  1      OPC=nop             
  nop                                       #  15    0xb0720  1      OPC=nop             
  nop                                       #  16    0xb0721  1      OPC=nop             
  nop                                       #  17    0xb0722  1      OPC=nop             
  nop                                       #  18    0xb0723  1      OPC=nop             
  nop                                       #  19    0xb0724  1      OPC=nop             
  nop                                       #  20    0xb0725  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11frac_digitsEv, .-_ZNKSt10moneypunctIwLb1EE11frac_digitsEv

