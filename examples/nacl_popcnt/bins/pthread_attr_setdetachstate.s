  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x3fda0
#! rip-offset  0x3fda0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_setdetachstate:  #        0x3fda0  0      
  movl %edi, %edi              #  1     0x3fda0  2      
  movl $0x16, %eax             #  2     0x3fda2  5      
  testq %rdi, %rdi             #  3     0x3fda7  3      
  je .L_3fdc0                  #  4     0x3fdaa  6      
  movl %edi, %edi              #  5     0x3fdb0  2      
  movl %esi, (%r15,%rdi,1)     #  6     0x3fdb2  4      
  xorb %al, %al                #  7     0x3fdb6  2      
  nop                          #  8     0x3fdb8  1      
.L_3fdc0:                      #        0x3fdb9  0      
  popq %r11                    #  9     0x3fdb9  3      
  andl $0xffffffe0, %r11d      #  10    0x3fdbc  7      
  addq %r15, %r11              #  11    0x3fdc3  3      
  jmpq %r11                    #  12    0x3fdc6  3      
  nop                          #  13    0x3fdc9  1      
  nop                          #  14    0x3fdca  1      
                                                        
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate

