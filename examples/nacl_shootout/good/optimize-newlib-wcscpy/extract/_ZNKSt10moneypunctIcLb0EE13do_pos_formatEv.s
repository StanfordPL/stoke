  .text
  .globl _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv
  .type _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv, @function

#! file-offset 0xb6ba0
#! rip-offset  0x76ba0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13do_pos_formatEv:  #        0x76ba0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x76ba0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0x76ba2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                 #  3     0x76ba4  5      OPC=movl_r32_m32    
  popq %r11                                   #  4     0x76ba9  2      OPC=popq_r64_1      
  movl %eax, %eax                             #  5     0x76bab  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                #  6     0x76bad  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                     #  7     0x76bb2  7      OPC=andl_r32_imm32  
  nop                                         #  8     0x76bb9  1      OPC=nop             
  nop                                         #  9     0x76bba  1      OPC=nop             
  nop                                         #  10    0x76bbb  1      OPC=nop             
  nop                                         #  11    0x76bbc  1      OPC=nop             
  addq %r15, %r11                             #  12    0x76bbd  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  13    0x76bc0  3      OPC=jmpq_r64        
  nop                                         #  14    0x76bc3  1      OPC=nop             
  nop                                         #  15    0x76bc4  1      OPC=nop             
  nop                                         #  16    0x76bc5  1      OPC=nop             
  nop                                         #  17    0x76bc6  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13do_pos_formatEv, .-_ZNKSt10moneypunctIcLb0EE13do_pos_formatEv

