  .text
  .globl __register_frame_info
  .type __register_frame_info, @function

#! file-offset 0x14f3e0
#! rip-offset  0x10f3e0
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode            
.__register_frame_info:              #        0x10f3e0  0      OPC=<label>       
  movl %edi, %edi                    #  1     0x10f3e0  2      OPC=movl_r32_r32  
  movl %esi, %esi                    #  2     0x10f3e2  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx                    #  3     0x10f3e4  2      OPC=xorl_r32_r32  
  xorl %edx, %edx                    #  4     0x10f3e6  2      OPC=xorl_r32_r32  
  jmpq .__register_frame_info_bases  #  5     0x10f3e8  5      OPC=jmpq_label_1  
  nop                                #  6     0x10f3ed  1      OPC=nop           
  nop                                #  7     0x10f3ee  1      OPC=nop           
  nop                                #  8     0x10f3ef  1      OPC=nop           
  nop                                #  9     0x10f3f0  1      OPC=nop           
  nop                                #  10    0x10f3f1  1      OPC=nop           
  nop                                #  11    0x10f3f2  1      OPC=nop           
  nop                                #  12    0x10f3f3  1      OPC=nop           
  nop                                #  13    0x10f3f4  1      OPC=nop           
  nop                                #  14    0x10f3f5  1      OPC=nop           
  nop                                #  15    0x10f3f6  1      OPC=nop           
  nop                                #  16    0x10f3f7  1      OPC=nop           
  nop                                #  17    0x10f3f8  1      OPC=nop           
  nop                                #  18    0x10f3f9  1      OPC=nop           
  nop                                #  19    0x10f3fa  1      OPC=nop           
  nop                                #  20    0x10f3fb  1      OPC=nop           
  nop                                #  21    0x10f3fc  1      OPC=nop           
  nop                                #  22    0x10f3fd  1      OPC=nop           
  nop                                #  23    0x10f3fe  1      OPC=nop           
  nop                                #  24    0x10f3ff  1      OPC=nop           
                                                                                 
.size __register_frame_info, .-__register_frame_info

