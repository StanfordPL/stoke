  .text
  .globl pthread_kill
  .type pthread_kill, @function

#! file-offset 0x6e160
#! rip-offset  0x2e160
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_kill:             #        0x2e160  0      OPC=<label>         
  popq %r11                #  1     0x2e160  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x2e162  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x2e167  7      OPC=andl_r32_imm32  
  nop                      #  4     0x2e16e  1      OPC=nop             
  nop                      #  5     0x2e16f  1      OPC=nop             
  nop                      #  6     0x2e170  1      OPC=nop             
  nop                      #  7     0x2e171  1      OPC=nop             
  addq %r15, %r11          #  8     0x2e172  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x2e175  3      OPC=jmpq_r64        
  nop                      #  10    0x2e178  1      OPC=nop             
  nop                      #  11    0x2e179  1      OPC=nop             
  nop                      #  12    0x2e17a  1      OPC=nop             
  nop                      #  13    0x2e17b  1      OPC=nop             
  nop                      #  14    0x2e17c  1      OPC=nop             
  nop                      #  15    0x2e17d  1      OPC=nop             
  nop                      #  16    0x2e17e  1      OPC=nop             
  nop                      #  17    0x2e17f  1      OPC=nop             
  nop                      #  18    0x2e180  1      OPC=nop             
  nop                      #  19    0x2e181  1      OPC=nop             
  nop                      #  20    0x2e182  1      OPC=nop             
  nop                      #  21    0x2e183  1      OPC=nop             
  nop                      #  22    0x2e184  1      OPC=nop             
  nop                      #  23    0x2e185  1      OPC=nop             
  nop                      #  24    0x2e186  1      OPC=nop             
                                                                        
.size pthread_kill, .-pthread_kill

