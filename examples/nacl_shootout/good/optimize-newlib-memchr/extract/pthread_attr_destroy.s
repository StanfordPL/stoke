  .text
  .globl pthread_attr_destroy
  .type pthread_attr_destroy, @function

#! file-offset 0x6e200
#! rip-offset  0x2e200
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_attr_destroy:     #        0x2e200  0      OPC=<label>         
  popq %r11                #  1     0x2e200  2      OPC=popq_r64_1      
  movl %edi, %edi          #  2     0x2e202  2      OPC=movl_r32_r32    
  cmpq $0x1, %rdi          #  3     0x2e204  4      OPC=cmpq_r64_imm8   
  sbbl %eax, %eax          #  4     0x2e208  2      OPC=sbbl_r32_r32    
  andl $0x16, %eax         #  5     0x2e20a  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d  #  6     0x2e20d  7      OPC=andl_r32_imm32  
  nop                      #  7     0x2e214  1      OPC=nop             
  nop                      #  8     0x2e215  1      OPC=nop             
  nop                      #  9     0x2e216  1      OPC=nop             
  nop                      #  10    0x2e217  1      OPC=nop             
  addq %r15, %r11          #  11    0x2e218  3      OPC=addq_r64_r64    
  jmpq %r11                #  12    0x2e21b  3      OPC=jmpq_r64        
  nop                      #  13    0x2e21e  1      OPC=nop             
  nop                      #  14    0x2e21f  1      OPC=nop             
  nop                      #  15    0x2e220  1      OPC=nop             
  nop                      #  16    0x2e221  1      OPC=nop             
  nop                      #  17    0x2e222  1      OPC=nop             
  nop                      #  18    0x2e223  1      OPC=nop             
  nop                      #  19    0x2e224  1      OPC=nop             
  nop                      #  20    0x2e225  1      OPC=nop             
  nop                      #  21    0x2e226  1      OPC=nop             
                                                                        
.size pthread_attr_destroy, .-pthread_attr_destroy

