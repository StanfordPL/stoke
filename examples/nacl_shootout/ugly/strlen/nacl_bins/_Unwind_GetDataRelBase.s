  .text
  .globl _Unwind_GetDataRelBase
  .type _Unwind_GetDataRelBase, @function

#! file-offset 0x149520
#! rip-offset  0x109520
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_GetDataRelBase:        #        0x109520  0      OPC=0     
  popq %r11                     #  1     0x109520  2      OPC=1694  
  movl %edi, %edi               #  2     0x109522  2      OPC=1157  
  movl %edi, %edi               #  3     0x109524  2      OPC=1157  
  movl 0x58(%r15,%rdi,1), %eax  #  4     0x109526  5      OPC=1156  
  andl $0xffffffe0, %r11d       #  5     0x10952b  7      OPC=131   
  nop                           #  6     0x109532  1      OPC=1343  
  nop                           #  7     0x109533  1      OPC=1343  
  nop                           #  8     0x109534  1      OPC=1343  
  nop                           #  9     0x109535  1      OPC=1343  
  addq %r15, %r11               #  10    0x109536  3      OPC=72    
  jmpq %r11                     #  11    0x109539  3      OPC=928   
  nop                           #  12    0x10953c  1      OPC=1343  
  nop                           #  13    0x10953d  1      OPC=1343  
  nop                           #  14    0x10953e  1      OPC=1343  
  nop                           #  15    0x10953f  1      OPC=1343  
  nop                           #  16    0x109540  1      OPC=1343  
  nop                           #  17    0x109541  1      OPC=1343  
  nop                           #  18    0x109542  1      OPC=1343  
  nop                           #  19    0x109543  1      OPC=1343  
  nop                           #  20    0x109544  1      OPC=1343  
  nop                           #  21    0x109545  1      OPC=1343  
  nop                           #  22    0x109546  1      OPC=1343  
                                                                    
.size _Unwind_GetDataRelBase, .-_Unwind_GetDataRelBase

