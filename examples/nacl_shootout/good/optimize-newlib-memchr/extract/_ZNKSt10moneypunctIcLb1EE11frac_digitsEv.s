  .text
  .globl _ZNKSt10moneypunctIcLb1EE11frac_digitsEv
  .type _ZNKSt10moneypunctIcLb1EE11frac_digitsEv, @function

#! file-offset 0xb7740
#! rip-offset  0x77740
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE11frac_digitsEv:  #        0x77740  0      OPC=<label>         
  movl %edi, %edi                           #  1     0x77740  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0x77742  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0x77744  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0x77748  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0x7774a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0x7774f  6      OPC=andl_r32_imm32  
  nop                                       #  7     0x77755  1      OPC=nop             
  nop                                       #  8     0x77756  1      OPC=nop             
  nop                                       #  9     0x77757  1      OPC=nop             
  addq %r15, %rax                           #  10    0x77758  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0x7775b  2      OPC=jmpq_r64        
  nop                                       #  12    0x7775d  1      OPC=nop             
  nop                                       #  13    0x7775e  1      OPC=nop             
  nop                                       #  14    0x7775f  1      OPC=nop             
  nop                                       #  15    0x77760  1      OPC=nop             
  nop                                       #  16    0x77761  1      OPC=nop             
  nop                                       #  17    0x77762  1      OPC=nop             
  nop                                       #  18    0x77763  1      OPC=nop             
  nop                                       #  19    0x77764  1      OPC=nop             
  nop                                       #  20    0x77765  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb1EE11frac_digitsEv, .-_ZNKSt10moneypunctIcLb1EE11frac_digitsEv

