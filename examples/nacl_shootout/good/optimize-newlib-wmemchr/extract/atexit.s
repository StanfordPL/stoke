  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x1595e0
#! rip-offset  0x1195e0
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode            
.atexit:                     #        0x1195e0  0      OPC=<label>       
  movl %edi, %esi            #  1     0x1195e0  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx            #  2     0x1195e2  2      OPC=xorl_r32_r32  
  xorl %edx, %edx            #  3     0x1195e4  2      OPC=xorl_r32_r32  
  xorl %edi, %edi            #  4     0x1195e6  2      OPC=xorl_r32_r32  
  jmpq .__register_exitproc  #  5     0x1195e8  5      OPC=jmpq_label_1  
  nop                        #  6     0x1195ed  1      OPC=nop           
  nop                        #  7     0x1195ee  1      OPC=nop           
  nop                        #  8     0x1195ef  1      OPC=nop           
  nop                        #  9     0x1195f0  1      OPC=nop           
  nop                        #  10    0x1195f1  1      OPC=nop           
  nop                        #  11    0x1195f2  1      OPC=nop           
  nop                        #  12    0x1195f3  1      OPC=nop           
  nop                        #  13    0x1195f4  1      OPC=nop           
  nop                        #  14    0x1195f5  1      OPC=nop           
  nop                        #  15    0x1195f6  1      OPC=nop           
  nop                        #  16    0x1195f7  1      OPC=nop           
  nop                        #  17    0x1195f8  1      OPC=nop           
  nop                        #  18    0x1195f9  1      OPC=nop           
  nop                        #  19    0x1195fa  1      OPC=nop           
  nop                        #  20    0x1195fb  1      OPC=nop           
  nop                        #  21    0x1195fc  1      OPC=nop           
  nop                        #  22    0x1195fd  1      OPC=nop           
  nop                        #  23    0x1195fe  1      OPC=nop           
  nop                        #  24    0x1195ff  1      OPC=nop           
                                                                         
.size atexit, .-atexit

