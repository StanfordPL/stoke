  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x3fd20
#! rip-offset  0x3fd20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_setdetachstate:  #        0x3fd20  0      
  movl %edi, %edi              #  1     0x3fd20  2      
  movl $0x16, %eax             #  2     0x3fd22  5      
  testq %rdi, %rdi             #  3     0x3fd27  3      
  je .L_3fd40                  #  4     0x3fd2a  6      
  movl %edi, %edi              #  5     0x3fd30  2      
  movl %esi, (%r15,%rdi,1)     #  6     0x3fd32  4      
  xorb %al, %al                #  7     0x3fd36  2      
  nop                          #  8     0x3fd38  1      
.L_3fd40:                      #        0x3fd39  0      
  popq %r11                    #  9     0x3fd39  3      
  andl $0xffffffe0, %r11d      #  10    0x3fd3c  7      
  addq %r15, %r11              #  11    0x3fd43  3      
  jmpq %r11                    #  12    0x3fd46  3      
  nop                          #  13    0x3fd49  1      
  nop                          #  14    0x3fd4a  1      
                                                        
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate

