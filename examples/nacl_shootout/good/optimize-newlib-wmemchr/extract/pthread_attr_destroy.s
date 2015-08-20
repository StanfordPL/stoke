  .text
  .globl pthread_attr_destroy
  .type pthread_attr_destroy, @function

#! file-offset 0x6dae0
#! rip-offset  0x2dae0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_attr_destroy:     #        0x2dae0  0      OPC=<label>         
  popq %r11                #  1     0x2dae0  2      OPC=popq_r64_1      
  movl %edi, %edi          #  2     0x2dae2  2      OPC=movl_r32_r32    
  cmpq $0x1, %rdi          #  3     0x2dae4  4      OPC=cmpq_r64_imm8   
  sbbl %eax, %eax          #  4     0x2dae8  2      OPC=sbbl_r32_r32    
  andl $0x16, %eax         #  5     0x2daea  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d  #  6     0x2daed  7      OPC=andl_r32_imm32  
  nop                      #  7     0x2daf4  1      OPC=nop             
  nop                      #  8     0x2daf5  1      OPC=nop             
  nop                      #  9     0x2daf6  1      OPC=nop             
  nop                      #  10    0x2daf7  1      OPC=nop             
  addq %r15, %r11          #  11    0x2daf8  3      OPC=addq_r64_r64    
  jmpq %r11                #  12    0x2dafb  3      OPC=jmpq_r64        
  nop                      #  13    0x2dafe  1      OPC=nop             
  nop                      #  14    0x2daff  1      OPC=nop             
  nop                      #  15    0x2db00  1      OPC=nop             
  nop                      #  16    0x2db01  1      OPC=nop             
  nop                      #  17    0x2db02  1      OPC=nop             
  nop                      #  18    0x2db03  1      OPC=nop             
  nop                      #  19    0x2db04  1      OPC=nop             
  nop                      #  20    0x2db05  1      OPC=nop             
  nop                      #  21    0x2db06  1      OPC=nop             
                                                                        
.size pthread_attr_destroy, .-pthread_attr_destroy

