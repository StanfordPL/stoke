  .text
  .globl _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv, @function

#! file-offset 0xb75c0
#! rip-offset  0x775c0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13do_pos_formatEv:  #        0x775c0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x775c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x775c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0x775c4  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0x775c9  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0x775cb  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                #  6     0x775cd  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0x775d2  7      OPC=andl_r32_imm32  
  nop                                         #  8     0x775d9  1      OPC=nop             
  nop                                         #  9     0x775da  1      OPC=nop             
  nop                                         #  10    0x775db  1      OPC=nop             
  nop                                         #  11    0x775dc  1      OPC=nop             
  addq %r15, %r11                             #  12    0x775dd  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0x775e0  3      OPC=jmpq_r64        
  nop                                         #  14    0x775e3  1      OPC=nop             
  nop                                         #  15    0x775e4  1      OPC=nop             
  nop                                         #  16    0x775e5  1      OPC=nop             
  nop                                         #  17    0x775e6  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv, .-_ZNKSt10moneypunctIcLb0EE13do_pos_formatEv

