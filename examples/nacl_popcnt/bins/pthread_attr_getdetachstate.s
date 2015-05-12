  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x3fd60
#! rip-offset  0x3fd60
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_getdetachstate:  #        0x3fd60  0      
  movl %edi, %edi              #  1     0x3fd60  2      
  movl $0x16, %eax             #  2     0x3fd62  5      
  testq %rdi, %rdi             #  3     0x3fd67  3      
  je .L_3fd80                  #  4     0x3fd6a  6      
  movl %edi, %edi              #  5     0x3fd70  2      
  movl (%r15,%rdi,1), %eax     #  6     0x3fd72  4      
  nop                          #  7     0x3fd76  1      
.L_3fd80:                      #        0x3fd77  0      
  popq %r11                    #  8     0x3fd77  3      
  andl $0xffffffe0, %r11d      #  9     0x3fd7a  7      
  addq %r15, %r11              #  10    0x3fd81  3      
  jmpq %r11                    #  11    0x3fd84  3      
  nop                          #  12    0x3fd87  1      
  nop                          #  13    0x3fd88  1      
                                                        
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate

