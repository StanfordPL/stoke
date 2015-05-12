  .text
  .globl __register_frame_info
  .type __register_frame_info, @function

#! file-offset 0x5de60
#! rip-offset  0x5de60
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_info:              #        0x5de60  0      
  movl %edi, %edi                    #  1     0x5de60  2      
  movl %esi, %esi                    #  2     0x5de62  2      
  xorl %ecx, %ecx                    #  3     0x5de64  2      
  xorl %edx, %edx                    #  4     0x5de66  2      
  jmpq .__register_frame_info_bases  #  5     0x5de68  5      
  nop                                #  6     0x5de6d  1      
  nop                                #  7     0x5de6e  1      
                                                              
.size __register_frame_info, .-__register_frame_info

