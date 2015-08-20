  .text
  .globl AddVariable
  .type AddVariable, @function

#! file-offset 0x674a0
#! rip-offset  0x274a0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode            
.AddVariable:                  #        0x274a0  0      OPC=<label>       
  movl %edi, %esi              #  1     0x274a0  2      OPC=movl_r32_r32  
  movl 0x10049c98(%rip), %edi  #  2     0x274a2  6      OPC=movl_r32_m32  
  jmpq .List_Add               #  3     0x274a8  5      OPC=jmpq_label_1  
  nop                          #  4     0x274ad  1      OPC=nop           
  nop                          #  5     0x274ae  1      OPC=nop           
  nop                          #  6     0x274af  1      OPC=nop           
  nop                          #  7     0x274b0  1      OPC=nop           
  nop                          #  8     0x274b1  1      OPC=nop           
  nop                          #  9     0x274b2  1      OPC=nop           
  nop                          #  10    0x274b3  1      OPC=nop           
  nop                          #  11    0x274b4  1      OPC=nop           
  nop                          #  12    0x274b5  1      OPC=nop           
  nop                          #  13    0x274b6  1      OPC=nop           
  nop                          #  14    0x274b7  1      OPC=nop           
  nop                          #  15    0x274b8  1      OPC=nop           
  nop                          #  16    0x274b9  1      OPC=nop           
  nop                          #  17    0x274ba  1      OPC=nop           
  nop                          #  18    0x274bb  1      OPC=nop           
  nop                          #  19    0x274bc  1      OPC=nop           
  nop                          #  20    0x274bd  1      OPC=nop           
  nop                          #  21    0x274be  1      OPC=nop           
  nop                          #  22    0x274bf  1      OPC=nop           
                                                                          
.size AddVariable, .-AddVariable

