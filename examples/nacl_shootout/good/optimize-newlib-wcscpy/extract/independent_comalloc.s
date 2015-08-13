  .text
  .globl independent_comalloc
  .type independent_comalloc, @function

#! file-offset 0x1580c0
#! rip-offset  0x1180c0
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode            
.independent_comalloc:  #        0x1180c0  0      OPC=<label>       
  movl %edx, %ecx       #  1     0x1180c0  2      OPC=movl_r32_r32  
  movl %esi, %esi       #  2     0x1180c2  2      OPC=movl_r32_r32  
  xorl %edx, %edx       #  3     0x1180c4  2      OPC=xorl_r32_r32  
  jmpq .T_278           #  4     0x1180c6  5      OPC=jmpq_label_1  
  nop                   #  5     0x1180cb  1      OPC=nop           
  nop                   #  6     0x1180cc  1      OPC=nop           
  nop                   #  7     0x1180cd  1      OPC=nop           
  nop                   #  8     0x1180ce  1      OPC=nop           
  nop                   #  9     0x1180cf  1      OPC=nop           
  nop                   #  10    0x1180d0  1      OPC=nop           
  nop                   #  11    0x1180d1  1      OPC=nop           
  nop                   #  12    0x1180d2  1      OPC=nop           
  nop                   #  13    0x1180d3  1      OPC=nop           
  nop                   #  14    0x1180d4  1      OPC=nop           
  nop                   #  15    0x1180d5  1      OPC=nop           
  nop                   #  16    0x1180d6  1      OPC=nop           
  nop                   #  17    0x1180d7  1      OPC=nop           
  nop                   #  18    0x1180d8  1      OPC=nop           
  nop                   #  19    0x1180d9  1      OPC=nop           
  nop                   #  20    0x1180da  1      OPC=nop           
  nop                   #  21    0x1180db  1      OPC=nop           
  nop                   #  22    0x1180dc  1      OPC=nop           
  nop                   #  23    0x1180dd  1      OPC=nop           
  nop                   #  24    0x1180de  1      OPC=nop           
  nop                   #  25    0x1180df  1      OPC=nop           
                                                                    
.size independent_comalloc, .-independent_comalloc

