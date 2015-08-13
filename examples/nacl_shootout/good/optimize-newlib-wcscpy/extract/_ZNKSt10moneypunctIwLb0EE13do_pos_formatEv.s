  .text
  .globl _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv, @function

#! file-offset 0xefb60
#! rip-offset  0xafb60
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13do_pos_formatEv:  #        0xafb60  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafb60  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafb62  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xafb64  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xafb69  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xafb6b  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %eax                #  6     0xafb6d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xafb72  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xafb79  1      OPC=nop             
  nop                                         #  9     0xafb7a  1      OPC=nop             
  nop                                         #  10    0xafb7b  1      OPC=nop             
  nop                                         #  11    0xafb7c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xafb7d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xafb80  3      OPC=jmpq_r64        
  nop                                         #  14    0xafb83  1      OPC=nop             
  nop                                         #  15    0xafb84  1      OPC=nop             
  nop                                         #  16    0xafb85  1      OPC=nop             
  nop                                         #  17    0xafb86  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv, .-_ZNKSt10moneypunctIwLb0EE13do_pos_formatEv

