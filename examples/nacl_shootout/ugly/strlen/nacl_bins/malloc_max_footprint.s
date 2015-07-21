  .text
  .globl malloc_max_footprint
  .type malloc_max_footprint, @function

#! file-offset 0x150da0
#! rip-offset  0x110da0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.malloc_max_footprint:        #        0x110da0  0      OPC=0     
  popq %r11                   #  1     0x110da0  2      OPC=1694  
  movl 0xff67f8c(%rip), %eax  #  2     0x110da2  6      OPC=1156  
  andl $0xffffffe0, %r11d     #  3     0x110da8  7      OPC=131   
  nop                         #  4     0x110daf  1      OPC=1343  
  nop                         #  5     0x110db0  1      OPC=1343  
  nop                         #  6     0x110db1  1      OPC=1343  
  nop                         #  7     0x110db2  1      OPC=1343  
  addq %r15, %r11             #  8     0x110db3  3      OPC=72    
  jmpq %r11                   #  9     0x110db6  3      OPC=928   
  nop                         #  10    0x110db9  1      OPC=1343  
  nop                         #  11    0x110dba  1      OPC=1343  
  nop                         #  12    0x110dbb  1      OPC=1343  
  nop                         #  13    0x110dbc  1      OPC=1343  
  nop                         #  14    0x110dbd  1      OPC=1343  
  nop                         #  15    0x110dbe  1      OPC=1343  
  nop                         #  16    0x110dbf  1      OPC=1343  
  nop                         #  17    0x110dc0  1      OPC=1343  
  nop                         #  18    0x110dc1  1      OPC=1343  
  nop                         #  19    0x110dc2  1      OPC=1343  
  nop                         #  20    0x110dc3  1      OPC=1343  
  nop                         #  21    0x110dc4  1      OPC=1343  
  nop                         #  22    0x110dc5  1      OPC=1343  
  nop                         #  23    0x110dc6  1      OPC=1343  
                                                                  
.size malloc_max_footprint, .-malloc_max_footprint

