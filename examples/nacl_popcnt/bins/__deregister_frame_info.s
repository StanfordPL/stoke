  .text
  .globl __deregister_frame_info
  .type __deregister_frame_info, @function

#! file-offset 0x603e0
#! rip-offset  0x603e0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  
.__deregister_frame_info:              #        0x603e0  0      
  movl %edi, %edi                      #  1     0x603e0  2      
  jmpq .__deregister_frame_info_bases  #  2     0x603e2  5      
  nop                                  #  3     0x603e7  1      
  nop                                  #  4     0x603e8  1      
                                                                
.size __deregister_frame_info, .-__deregister_frame_info

