  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x3fde0
#! rip-offset  0x3fde0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_getdetachstate:  #        0x3fde0  0      
  movl %edi, %edi              #  1     0x3fde0  2      
  movl $0x16, %eax             #  2     0x3fde2  5      
  testq %rdi, %rdi             #  3     0x3fde7  3      
  je .L_3fe00                  #  4     0x3fdea  6      
  movl %edi, %edi              #  5     0x3fdf0  2      
  movl (%r15,%rdi,1), %eax     #  6     0x3fdf2  4      
  nop                          #  7     0x3fdf6  1      
.L_3fe00:                      #        0x3fdf7  0      
  popq %r11                    #  8     0x3fdf7  3      
  andl $0xffffffe0, %r11d      #  9     0x3fdfa  7      
  addq %r15, %r11              #  10    0x3fe01  3      
  jmpq %r11                    #  11    0x3fe04  3      
  nop                          #  12    0x3fe07  1      
  nop                          #  13    0x3fe08  1      
                                                        
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate

