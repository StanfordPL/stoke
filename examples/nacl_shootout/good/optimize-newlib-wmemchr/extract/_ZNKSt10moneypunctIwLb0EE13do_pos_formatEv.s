  .text
  .globl _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv, @function

#! file-offset 0xefe60
#! rip-offset  0xafe60
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13do_pos_formatEv:  #        0xafe60  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafe60  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafe62  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xafe64  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xafe69  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xafe6b  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %eax                #  6     0xafe6d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xafe72  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xafe79  1      OPC=nop             
  nop                                         #  9     0xafe7a  1      OPC=nop             
  nop                                         #  10    0xafe7b  1      OPC=nop             
  nop                                         #  11    0xafe7c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xafe7d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xafe80  3      OPC=jmpq_r64        
  nop                                         #  14    0xafe83  1      OPC=nop             
  nop                                         #  15    0xafe84  1      OPC=nop             
  nop                                         #  16    0xafe85  1      OPC=nop             
  nop                                         #  17    0xafe86  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13do_pos_formatEv, .-_ZNKSt10moneypunctIwLb0EE13do_pos_formatEv

