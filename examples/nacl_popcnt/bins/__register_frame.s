  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x5f180
#! rip-offset  0x5f180
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.__register_frame:             #        0x5f180  0      
  pushq %rbx                   #  1     0x5f180  2      
  movl %edi, %ebx              #  2     0x5f182  2      
  movl %ebx, %ebx              #  3     0x5f184  2      
  movl (%r15,%rbx,1), %eax     #  4     0x5f186  4      
  testl %eax, %eax             #  5     0x5f18a  2      
  jne .L_5f1a0                 #  6     0x5f18c  6      
  popq %rbx                    #  7     0x5f192  2      
  popq %r11                    #  8     0x5f194  3      
  andl $0xffffffe0, %r11d      #  9     0x5f197  7      
  addq %r15, %r11              #  10    0x5f19e  3      
  jmpq %r11                    #  11    0x5f1a1  3      
  nop                          #  12    0x5f1a4  1      
.L_5f1a0:                      #        0x5f1a5  0      
  movl $0x18, %edi             #  13    0x5f1a5  5      
  nop                          #  14    0x5f1aa  1      
  nop                          #  15    0x5f1ab  1      
  callq .malloc                #  16    0x5f1ac  5      
  movl %ebx, %edi              #  17    0x5f1b1  2      
  movl %eax, %esi              #  18    0x5f1b3  2      
  popq %rbx                    #  19    0x5f1b5  2      
  jmpq .__register_frame_info  #  20    0x5f1b7  5      
  nop                          #  21    0x5f1bc  1      
  nop                          #  22    0x5f1bd  1      
                                                        
.size __register_frame, .-__register_frame

