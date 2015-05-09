  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x3fd40
#! rip-offset  0x3fd40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_getdetachstate:  #        0x3fd40  0      
  movl %edi, %edi              #  1     0x3fd40  2      
  movl $0x16, %eax             #  2     0x3fd42  5      
  testq %rdi, %rdi             #  3     0x3fd47  3      
  je .L_3fd60                  #  4     0x3fd4a  6      
  movl %edi, %edi              #  5     0x3fd50  2      
  movl (%r15,%rdi,1), %eax     #  6     0x3fd52  4      
  nop                          #  7     0x3fd56  1      
.L_3fd60:                      #        0x3fd57  0      
  popq %r11                    #  8     0x3fd57  3      
  andl $0xffffffe0, %r11d      #  9     0x3fd5a  7      
  addq %r15, %r11              #  10    0x3fd61  3      
  jmpq %r11                    #  11    0x3fd64  3      
  nop                          #  12    0x3fd67  1      
  nop                          #  13    0x3fd68  1      
                                                        
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate

