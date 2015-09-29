  .text
  .globl _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv, @function

#! file-offset 0xb7840
#! rip-offset  0x77840
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13do_pos_formatEv:  #        0x77840  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x77840  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x77842  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0x77844  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0x77849  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0x7784b  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                #  6     0x7784d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0x77852  7      OPC=andl_r32_imm32  
  nop                                         #  8     0x77859  1      OPC=nop             
  nop                                         #  9     0x7785a  1      OPC=nop             
  nop                                         #  10    0x7785b  1      OPC=nop             
  nop                                         #  11    0x7785c  1      OPC=nop             
  addq %r15, %r11                             #  12    0x7785d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0x77860  3      OPC=jmpq_r64        
  nop                                         #  14    0x77863  1      OPC=nop             
  nop                                         #  15    0x77864  1      OPC=nop             
  nop                                         #  16    0x77865  1      OPC=nop             
  nop                                         #  17    0x77866  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13do_pos_formatEv, .-_ZNKSt10moneypunctIcLb1EE13do_pos_formatEv

