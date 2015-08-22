  .text
  .globl _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv, @function

#! file-offset 0xf0800
#! rip-offset  0xb0800
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13do_pos_formatEv:  #        0xb0800  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb0800  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb0802  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xb0804  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xb0809  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xb080b  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %eax                #  6     0xb080d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xb0812  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xb0819  1      OPC=nop             
  nop                                         #  9     0xb081a  1      OPC=nop             
  nop                                         #  10    0xb081b  1      OPC=nop             
  nop                                         #  11    0xb081c  1      OPC=nop             
  addq %r15, %r11                             #  12    0xb081d  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xb0820  3      OPC=jmpq_r64        
  nop                                         #  14    0xb0823  1      OPC=nop             
  nop                                         #  15    0xb0824  1      OPC=nop             
  nop                                         #  16    0xb0825  1      OPC=nop             
  nop                                         #  17    0xb0826  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv, .-_ZNKSt10moneypunctIwLb1EE13do_pos_formatEv

