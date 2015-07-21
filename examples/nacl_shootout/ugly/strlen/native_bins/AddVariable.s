  .text
  .globl AddVariable
  .type AddVariable, @function

#! file-offset 0x5f5c
#! rip-offset  0x405f5c
#! capacity    15 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.AddVariable:                #        0x405f5c  0      OPC=0     
  movq %rdi, %rsi            #  1     0x405f5c  3      OPC=1162  
  movq 0x21f4ea(%rip), %rdi  #  2     0x405f5f  7      OPC=1161  
  jmpq .List_Add             #  3     0x405f66  5      OPC=930   
                                                                 
.size AddVariable, .-AddVariable

