  .text
  .globl __register_frame_info
  .type __register_frame_info, @function

#! file-offset 0x14e9c0
#! rip-offset  0x10e9c0
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode            
.__register_frame_info:              #        0x10e9c0  0      OPC=<label>       
  movl %edi, %edi                    #  1     0x10e9c0  2      OPC=movl_r32_r32  
  movl %esi, %esi                    #  2     0x10e9c2  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx                    #  3     0x10e9c4  2      OPC=xorl_r32_r32  
  xorl %edx, %edx                    #  4     0x10e9c6  2      OPC=xorl_r32_r32  
  jmpq .__register_frame_info_bases  #  5     0x10e9c8  5      OPC=jmpq_label_1  
  nop                                #  6     0x10e9cd  1      OPC=nop           
  nop                                #  7     0x10e9ce  1      OPC=nop           
  nop                                #  8     0x10e9cf  1      OPC=nop           
  nop                                #  9     0x10e9d0  1      OPC=nop           
  nop                                #  10    0x10e9d1  1      OPC=nop           
  nop                                #  11    0x10e9d2  1      OPC=nop           
  nop                                #  12    0x10e9d3  1      OPC=nop           
  nop                                #  13    0x10e9d4  1      OPC=nop           
  nop                                #  14    0x10e9d5  1      OPC=nop           
  nop                                #  15    0x10e9d6  1      OPC=nop           
  nop                                #  16    0x10e9d7  1      OPC=nop           
  nop                                #  17    0x10e9d8  1      OPC=nop           
  nop                                #  18    0x10e9d9  1      OPC=nop           
  nop                                #  19    0x10e9da  1      OPC=nop           
  nop                                #  20    0x10e9db  1      OPC=nop           
  nop                                #  21    0x10e9dc  1      OPC=nop           
  nop                                #  22    0x10e9dd  1      OPC=nop           
  nop                                #  23    0x10e9de  1      OPC=nop           
  nop                                #  24    0x10e9df  1      OPC=nop           
                                                                                 
.size __register_frame_info, .-__register_frame_info

