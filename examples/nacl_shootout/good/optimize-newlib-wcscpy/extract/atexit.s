  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x1592e0
#! rip-offset  0x1192e0
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode            
.atexit:                     #        0x1192e0  0      OPC=<label>       
  movl %edi, %esi            #  1     0x1192e0  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx            #  2     0x1192e2  2      OPC=xorl_r32_r32  
  xorl %edx, %edx            #  3     0x1192e4  2      OPC=xorl_r32_r32  
  xorl %edi, %edi            #  4     0x1192e6  2      OPC=xorl_r32_r32  
  jmpq .__register_exitproc  #  5     0x1192e8  5      OPC=jmpq_label_1  
  nop                        #  6     0x1192ed  1      OPC=nop           
  nop                        #  7     0x1192ee  1      OPC=nop           
  nop                        #  8     0x1192ef  1      OPC=nop           
  nop                        #  9     0x1192f0  1      OPC=nop           
  nop                        #  10    0x1192f1  1      OPC=nop           
  nop                        #  11    0x1192f2  1      OPC=nop           
  nop                        #  12    0x1192f3  1      OPC=nop           
  nop                        #  13    0x1192f4  1      OPC=nop           
  nop                        #  14    0x1192f5  1      OPC=nop           
  nop                        #  15    0x1192f6  1      OPC=nop           
  nop                        #  16    0x1192f7  1      OPC=nop           
  nop                        #  17    0x1192f8  1      OPC=nop           
  nop                        #  18    0x1192f9  1      OPC=nop           
  nop                        #  19    0x1192fa  1      OPC=nop           
  nop                        #  20    0x1192fb  1      OPC=nop           
  nop                        #  21    0x1192fc  1      OPC=nop           
  nop                        #  22    0x1192fd  1      OPC=nop           
  nop                        #  23    0x1192fe  1      OPC=nop           
  nop                        #  24    0x1192ff  1      OPC=nop           
                                                                         
.size atexit, .-atexit

