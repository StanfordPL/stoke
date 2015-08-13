  .text
  .globl _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv, @function

#! file-offset 0xefde0
#! rip-offset  0xafde0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13do_pos_formatEv:  #        0xafde0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafde0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafde2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0xafde4  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xafde9  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0xafdeb  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %eax                #  6     0xafded  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0xafdf2  7      OPC=andl_r32_imm32  
  nop                                         #  8     0xafdf9  1      OPC=nop             
  nop                                         #  9     0xafdfa  1      OPC=nop             
  nop                                         #  10    0xafdfb  1      OPC=nop             
  nop                                         #  11    0xafdfc  1      OPC=nop             
  addq %r15, %r11                             #  12    0xafdfd  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0xafe00  3      OPC=jmpq_r64        
  nop                                         #  14    0xafe03  1      OPC=nop             
  nop                                         #  15    0xafe04  1      OPC=nop             
  nop                                         #  16    0xafe05  1      OPC=nop             
  nop                                         #  17    0xafe06  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13do_pos_formatEv, .-_ZNKSt10moneypunctIwLb1EE13do_pos_formatEv

