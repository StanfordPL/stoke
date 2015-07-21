  .text
  .globl AddAtStrength
  .type AddAtStrength, @function

#! file-offset 0x687e0
#! rip-offset  0x287e0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.AddAtStrength:                #        0x287e0  0      OPC=0     
  movl %edi, %edi              #  1     0x287e0  2      OPC=1157  
  movl %edi, %edi              #  2     0x287e2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax  #  3     0x287e4  5      OPC=1156  
  cmpl 0x100509c5(%rip), %eax  #  4     0x287e9  6      OPC=471   
  je .L_28800                  #  5     0x287ef  6      OPC=893   
  nop                          #  6     0x287f5  1      OPC=1343  
  nop                          #  7     0x287f6  1      OPC=1343  
  popq %r11                    #  8     0x287f7  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  9     0x287f9  7      OPC=131   
  nop                          #  10    0x28800  1      OPC=1343  
  nop                          #  11    0x28801  1      OPC=1343  
  nop                          #  12    0x28802  1      OPC=1343  
  nop                          #  13    0x28803  1      OPC=1343  
  addq %r15, %r11              #  14    0x28804  3      OPC=72    
  jmpq %r11                    #  15    0x28807  3      OPC=928   
  nop                          #  16    0x2880a  1      OPC=1343  
  nop                          #  17    0x2880b  1      OPC=1343  
  nop                          #  18    0x2880c  1      OPC=1343  
.L_28800:                      #        0x2880d  0      OPC=0     
  jmpq .IncrementalAdd         #  19    0x2880d  5      OPC=930   
  nop                          #  20    0x28812  1      OPC=1343  
  nop                          #  21    0x28813  1      OPC=1343  
  nop                          #  22    0x28814  1      OPC=1343  
  nop                          #  23    0x28815  1      OPC=1343  
  nop                          #  24    0x28816  1      OPC=1343  
  nop                          #  25    0x28817  1      OPC=1343  
  nop                          #  26    0x28818  1      OPC=1343  
  nop                          #  27    0x28819  1      OPC=1343  
  nop                          #  28    0x2881a  1      OPC=1343  
  nop                          #  29    0x2881b  1      OPC=1343  
  nop                          #  30    0x2881c  1      OPC=1343  
  nop                          #  31    0x2881d  1      OPC=1343  
  nop                          #  32    0x2881e  1      OPC=1343  
  nop                          #  33    0x2881f  1      OPC=1343  
  nop                          #  34    0x28820  1      OPC=1343  
  nop                          #  35    0x28821  1      OPC=1343  
  nop                          #  36    0x28822  1      OPC=1343  
  nop                          #  37    0x28823  1      OPC=1343  
  nop                          #  38    0x28824  1      OPC=1343  
  nop                          #  39    0x28825  1      OPC=1343  
  nop                          #  40    0x28826  1      OPC=1343  
  nop                          #  41    0x28827  1      OPC=1343  
  nop                          #  42    0x28828  1      OPC=1343  
  nop                          #  43    0x28829  1      OPC=1343  
  nop                          #  44    0x2882a  1      OPC=1343  
  nop                          #  45    0x2882b  1      OPC=1343  
  nop                          #  46    0x2882c  1      OPC=1343  
                                                                  
.size AddAtStrength, .-AddAtStrength

