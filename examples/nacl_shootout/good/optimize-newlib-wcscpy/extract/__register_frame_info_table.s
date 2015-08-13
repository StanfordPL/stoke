  .text
  .globl __register_frame_info_table
  .type __register_frame_info_table, @function

#! file-offset 0x14ea60
#! rip-offset  0x10ea60
#! capacity    32 bytes

# Text                                     #  Line  RIP       Bytes  Opcode            
.__register_frame_info_table:              #        0x10ea60  0      OPC=<label>       
  movl %edi, %edi                          #  1     0x10ea60  2      OPC=movl_r32_r32  
  movl %esi, %esi                          #  2     0x10ea62  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx                          #  3     0x10ea64  2      OPC=xorl_r32_r32  
  xorl %edx, %edx                          #  4     0x10ea66  2      OPC=xorl_r32_r32  
  jmpq .__register_frame_info_table_bases  #  5     0x10ea68  5      OPC=jmpq_label_1  
  nop                                      #  6     0x10ea6d  1      OPC=nop           
  nop                                      #  7     0x10ea6e  1      OPC=nop           
  nop                                      #  8     0x10ea6f  1      OPC=nop           
  nop                                      #  9     0x10ea70  1      OPC=nop           
  nop                                      #  10    0x10ea71  1      OPC=nop           
  nop                                      #  11    0x10ea72  1      OPC=nop           
  nop                                      #  12    0x10ea73  1      OPC=nop           
  nop                                      #  13    0x10ea74  1      OPC=nop           
  nop                                      #  14    0x10ea75  1      OPC=nop           
  nop                                      #  15    0x10ea76  1      OPC=nop           
  nop                                      #  16    0x10ea77  1      OPC=nop           
  nop                                      #  17    0x10ea78  1      OPC=nop           
  nop                                      #  18    0x10ea79  1      OPC=nop           
  nop                                      #  19    0x10ea7a  1      OPC=nop           
  nop                                      #  20    0x10ea7b  1      OPC=nop           
  nop                                      #  21    0x10ea7c  1      OPC=nop           
  nop                                      #  22    0x10ea7d  1      OPC=nop           
  nop                                      #  23    0x10ea7e  1      OPC=nop           
  nop                                      #  24    0x10ea7f  1      OPC=nop           
                                                                                       
.size __register_frame_info_table, .-__register_frame_info_table

