  .text
  .globl __register_frame_info_table
  .type __register_frame_info_table, @function

#! file-offset 0x14ed60
#! rip-offset  0x10ed60
#! capacity    32 bytes

# Text                                     #  Line  RIP       Bytes  Opcode            
.__register_frame_info_table:              #        0x10ed60  0      OPC=<label>       
  movl %edi, %edi                          #  1     0x10ed60  2      OPC=movl_r32_r32  
  movl %esi, %esi                          #  2     0x10ed62  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx                          #  3     0x10ed64  2      OPC=xorl_r32_r32  
  xorl %edx, %edx                          #  4     0x10ed66  2      OPC=xorl_r32_r32  
  jmpq .__register_frame_info_table_bases  #  5     0x10ed68  5      OPC=jmpq_label_1  
  nop                                      #  6     0x10ed6d  1      OPC=nop           
  nop                                      #  7     0x10ed6e  1      OPC=nop           
  nop                                      #  8     0x10ed6f  1      OPC=nop           
  nop                                      #  9     0x10ed70  1      OPC=nop           
  nop                                      #  10    0x10ed71  1      OPC=nop           
  nop                                      #  11    0x10ed72  1      OPC=nop           
  nop                                      #  12    0x10ed73  1      OPC=nop           
  nop                                      #  13    0x10ed74  1      OPC=nop           
  nop                                      #  14    0x10ed75  1      OPC=nop           
  nop                                      #  15    0x10ed76  1      OPC=nop           
  nop                                      #  16    0x10ed77  1      OPC=nop           
  nop                                      #  17    0x10ed78  1      OPC=nop           
  nop                                      #  18    0x10ed79  1      OPC=nop           
  nop                                      #  19    0x10ed7a  1      OPC=nop           
  nop                                      #  20    0x10ed7b  1      OPC=nop           
  nop                                      #  21    0x10ed7c  1      OPC=nop           
  nop                                      #  22    0x10ed7d  1      OPC=nop           
  nop                                      #  23    0x10ed7e  1      OPC=nop           
  nop                                      #  24    0x10ed7f  1      OPC=nop           
                                                                                       
.size __register_frame_info_table, .-__register_frame_info_table

