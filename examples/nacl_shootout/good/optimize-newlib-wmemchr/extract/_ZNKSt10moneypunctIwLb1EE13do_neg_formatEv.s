  .text
  .globl _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv
  .type _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv, @function

#! file-offset 0xf0100
#! rip-offset  0xb0100
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13do_neg_formatEv:  #        0xb0100  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb0100  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb0102  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xb0104  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xb0109  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xb010b  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %eax                #  6     0xb010d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xb0112  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xb0119  1      OPC=nop             
  nop                                         #  9     0xb011a  1      OPC=nop             
  nop                                         #  10    0xb011b  1      OPC=nop             
  nop                                         #  11    0xb011c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xb011d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xb0120  3      OPC=jmpq_r64        
  nop                                         #  14    0xb0123  1      OPC=nop             
  nop                                         #  15    0xb0124  1      OPC=nop             
  nop                                         #  16    0xb0125  1      OPC=nop             
  nop                                         #  17    0xb0126  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv, .-_ZNKSt10moneypunctIwLb1EE13do_neg_formatEv

