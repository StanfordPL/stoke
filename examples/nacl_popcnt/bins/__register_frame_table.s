  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x5f1c0
#! rip-offset  0x5f1c0
#! capacity    64 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_table:             #        0x5f1c0  0      
  pushq %rbx                         #  1     0x5f1c0  2      
  movl %edi, %ebx                    #  2     0x5f1c2  2      
  movl $0x18, %edi                   #  3     0x5f1c4  5      
  nop                                #  4     0x5f1c9  1      
  nop                                #  5     0x5f1ca  1      
  callq .malloc                      #  6     0x5f1cb  5      
  movl %ebx, %edi                    #  7     0x5f1d0  2      
  movl %eax, %esi                    #  8     0x5f1d2  2      
  popq %rbx                          #  9     0x5f1d4  2      
  jmpq .__register_frame_info_table  #  10    0x5f1d6  5      
  nop                                #  11    0x5f1db  1      
  nop                                #  12    0x5f1dc  1      
                                                              
.size __register_frame_table, .-__register_frame_table

