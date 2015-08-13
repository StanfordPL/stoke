  .text
  .globl pthread_kill
  .type pthread_kill, @function

#! file-offset 0x6d740
#! rip-offset  0x2d740
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_kill:             #        0x2d740  0      OPC=<label>         
  popq %r11                #  1     0x2d740  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x2d742  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x2d747  7      OPC=andl_r32_imm32  
  nop                      #  4     0x2d74e  1      OPC=nop             
  nop                      #  5     0x2d74f  1      OPC=nop             
  nop                      #  6     0x2d750  1      OPC=nop             
  nop                      #  7     0x2d751  1      OPC=nop             
  addq %r15, %r11          #  8     0x2d752  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x2d755  3      OPC=jmpq_r64        
  nop                      #  10    0x2d758  1      OPC=nop             
  nop                      #  11    0x2d759  1      OPC=nop             
  nop                      #  12    0x2d75a  1      OPC=nop             
  nop                      #  13    0x2d75b  1      OPC=nop             
  nop                      #  14    0x2d75c  1      OPC=nop             
  nop                      #  15    0x2d75d  1      OPC=nop             
  nop                      #  16    0x2d75e  1      OPC=nop             
  nop                      #  17    0x2d75f  1      OPC=nop             
  nop                      #  18    0x2d760  1      OPC=nop             
  nop                      #  19    0x2d761  1      OPC=nop             
  nop                      #  20    0x2d762  1      OPC=nop             
  nop                      #  21    0x2d763  1      OPC=nop             
  nop                      #  22    0x2d764  1      OPC=nop             
  nop                      #  23    0x2d765  1      OPC=nop             
  nop                      #  24    0x2d766  1      OPC=nop             
                                                                        
.size pthread_kill, .-pthread_kill

