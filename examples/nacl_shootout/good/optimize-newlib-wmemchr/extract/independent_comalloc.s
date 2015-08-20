  .text
  .globl independent_comalloc
  .type independent_comalloc, @function

#! file-offset 0x1583c0
#! rip-offset  0x1183c0
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode            
.independent_comalloc:  #        0x1183c0  0      OPC=<label>       
  movl %edx, %ecx       #  1     0x1183c0  2      OPC=movl_r32_r32  
  movl %esi, %esi       #  2     0x1183c2  2      OPC=movl_r32_r32  
  xorl %edx, %edx       #  3     0x1183c4  2      OPC=xorl_r32_r32  
  jmpq .T_278           #  4     0x1183c6  5      OPC=jmpq_label_1  
  nop                   #  5     0x1183cb  1      OPC=nop           
  nop                   #  6     0x1183cc  1      OPC=nop           
  nop                   #  7     0x1183cd  1      OPC=nop           
  nop                   #  8     0x1183ce  1      OPC=nop           
  nop                   #  9     0x1183cf  1      OPC=nop           
  nop                   #  10    0x1183d0  1      OPC=nop           
  nop                   #  11    0x1183d1  1      OPC=nop           
  nop                   #  12    0x1183d2  1      OPC=nop           
  nop                   #  13    0x1183d3  1      OPC=nop           
  nop                   #  14    0x1183d4  1      OPC=nop           
  nop                   #  15    0x1183d5  1      OPC=nop           
  nop                   #  16    0x1183d6  1      OPC=nop           
  nop                   #  17    0x1183d7  1      OPC=nop           
  nop                   #  18    0x1183d8  1      OPC=nop           
  nop                   #  19    0x1183d9  1      OPC=nop           
  nop                   #  20    0x1183da  1      OPC=nop           
  nop                   #  21    0x1183db  1      OPC=nop           
  nop                   #  22    0x1183dc  1      OPC=nop           
  nop                   #  23    0x1183dd  1      OPC=nop           
  nop                   #  24    0x1183de  1      OPC=nop           
  nop                   #  25    0x1183df  1      OPC=nop           
                                                                    
.size independent_comalloc, .-independent_comalloc

