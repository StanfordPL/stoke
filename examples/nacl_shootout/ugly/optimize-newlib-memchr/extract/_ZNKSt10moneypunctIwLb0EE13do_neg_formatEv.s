  .text
  .globl _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv
  .type _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv, @function

#! file-offset 0xf05a0
#! rip-offset  0xb05a0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13do_neg_formatEv:  #        0xb05a0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb05a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb05a2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xb05a4  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xb05a9  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xb05ab  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %eax                #  6     0xb05ad  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xb05b2  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xb05b9  1      OPC=nop             
  nop                                         #  9     0xb05ba  1      OPC=nop             
  nop                                         #  10    0xb05bb  1      OPC=nop             
  nop                                         #  11    0xb05bc  1      OPC=nop             
  addq %r15, %r11                             #  12    0xb05bd  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xb05c0  3      OPC=jmpq_r64        
  nop                                         #  14    0xb05c3  1      OPC=nop             
  nop                                         #  15    0xb05c4  1      OPC=nop             
  nop                                         #  16    0xb05c5  1      OPC=nop             
  nop                                         #  17    0xb05c6  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv, .-_ZNKSt10moneypunctIwLb0EE13do_neg_formatEv

