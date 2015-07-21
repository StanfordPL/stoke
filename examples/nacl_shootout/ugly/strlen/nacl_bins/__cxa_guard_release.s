  .text
  .globl __cxa_guard_release
  .type __cxa_guard_release, @function

#! file-offset 0x121980
#! rip-offset  0xe1980
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__cxa_guard_release:          #        0xe1980  0      OPC=0     
  movl %edi, %edi              #  1     0xe1980  2      OPC=1157  
  movl %edi, %edi              #  2     0xe1982  2      OPC=1157  
  movb $0x0, 0x1(%r15,%rdi,1)  #  3     0xe1984  6      OPC=1140  
  popq %r11                    #  4     0xe198a  2      OPC=1694  
  movl %edi, %edi              #  5     0xe198c  2      OPC=1157  
  movb $0x1, (%r15,%rdi,1)     #  6     0xe198e  5      OPC=1140  
  andl $0xffffffe0, %r11d      #  7     0xe1993  7      OPC=131   
  nop                          #  8     0xe199a  1      OPC=1343  
  nop                          #  9     0xe199b  1      OPC=1343  
  nop                          #  10    0xe199c  1      OPC=1343  
  nop                          #  11    0xe199d  1      OPC=1343  
  addq %r15, %r11              #  12    0xe199e  3      OPC=72    
  jmpq %r11                    #  13    0xe19a1  3      OPC=928   
  nop                          #  14    0xe19a4  1      OPC=1343  
  nop                          #  15    0xe19a5  1      OPC=1343  
  nop                          #  16    0xe19a6  1      OPC=1343  
                                                                  
.size __cxa_guard_release, .-__cxa_guard_release

