  .text
  .globl pthread_attr_destroy
  .type pthread_attr_destroy, @function

#! file-offset 0x3fce0
#! rip-offset  0x3fce0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_attr_destroy:     #        0x3fce0  0      
  popq %r11                #  1     0x3fce0  3      
  movl %edi, %edi          #  2     0x3fce3  2      
  cmpq $0x1, %rdi          #  3     0x3fce5  4      
  sbbl %eax, %eax          #  4     0x3fce9  2      
  andl $0x16, %eax         #  5     0x3fceb  3      
  andl $0xffffffe0, %r11d  #  6     0x3fcee  7      
  addq %r15, %r11          #  7     0x3fcf5  3      
  jmpq %r11                #  8     0x3fcf8  3      
  nop                      #  9     0x3fcfb  1      
                                                    
.size pthread_attr_destroy, .-pthread_attr_destroy

