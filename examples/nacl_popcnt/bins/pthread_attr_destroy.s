  .text
  .globl pthread_attr_destroy
  .type pthread_attr_destroy, @function

#! file-offset 0x3fd00
#! rip-offset  0x3fd00
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_attr_destroy:     #        0x3fd00  0      
  popq %r11                #  1     0x3fd00  3      
  movl %edi, %edi          #  2     0x3fd03  2      
  cmpq $0x1, %rdi          #  3     0x3fd05  4      
  sbbl %eax, %eax          #  4     0x3fd09  2      
  andl $0x16, %eax         #  5     0x3fd0b  3      
  andl $0xffffffe0, %r11d  #  6     0x3fd0e  7      
  addq %r15, %r11          #  7     0x3fd15  3      
  jmpq %r11                #  8     0x3fd18  3      
  nop                      #  9     0x3fd1b  1      
                                                    
.size pthread_attr_destroy, .-pthread_attr_destroy

