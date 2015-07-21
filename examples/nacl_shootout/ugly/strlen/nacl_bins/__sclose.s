  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x165ce0
#! rip-offset  0x125ce0
#! capacity    32 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.__sclose:                       #        0x125ce0  0      OPC=0     
  movl %esi, %esi                #  1     0x125ce0  2      OPC=1157  
  movl %esi, %esi                #  2     0x125ce2  2      OPC=1157  
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x125ce4  6      OPC=1279  
  jmpq .close                    #  4     0x125cea  5      OPC=930   
  xchgw %ax, %ax                 #  5     0x125cef  2      OPC=3700  
  nop                            #  6     0x125cf1  1      OPC=1343  
  nop                            #  7     0x125cf2  1      OPC=1343  
  nop                            #  8     0x125cf3  1      OPC=1343  
  nop                            #  9     0x125cf4  1      OPC=1343  
  nop                            #  10    0x125cf5  1      OPC=1343  
  nop                            #  11    0x125cf6  1      OPC=1343  
  nop                            #  12    0x125cf7  1      OPC=1343  
  nop                            #  13    0x125cf8  1      OPC=1343  
  nop                            #  14    0x125cf9  1      OPC=1343  
  nop                            #  15    0x125cfa  1      OPC=1343  
  nop                            #  16    0x125cfb  1      OPC=1343  
  nop                            #  17    0x125cfc  1      OPC=1343  
  nop                            #  18    0x125cfd  1      OPC=1343  
  nop                            #  19    0x125cfe  1      OPC=1343  
  nop                            #  20    0x125cff  1      OPC=1343  
                                                                     
.size __sclose, .-__sclose

