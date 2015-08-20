  .text
  .globl __register_frame_info
  .type __register_frame_info, @function

#! file-offset 0x14ecc0
#! rip-offset  0x10ecc0
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode            
.__register_frame_info:              #        0x10ecc0  0      OPC=<label>       
  movl %edi, %edi                    #  1     0x10ecc0  2      OPC=movl_r32_r32  
  movl %esi, %esi                    #  2     0x10ecc2  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx                    #  3     0x10ecc4  2      OPC=xorl_r32_r32  
  xorl %edx, %edx                    #  4     0x10ecc6  2      OPC=xorl_r32_r32  
  jmpq .__register_frame_info_bases  #  5     0x10ecc8  5      OPC=jmpq_label_1  
  nop                                #  6     0x10eccd  1      OPC=nop           
  nop                                #  7     0x10ecce  1      OPC=nop           
  nop                                #  8     0x10eccf  1      OPC=nop           
  nop                                #  9     0x10ecd0  1      OPC=nop           
  nop                                #  10    0x10ecd1  1      OPC=nop           
  nop                                #  11    0x10ecd2  1      OPC=nop           
  nop                                #  12    0x10ecd3  1      OPC=nop           
  nop                                #  13    0x10ecd4  1      OPC=nop           
  nop                                #  14    0x10ecd5  1      OPC=nop           
  nop                                #  15    0x10ecd6  1      OPC=nop           
  nop                                #  16    0x10ecd7  1      OPC=nop           
  nop                                #  17    0x10ecd8  1      OPC=nop           
  nop                                #  18    0x10ecd9  1      OPC=nop           
  nop                                #  19    0x10ecda  1      OPC=nop           
  nop                                #  20    0x10ecdb  1      OPC=nop           
  nop                                #  21    0x10ecdc  1      OPC=nop           
  nop                                #  22    0x10ecdd  1      OPC=nop           
  nop                                #  23    0x10ecde  1      OPC=nop           
  nop                                #  24    0x10ecdf  1      OPC=nop           
                                                                                 
.size __register_frame_info, .-__register_frame_info

