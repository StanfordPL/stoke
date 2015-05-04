  .text
  .globl __register_frame_info_table
  .type __register_frame_info_table, @function

#! file-offset 0x5df80
#! rip-offset  0x5df80
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  
.__register_frame_info_table:              #        0x5df80  0      
  movl %edi, %edi                          #  1     0x5df80  2      
  movl %esi, %esi                          #  2     0x5df82  2      
  xorl %ecx, %ecx                          #  3     0x5df84  2      
  xorl %edx, %edx                          #  4     0x5df86  2      
  jmpq .__register_frame_info_table_bases  #  5     0x5df88  5      
  nop                                      #  6     0x5df8d  1      
  nop                                      #  7     0x5df8e  1      
                                                                    
.size __register_frame_info_table, .-__register_frame_info_table

