  .text
  .globl malloc_footprint
  .type malloc_footprint, @function

#! file-offset 0x150d80
#! rip-offset  0x110d80
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.malloc_footprint:            #        0x110d80  0      OPC=0     
  popq %r11                   #  1     0x110d80  2      OPC=1694  
  movl 0xff67fa8(%rip), %eax  #  2     0x110d82  6      OPC=1156  
  andl $0xffffffe0, %r11d     #  3     0x110d88  7      OPC=131   
  nop                         #  4     0x110d8f  1      OPC=1343  
  nop                         #  5     0x110d90  1      OPC=1343  
  nop                         #  6     0x110d91  1      OPC=1343  
  nop                         #  7     0x110d92  1      OPC=1343  
  addq %r15, %r11             #  8     0x110d93  3      OPC=72    
  jmpq %r11                   #  9     0x110d96  3      OPC=928   
  nop                         #  10    0x110d99  1      OPC=1343  
  nop                         #  11    0x110d9a  1      OPC=1343  
  nop                         #  12    0x110d9b  1      OPC=1343  
  nop                         #  13    0x110d9c  1      OPC=1343  
  nop                         #  14    0x110d9d  1      OPC=1343  
  nop                         #  15    0x110d9e  1      OPC=1343  
  nop                         #  16    0x110d9f  1      OPC=1343  
  nop                         #  17    0x110da0  1      OPC=1343  
  nop                         #  18    0x110da1  1      OPC=1343  
  nop                         #  19    0x110da2  1      OPC=1343  
  nop                         #  20    0x110da3  1      OPC=1343  
  nop                         #  21    0x110da4  1      OPC=1343  
  nop                         #  22    0x110da5  1      OPC=1343  
  nop                         #  23    0x110da6  1      OPC=1343  
                                                                  
.size malloc_footprint, .-malloc_footprint

