  .text
  .globl __register_frame_info_table
  .type __register_frame_info_table, @function

#! file-offset 0x5df00
#! rip-offset  0x5df00
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  
.__register_frame_info_table:              #        0x5df00  0      
  movl %edi, %edi                          #  1     0x5df00  2      
  movl %esi, %esi                          #  2     0x5df02  2      
  xorl %ecx, %ecx                          #  3     0x5df04  2      
  xorl %edx, %edx                          #  4     0x5df06  2      
  jmpq .__register_frame_info_table_bases  #  5     0x5df08  5      
  nop                                      #  6     0x5df0d  1      
  nop                                      #  7     0x5df0e  1      
                                                                    
.size __register_frame_info_table, .-__register_frame_info_table

