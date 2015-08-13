  .text
  .globl NewMark
  .type NewMark, @function

#! file-offset 0x66720
#! rip-offset  0x26720
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NewMark:                      #        0x26720  0      OPC=<label>         
  addl $0x1, 0x1004aa1d(%rip)  #  1     0x26720  7      OPC=addl_m32_imm8   
  popq %r11                    #  2     0x26727  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  3     0x26729  7      OPC=andl_r32_imm32  
  nop                          #  4     0x26730  1      OPC=nop             
  nop                          #  5     0x26731  1      OPC=nop             
  nop                          #  6     0x26732  1      OPC=nop             
  nop                          #  7     0x26733  1      OPC=nop             
  addq %r15, %r11              #  8     0x26734  3      OPC=addq_r64_r64    
  jmpq %r11                    #  9     0x26737  3      OPC=jmpq_r64        
  nop                          #  10    0x2673a  1      OPC=nop             
  nop                          #  11    0x2673b  1      OPC=nop             
  nop                          #  12    0x2673c  1      OPC=nop             
  nop                          #  13    0x2673d  1      OPC=nop             
  nop                          #  14    0x2673e  1      OPC=nop             
  nop                          #  15    0x2673f  1      OPC=nop             
  nop                          #  16    0x26740  1      OPC=nop             
  nop                          #  17    0x26741  1      OPC=nop             
  nop                          #  18    0x26742  1      OPC=nop             
  nop                          #  19    0x26743  1      OPC=nop             
  nop                          #  20    0x26744  1      OPC=nop             
  nop                          #  21    0x26745  1      OPC=nop             
  nop                          #  22    0x26746  1      OPC=nop             
                                                                            
.size NewMark, .-NewMark

