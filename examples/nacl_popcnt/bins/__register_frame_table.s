  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x5f120
#! rip-offset  0x5f120
#! capacity    64 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_table:             #        0x5f120  0      
  pushq %rbx                         #  1     0x5f120  2      
  movl %edi, %ebx                    #  2     0x5f122  2      
  movl $0x18, %edi                   #  3     0x5f124  5      
  nop                                #  4     0x5f129  1      
  nop                                #  5     0x5f12a  1      
  callq .malloc                      #  6     0x5f12b  5      
  movl %ebx, %edi                    #  7     0x5f130  2      
  movl %eax, %esi                    #  8     0x5f132  2      
  popq %rbx                          #  9     0x5f134  2      
  jmpq .__register_frame_info_table  #  10    0x5f136  5      
  nop                                #  11    0x5f13b  1      
  nop                                #  12    0x5f13c  1      
                                                              
.size __register_frame_table, .-__register_frame_table

