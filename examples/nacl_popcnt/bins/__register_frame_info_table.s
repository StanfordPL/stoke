  .text
  .globl __register_frame_info_table
  .type __register_frame_info_table, @function

#! file-offset 0x5dee0
#! rip-offset  0x5dee0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  
.__register_frame_info_table:              #        0x5dee0  0      
  movl %edi, %edi                          #  1     0x5dee0  2      
  movl %esi, %esi                          #  2     0x5dee2  2      
  xorl %ecx, %ecx                          #  3     0x5dee4  2      
  xorl %edx, %edx                          #  4     0x5dee6  2      
  jmpq .__register_frame_info_table_bases  #  5     0x5dee8  5      
  nop                                      #  6     0x5deed  1      
  nop                                      #  7     0x5deee  1      
                                                                    
.size __register_frame_info_table, .-__register_frame_info_table

