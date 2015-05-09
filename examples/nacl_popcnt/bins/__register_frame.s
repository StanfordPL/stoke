  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x5f160
#! rip-offset  0x5f160
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.__register_frame:             #        0x5f160  0      
  pushq %rbx                   #  1     0x5f160  2      
  movl %edi, %ebx              #  2     0x5f162  2      
  movl %ebx, %ebx              #  3     0x5f164  2      
  movl (%r15,%rbx,1), %eax     #  4     0x5f166  4      
  testl %eax, %eax             #  5     0x5f16a  2      
  jne .L_5f180                 #  6     0x5f16c  6      
  popq %rbx                    #  7     0x5f172  2      
  popq %r11                    #  8     0x5f174  3      
  andl $0xffffffe0, %r11d      #  9     0x5f177  7      
  addq %r15, %r11              #  10    0x5f17e  3      
  jmpq %r11                    #  11    0x5f181  3      
  nop                          #  12    0x5f184  1      
.L_5f180:                      #        0x5f185  0      
  movl $0x18, %edi             #  13    0x5f185  5      
  nop                          #  14    0x5f18a  1      
  nop                          #  15    0x5f18b  1      
  callq .malloc                #  16    0x5f18c  5      
  movl %ebx, %edi              #  17    0x5f191  2      
  movl %eax, %esi              #  18    0x5f193  2      
  popq %rbx                    #  19    0x5f195  2      
  jmpq .__register_frame_info  #  20    0x5f197  5      
  nop                          #  21    0x5f19c  1      
  nop                          #  22    0x5f19d  1      
                                                        
.size __register_frame, .-__register_frame

