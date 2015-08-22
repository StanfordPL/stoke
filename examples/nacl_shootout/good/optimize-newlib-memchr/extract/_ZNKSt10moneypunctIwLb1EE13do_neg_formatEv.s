  .text
  .globl _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv
  .type _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv, @function

#! file-offset 0xf0820
#! rip-offset  0xb0820
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13do_neg_formatEv:  #        0xb0820  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb0820  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb0822  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xb0824  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xb0829  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xb082b  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %eax                #  6     0xb082d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xb0832  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xb0839  1      OPC=nop             
  nop                                         #  9     0xb083a  1      OPC=nop             
  nop                                         #  10    0xb083b  1      OPC=nop             
  nop                                         #  11    0xb083c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xb083d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xb0840  3      OPC=jmpq_r64        
  nop                                         #  14    0xb0843  1      OPC=nop             
  nop                                         #  15    0xb0844  1      OPC=nop             
  nop                                         #  16    0xb0845  1      OPC=nop             
  nop                                         #  17    0xb0846  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13do_neg_formatEv, .-_ZNKSt10moneypunctIwLb1EE13do_neg_formatEv

