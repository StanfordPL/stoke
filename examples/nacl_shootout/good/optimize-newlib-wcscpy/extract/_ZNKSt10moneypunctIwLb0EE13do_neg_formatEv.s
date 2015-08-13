  .text
  .globl _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv
  .type _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv, @function

#! file-offset 0xefb80
#! rip-offset  0xafb80
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13do_neg_formatEv:  #        0xafb80  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafb80  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafb82  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xafb84  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xafb89  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xafb8b  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %eax                #  6     0xafb8d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xafb92  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xafb99  1      OPC=nop             
  nop                                         #  9     0xafb9a  1      OPC=nop             
  nop                                         #  10    0xafb9b  1      OPC=nop             
  nop                                         #  11    0xafb9c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xafb9d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xafba0  3      OPC=jmpq_r64        
  nop                                         #  14    0xafba3  1      OPC=nop             
  nop                                         #  15    0xafba4  1      OPC=nop             
  nop                                         #  16    0xafba5  1      OPC=nop             
  nop                                         #  17    0xafba6  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13do_neg_formatEv, .-_ZNKSt10moneypunctIwLb0EE13do_neg_formatEv

