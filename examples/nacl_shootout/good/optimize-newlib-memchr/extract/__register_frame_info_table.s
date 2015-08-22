  .text
  .globl __register_frame_info_table
  .type __register_frame_info_table, @function

#! file-offset 0x14f480
#! rip-offset  0x10f480
#! capacity    32 bytes

# Text                                     #  Line  RIP       Bytes  Opcode            
.__register_frame_info_table:              #        0x10f480  0      OPC=<label>       
  movl %edi, %edi                          #  1     0x10f480  2      OPC=movl_r32_r32  
  movl %esi, %esi                          #  2     0x10f482  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx                          #  3     0x10f484  2      OPC=xorl_r32_r32  
  xorl %edx, %edx                          #  4     0x10f486  2      OPC=xorl_r32_r32  
  jmpq .__register_frame_info_table_bases  #  5     0x10f488  5      OPC=jmpq_label_1  
  nop                                      #  6     0x10f48d  1      OPC=nop           
  nop                                      #  7     0x10f48e  1      OPC=nop           
  nop                                      #  8     0x10f48f  1      OPC=nop           
  nop                                      #  9     0x10f490  1      OPC=nop           
  nop                                      #  10    0x10f491  1      OPC=nop           
  nop                                      #  11    0x10f492  1      OPC=nop           
  nop                                      #  12    0x10f493  1      OPC=nop           
  nop                                      #  13    0x10f494  1      OPC=nop           
  nop                                      #  14    0x10f495  1      OPC=nop           
  nop                                      #  15    0x10f496  1      OPC=nop           
  nop                                      #  16    0x10f497  1      OPC=nop           
  nop                                      #  17    0x10f498  1      OPC=nop           
  nop                                      #  18    0x10f499  1      OPC=nop           
  nop                                      #  19    0x10f49a  1      OPC=nop           
  nop                                      #  20    0x10f49b  1      OPC=nop           
  nop                                      #  21    0x10f49c  1      OPC=nop           
  nop                                      #  22    0x10f49d  1      OPC=nop           
  nop                                      #  23    0x10f49e  1      OPC=nop           
  nop                                      #  24    0x10f49f  1      OPC=nop           
                                                                                       
.size __register_frame_info_table, .-__register_frame_info_table

