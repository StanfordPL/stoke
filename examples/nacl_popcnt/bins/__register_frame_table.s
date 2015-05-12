  .text
  .globl __register_frame_table
  .type __register_frame_table, @function

#! file-offset 0x5f140
#! rip-offset  0x5f140
#! capacity    64 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_table:             #        0x5f140  0      
  pushq %rbx                         #  1     0x5f140  2      
  movl %edi, %ebx                    #  2     0x5f142  2      
  movl $0x18, %edi                   #  3     0x5f144  5      
  nop                                #  4     0x5f149  1      
  nop                                #  5     0x5f14a  1      
  callq .malloc                      #  6     0x5f14b  5      
  movl %ebx, %edi                    #  7     0x5f150  2      
  movl %eax, %esi                    #  8     0x5f152  2      
  popq %rbx                          #  9     0x5f154  2      
  jmpq .__register_frame_info_table  #  10    0x5f156  5      
  nop                                #  11    0x5f15b  1      
  nop                                #  12    0x5f15c  1      
                                                              
.size __register_frame_table, .-__register_frame_table

