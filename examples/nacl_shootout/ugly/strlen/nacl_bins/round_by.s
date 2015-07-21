  .text
  .globl round_by
  .type round_by, @function

#! file-offset 0x61160
#! rip-offset  0x21160
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.round_by:                 #        0x21160  0      OPC=0     
  movl %edi, %eax          #  1     0x21160  2      OPC=1157  
  xorl %edx, %edx          #  2     0x21162  2      OPC=3758  
  divl %esi                #  3     0x21164  2      OPC=611   
  movl %edi, %eax          #  4     0x21166  2      OPC=1157  
  subl %edx, %eax          #  5     0x21168  2      OPC=2386  
  popq %r11                #  6     0x2116a  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  7     0x2116c  7      OPC=131   
  nop                      #  8     0x21173  1      OPC=1343  
  nop                      #  9     0x21174  1      OPC=1343  
  nop                      #  10    0x21175  1      OPC=1343  
  nop                      #  11    0x21176  1      OPC=1343  
  addq %r15, %r11          #  12    0x21177  3      OPC=72    
  jmpq %r11                #  13    0x2117a  3      OPC=928   
  nop                      #  14    0x2117d  1      OPC=1343  
  nop                      #  15    0x2117e  1      OPC=1343  
  nop                      #  16    0x2117f  1      OPC=1343  
  nop                      #  17    0x21180  1      OPC=1343  
  nop                      #  18    0x21181  1      OPC=1343  
  nop                      #  19    0x21182  1      OPC=1343  
  nop                      #  20    0x21183  1      OPC=1343  
  nop                      #  21    0x21184  1      OPC=1343  
  nop                      #  22    0x21185  1      OPC=1343  
  nop                      #  23    0x21186  1      OPC=1343  
                                                              
.size round_by, .-round_by

