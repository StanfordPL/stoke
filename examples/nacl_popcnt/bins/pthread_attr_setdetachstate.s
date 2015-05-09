  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x3fd00
#! rip-offset  0x3fd00
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_setdetachstate:  #        0x3fd00  0      
  movl %edi, %edi              #  1     0x3fd00  2      
  movl $0x16, %eax             #  2     0x3fd02  5      
  testq %rdi, %rdi             #  3     0x3fd07  3      
  je .L_3fd20                  #  4     0x3fd0a  6      
  movl %edi, %edi              #  5     0x3fd10  2      
  movl %esi, (%r15,%rdi,1)     #  6     0x3fd12  4      
  xorb %al, %al                #  7     0x3fd16  2      
  nop                          #  8     0x3fd18  1      
.L_3fd20:                      #        0x3fd19  0      
  popq %r11                    #  9     0x3fd19  3      
  andl $0xffffffe0, %r11d      #  10    0x3fd1c  7      
  addq %r15, %r11              #  11    0x3fd23  3      
  jmpq %r11                    #  12    0x3fd26  3      
  nop                          #  13    0x3fd29  1      
  nop                          #  14    0x3fd2a  1      
                                                        
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate

