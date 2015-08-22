  .text
  .globl AddVariable
  .type AddVariable, @function

#! file-offset 0x67a00
#! rip-offset  0x27a00
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode            
.AddVariable:                  #        0x27a00  0      OPC=<label>       
  movl %edi, %esi              #  1     0x27a00  2      OPC=movl_r32_r32  
  movl 0x10049738(%rip), %edi  #  2     0x27a02  6      OPC=movl_r32_m32  
  jmpq .List_Add               #  3     0x27a08  5      OPC=jmpq_label_1  
  nop                          #  4     0x27a0d  1      OPC=nop           
  nop                          #  5     0x27a0e  1      OPC=nop           
  nop                          #  6     0x27a0f  1      OPC=nop           
  nop                          #  7     0x27a10  1      OPC=nop           
  nop                          #  8     0x27a11  1      OPC=nop           
  nop                          #  9     0x27a12  1      OPC=nop           
  nop                          #  10    0x27a13  1      OPC=nop           
  nop                          #  11    0x27a14  1      OPC=nop           
  nop                          #  12    0x27a15  1      OPC=nop           
  nop                          #  13    0x27a16  1      OPC=nop           
  nop                          #  14    0x27a17  1      OPC=nop           
  nop                          #  15    0x27a18  1      OPC=nop           
  nop                          #  16    0x27a19  1      OPC=nop           
  nop                          #  17    0x27a1a  1      OPC=nop           
  nop                          #  18    0x27a1b  1      OPC=nop           
  nop                          #  19    0x27a1c  1      OPC=nop           
  nop                          #  20    0x27a1d  1      OPC=nop           
  nop                          #  21    0x27a1e  1      OPC=nop           
  nop                          #  22    0x27a1f  1      OPC=nop           
                                                                          
.size AddVariable, .-AddVariable

