  .text
  .globl _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv
  .type _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv, @function

#! file-offset 0xefe80
#! rip-offset  0xafe80
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13do_neg_formatEv:  #        0xafe80  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafe80  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafe82  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xafe84  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xafe89  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xafe8b  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %eax                #  6     0xafe8d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xafe92  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xafe99  1      OPC=nop             
  nop                                         #  9     0xafe9a  1      OPC=nop             
  nop                                         #  10    0xafe9b  1      OPC=nop             
  nop                                         #  11    0xafe9c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xafe9d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xafea0  3      OPC=jmpq_r64        
  nop                                         #  14    0xafea3  1      OPC=nop             
  nop                                         #  15    0xafea4  1      OPC=nop             
  nop                                         #  16    0xafea5  1      OPC=nop             
  nop                                         #  17    0xafea6  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv, .-_ZNKSt10moneypunctIwLb0EE13do_neg_formatEv

