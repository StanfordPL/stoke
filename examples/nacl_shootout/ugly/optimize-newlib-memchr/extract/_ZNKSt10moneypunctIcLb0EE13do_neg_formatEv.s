  .text
  .globl _ZNKSt10moneypunctIcLb0EE13do_neg_formatEv
  .type _ZNKSt10moneypunctIcLb0EE13do_neg_formatEv, @function

#! file-offset 0xb75e0
#! rip-offset  0x775e0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13do_neg_formatEv:  #        0x775e0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x775e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x775e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0x775e4  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0x775e9  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0x775eb  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %eax                #  6     0x775ed  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0x775f2  7      OPC=andl_r32_imm32  
  nop                                         #  8     0x775f9  1      OPC=nop             
  nop                                         #  9     0x775fa  1      OPC=nop             
  nop                                         #  10    0x775fb  1      OPC=nop             
  nop                                         #  11    0x775fc  1      OPC=nop             
  addq %r15, %r11                             #  12    0x775fd  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0x77600  3      OPC=jmpq_r64        
  nop                                         #  14    0x77603  1      OPC=nop             
  nop                                         #  15    0x77604  1      OPC=nop             
  nop                                         #  16    0x77605  1      OPC=nop             
  nop                                         #  17    0x77606  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13do_neg_formatEv, .-_ZNKSt10moneypunctIcLb0EE13do_neg_formatEv

