  .text
  .globl _ZNKSt10moneypunctIwLb0EE11frac_digitsEv
  .type _ZNKSt10moneypunctIwLb0EE11frac_digitsEv, @function

#! file-offset 0xefa60
#! rip-offset  0xafa60
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11frac_digitsEv:  #        0xafa60  0      OPC=<label>         
  movl %edi, %edi                           #  1     0xafa60  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  2     0xafa62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                  #  3     0xafa64  4      OPC=movl_r32_m32    
  movl %eax, %eax                           #  4     0xafa68  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax              #  5     0xafa6a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                    #  6     0xafa6f  6      OPC=andl_r32_imm32  
  nop                                       #  7     0xafa75  1      OPC=nop             
  nop                                       #  8     0xafa76  1      OPC=nop             
  nop                                       #  9     0xafa77  1      OPC=nop             
  addq %r15, %rax                           #  10    0xafa78  3      OPC=addq_r64_r64    
  jmpq %rax                                 #  11    0xafa7b  2      OPC=jmpq_r64        
  nop                                       #  12    0xafa7d  1      OPC=nop             
  nop                                       #  13    0xafa7e  1      OPC=nop             
  nop                                       #  14    0xafa7f  1      OPC=nop             
  nop                                       #  15    0xafa80  1      OPC=nop             
  nop                                       #  16    0xafa81  1      OPC=nop             
  nop                                       #  17    0xafa82  1      OPC=nop             
  nop                                       #  18    0xafa83  1      OPC=nop             
  nop                                       #  19    0xafa84  1      OPC=nop             
  nop                                       #  20    0xafa85  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11frac_digitsEv, .-_ZNKSt10moneypunctIwLb0EE11frac_digitsEv

