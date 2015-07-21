  .text
  .globl NewMark
  .type NewMark, @function

#! file-offset 0x66720
#! rip-offset  0x26720
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.NewMark:                      #        0x26720  0      OPC=0     
  addl $0x1, 0x1004aa1d(%rip)  #  1     0x26720  7      OPC=51    
  popq %r11                    #  2     0x26727  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  3     0x26729  7      OPC=131   
  nop                          #  4     0x26730  1      OPC=1343  
  nop                          #  5     0x26731  1      OPC=1343  
  nop                          #  6     0x26732  1      OPC=1343  
  nop                          #  7     0x26733  1      OPC=1343  
  addq %r15, %r11              #  8     0x26734  3      OPC=72    
  jmpq %r11                    #  9     0x26737  3      OPC=928   
  nop                          #  10    0x2673a  1      OPC=1343  
  nop                          #  11    0x2673b  1      OPC=1343  
  nop                          #  12    0x2673c  1      OPC=1343  
  nop                          #  13    0x2673d  1      OPC=1343  
  nop                          #  14    0x2673e  1      OPC=1343  
  nop                          #  15    0x2673f  1      OPC=1343  
  nop                          #  16    0x26740  1      OPC=1343  
  nop                          #  17    0x26741  1      OPC=1343  
  nop                          #  18    0x26742  1      OPC=1343  
  nop                          #  19    0x26743  1      OPC=1343  
  nop                          #  20    0x26744  1      OPC=1343  
  nop                          #  21    0x26745  1      OPC=1343  
  nop                          #  22    0x26746  1      OPC=1343  
                                                                  
.size NewMark, .-NewMark

