  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x5f200
#! rip-offset  0x5f200
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.__register_frame:             #        0x5f200  0      
  pushq %rbx                   #  1     0x5f200  2      
  movl %edi, %ebx              #  2     0x5f202  2      
  movl %ebx, %ebx              #  3     0x5f204  2      
  movl (%r15,%rbx,1), %eax     #  4     0x5f206  4      
  testl %eax, %eax             #  5     0x5f20a  2      
  jne .L_5f220                 #  6     0x5f20c  6      
  popq %rbx                    #  7     0x5f212  2      
  popq %r11                    #  8     0x5f214  3      
  andl $0xffffffe0, %r11d      #  9     0x5f217  7      
  addq %r15, %r11              #  10    0x5f21e  3      
  jmpq %r11                    #  11    0x5f221  3      
  nop                          #  12    0x5f224  1      
.L_5f220:                      #        0x5f225  0      
  movl $0x18, %edi             #  13    0x5f225  5      
  nop                          #  14    0x5f22a  1      
  nop                          #  15    0x5f22b  1      
  callq .malloc                #  16    0x5f22c  5      
  movl %ebx, %edi              #  17    0x5f231  2      
  movl %eax, %esi              #  18    0x5f233  2      
  popq %rbx                    #  19    0x5f235  2      
  jmpq .__register_frame_info  #  20    0x5f237  5      
  nop                          #  21    0x5f23c  1      
  nop                          #  22    0x5f23d  1      
                                                        
.size __register_frame, .-__register_frame

