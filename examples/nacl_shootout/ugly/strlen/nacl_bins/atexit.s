  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x158da0
#! rip-offset  0x118da0
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.atexit:                     #        0x118da0  0      OPC=0     
  movl %edi, %esi            #  1     0x118da0  2      OPC=1157  
  xorl %ecx, %ecx            #  2     0x118da2  2      OPC=3758  
  xorl %edx, %edx            #  3     0x118da4  2      OPC=3758  
  xorl %edi, %edi            #  4     0x118da6  2      OPC=3758  
  jmpq .__register_exitproc  #  5     0x118da8  5      OPC=930   
  nop                        #  6     0x118dad  1      OPC=1343  
  nop                        #  7     0x118dae  1      OPC=1343  
  nop                        #  8     0x118daf  1      OPC=1343  
  nop                        #  9     0x118db0  1      OPC=1343  
  nop                        #  10    0x118db1  1      OPC=1343  
  nop                        #  11    0x118db2  1      OPC=1343  
  nop                        #  12    0x118db3  1      OPC=1343  
  nop                        #  13    0x118db4  1      OPC=1343  
  nop                        #  14    0x118db5  1      OPC=1343  
  nop                        #  15    0x118db6  1      OPC=1343  
  nop                        #  16    0x118db7  1      OPC=1343  
  nop                        #  17    0x118db8  1      OPC=1343  
  nop                        #  18    0x118db9  1      OPC=1343  
  nop                        #  19    0x118dba  1      OPC=1343  
  nop                        #  20    0x118dbb  1      OPC=1343  
  nop                        #  21    0x118dbc  1      OPC=1343  
  nop                        #  22    0x118dbd  1      OPC=1343  
  nop                        #  23    0x118dbe  1      OPC=1343  
  nop                        #  24    0x118dbf  1      OPC=1343  
                                                                 
.size atexit, .-atexit

