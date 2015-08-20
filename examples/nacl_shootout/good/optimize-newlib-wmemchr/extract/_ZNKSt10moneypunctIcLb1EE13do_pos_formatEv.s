  .text
  .globl _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv, @function

#! file-offset 0xb7120
#! rip-offset  0x77120
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13do_pos_formatEv:  #        0x77120  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x77120  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x77122  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0x77124  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0x77129  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0x7712b  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                #  6     0x7712d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0x77132  7      OPC=andl_r32_imm32  
  nop                                         #  8     0x77139  1      OPC=nop             
  nop                                         #  9     0x7713a  1      OPC=nop             
  nop                                         #  10    0x7713b  1      OPC=nop             
  nop                                         #  11    0x7713c  1      OPC=nop             
  addq %r15, %r11                             #  12    0x7713d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0x77140  3      OPC=jmpq_r64        
  nop                                         #  14    0x77143  1      OPC=nop             
  nop                                         #  15    0x77144  1      OPC=nop             
  nop                                         #  16    0x77145  1      OPC=nop             
  nop                                         #  17    0x77146  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv, .-_ZNKSt10moneypunctIcLb1EE13do_pos_formatEv

