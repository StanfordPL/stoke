  .text
  .globl pthread_equal
  .type pthread_equal, @function

#! file-offset 0x6da60
#! rip-offset  0x2da60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_equal:            #        0x2da60  0      OPC=<label>         
  popq %r11                #  1     0x2da60  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x2da62  2      OPC=xorl_r32_r32    
  cmpl %edi, %esi          #  3     0x2da64  2      OPC=cmpl_r32_r32    
  sete %al                 #  4     0x2da66  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d  #  5     0x2da69  7      OPC=andl_r32_imm32  
  nop                      #  6     0x2da70  1      OPC=nop             
  nop                      #  7     0x2da71  1      OPC=nop             
  nop                      #  8     0x2da72  1      OPC=nop             
  nop                      #  9     0x2da73  1      OPC=nop             
  addq %r15, %r11          #  10    0x2da74  3      OPC=addq_r64_r64    
  jmpq %r11                #  11    0x2da77  3      OPC=jmpq_r64        
  nop                      #  12    0x2da7a  1      OPC=nop             
  nop                      #  13    0x2da7b  1      OPC=nop             
  nop                      #  14    0x2da7c  1      OPC=nop             
  nop                      #  15    0x2da7d  1      OPC=nop             
  nop                      #  16    0x2da7e  1      OPC=nop             
  nop                      #  17    0x2da7f  1      OPC=nop             
  nop                      #  18    0x2da80  1      OPC=nop             
  nop                      #  19    0x2da81  1      OPC=nop             
  nop                      #  20    0x2da82  1      OPC=nop             
  nop                      #  21    0x2da83  1      OPC=nop             
  nop                      #  22    0x2da84  1      OPC=nop             
  nop                      #  23    0x2da85  1      OPC=nop             
  nop                      #  24    0x2da86  1      OPC=nop             
                                                                        
.size pthread_equal, .-pthread_equal

