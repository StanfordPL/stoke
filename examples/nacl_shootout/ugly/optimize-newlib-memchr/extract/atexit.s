  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x159d00
#! rip-offset  0x119d00
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode            
.atexit:                     #        0x119d00  0      OPC=<label>       
  movl %edi, %esi            #  1     0x119d00  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx            #  2     0x119d02  2      OPC=xorl_r32_r32  
  xorl %edx, %edx            #  3     0x119d04  2      OPC=xorl_r32_r32  
  xorl %edi, %edi            #  4     0x119d06  2      OPC=xorl_r32_r32  
  jmpq .__register_exitproc  #  5     0x119d08  5      OPC=jmpq_label_1  
  nop                        #  6     0x119d0d  1      OPC=nop           
  nop                        #  7     0x119d0e  1      OPC=nop           
  nop                        #  8     0x119d0f  1      OPC=nop           
  nop                        #  9     0x119d10  1      OPC=nop           
  nop                        #  10    0x119d11  1      OPC=nop           
  nop                        #  11    0x119d12  1      OPC=nop           
  nop                        #  12    0x119d13  1      OPC=nop           
  nop                        #  13    0x119d14  1      OPC=nop           
  nop                        #  14    0x119d15  1      OPC=nop           
  nop                        #  15    0x119d16  1      OPC=nop           
  nop                        #  16    0x119d17  1      OPC=nop           
  nop                        #  17    0x119d18  1      OPC=nop           
  nop                        #  18    0x119d19  1      OPC=nop           
  nop                        #  19    0x119d1a  1      OPC=nop           
  nop                        #  20    0x119d1b  1      OPC=nop           
  nop                        #  21    0x119d1c  1      OPC=nop           
  nop                        #  22    0x119d1d  1      OPC=nop           
  nop                        #  23    0x119d1e  1      OPC=nop           
  nop                        #  24    0x119d1f  1      OPC=nop           
                                                                         
.size atexit, .-atexit

