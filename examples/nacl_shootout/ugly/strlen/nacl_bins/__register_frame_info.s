  .text
  .globl __register_frame_info
  .type __register_frame_info, @function

#! file-offset 0x14e480
#! rip-offset  0x10e480
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode    
.__register_frame_info:              #        0x10e480  0      OPC=0     
  movl %edi, %edi                    #  1     0x10e480  2      OPC=1157  
  movl %esi, %esi                    #  2     0x10e482  2      OPC=1157  
  xorl %ecx, %ecx                    #  3     0x10e484  2      OPC=3758  
  xorl %edx, %edx                    #  4     0x10e486  2      OPC=3758  
  jmpq .__register_frame_info_bases  #  5     0x10e488  5      OPC=930   
  nop                                #  6     0x10e48d  1      OPC=1343  
  nop                                #  7     0x10e48e  1      OPC=1343  
  nop                                #  8     0x10e48f  1      OPC=1343  
  nop                                #  9     0x10e490  1      OPC=1343  
  nop                                #  10    0x10e491  1      OPC=1343  
  nop                                #  11    0x10e492  1      OPC=1343  
  nop                                #  12    0x10e493  1      OPC=1343  
  nop                                #  13    0x10e494  1      OPC=1343  
  nop                                #  14    0x10e495  1      OPC=1343  
  nop                                #  15    0x10e496  1      OPC=1343  
  nop                                #  16    0x10e497  1      OPC=1343  
  nop                                #  17    0x10e498  1      OPC=1343  
  nop                                #  18    0x10e499  1      OPC=1343  
  nop                                #  19    0x10e49a  1      OPC=1343  
  nop                                #  20    0x10e49b  1      OPC=1343  
  nop                                #  21    0x10e49c  1      OPC=1343  
  nop                                #  22    0x10e49d  1      OPC=1343  
  nop                                #  23    0x10e49e  1      OPC=1343  
  nop                                #  24    0x10e49f  1      OPC=1343  
                                                                         
.size __register_frame_info, .-__register_frame_info

