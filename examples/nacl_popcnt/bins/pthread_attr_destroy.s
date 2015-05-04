  .text
  .globl pthread_attr_destroy
  .type pthread_attr_destroy, @function

#! file-offset 0x3fd80
#! rip-offset  0x3fd80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_attr_destroy:     #        0x3fd80  0      
  popq %r11                #  1     0x3fd80  3      
  movl %edi, %edi          #  2     0x3fd83  2      
  cmpq $0x1, %rdi          #  3     0x3fd85  4      
  sbbl %eax, %eax          #  4     0x3fd89  2      
  andl $0x16, %eax         #  5     0x3fd8b  3      
  andl $0xffffffe0, %r11d  #  6     0x3fd8e  7      
  addq %r15, %r11          #  7     0x3fd95  3      
  jmpq %r11                #  8     0x3fd98  3      
  nop                      #  9     0x3fd9b  1      
                                                    
.size pthread_attr_destroy, .-pthread_attr_destroy

