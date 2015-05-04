  .text
  .globl __deregister_frame_info
  .type __deregister_frame_info, @function

#! file-offset 0x60460
#! rip-offset  0x60460
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  
.__deregister_frame_info:              #        0x60460  0      
  movl %edi, %edi                      #  1     0x60460  2      
  jmpq .__deregister_frame_info_bases  #  2     0x60462  5      
  nop                                  #  3     0x60467  1      
  nop                                  #  4     0x60468  1      
                                                                
.size __deregister_frame_info, .-__deregister_frame_info

