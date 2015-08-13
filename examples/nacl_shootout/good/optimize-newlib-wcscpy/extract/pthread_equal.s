  .text
  .globl pthread_equal
  .type pthread_equal, @function

#! file-offset 0x6d760
#! rip-offset  0x2d760
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_equal:            #        0x2d760  0      OPC=<label>         
  popq %r11                #  1     0x2d760  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x2d762  2      OPC=xorl_r32_r32    
  cmpl %edi, %esi          #  3     0x2d764  2      OPC=cmpl_r32_r32    
  sete %al                 #  4     0x2d766  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d  #  5     0x2d769  7      OPC=andl_r32_imm32  
  nop                      #  6     0x2d770  1      OPC=nop             
  nop                      #  7     0x2d771  1      OPC=nop             
  nop                      #  8     0x2d772  1      OPC=nop             
  nop                      #  9     0x2d773  1      OPC=nop             
  addq %r15, %r11          #  10    0x2d774  3      OPC=addq_r64_r64    
  jmpq %r11                #  11    0x2d777  3      OPC=jmpq_r64        
  nop                      #  12    0x2d77a  1      OPC=nop             
  nop                      #  13    0x2d77b  1      OPC=nop             
  nop                      #  14    0x2d77c  1      OPC=nop             
  nop                      #  15    0x2d77d  1      OPC=nop             
  nop                      #  16    0x2d77e  1      OPC=nop             
  nop                      #  17    0x2d77f  1      OPC=nop             
  nop                      #  18    0x2d780  1      OPC=nop             
  nop                      #  19    0x2d781  1      OPC=nop             
  nop                      #  20    0x2d782  1      OPC=nop             
  nop                      #  21    0x2d783  1      OPC=nop             
  nop                      #  22    0x2d784  1      OPC=nop             
  nop                      #  23    0x2d785  1      OPC=nop             
  nop                      #  24    0x2d786  1      OPC=nop             
                                                                        
.size pthread_equal, .-pthread_equal

