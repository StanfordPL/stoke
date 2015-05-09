  .text
  .globl __register_frame_info
  .type __register_frame_info, @function

#! file-offset 0x5de40
#! rip-offset  0x5de40
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_info:              #        0x5de40  0      
  movl %edi, %edi                    #  1     0x5de40  2      
  movl %esi, %esi                    #  2     0x5de42  2      
  xorl %ecx, %ecx                    #  3     0x5de44  2      
  xorl %edx, %edx                    #  4     0x5de46  2      
  jmpq .__register_frame_info_bases  #  5     0x5de48  5      
  nop                                #  6     0x5de4d  1      
  nop                                #  7     0x5de4e  1      
                                                              
.size __register_frame_info, .-__register_frame_info

