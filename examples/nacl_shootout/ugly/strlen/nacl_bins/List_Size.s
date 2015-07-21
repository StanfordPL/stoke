  .text
  .globl List_Size
  .type List_Size, @function

#! file-offset 0x66020
#! rip-offset  0x26020
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.List_Size:                    #        0x26020  0      OPC=0     
  movl %edi, %edi              #  1     0x26020  2      OPC=1157  
  movl %edi, %edi              #  2     0x26022  2      OPC=1157  
  movl 0xc(%r15,%rdi,1), %eax  #  3     0x26024  5      OPC=1156  
  addl $0x1, %eax              #  4     0x26029  3      OPC=65    
  movl %edi, %edi              #  5     0x2602c  2      OPC=1157  
  subl 0x8(%r15,%rdi,1), %eax  #  6     0x2602e  5      OPC=2385  
  popq %r11                    #  7     0x26033  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  8     0x26035  7      OPC=131   
  nop                          #  9     0x2603c  1      OPC=1343  
  nop                          #  10    0x2603d  1      OPC=1343  
  nop                          #  11    0x2603e  1      OPC=1343  
  nop                          #  12    0x2603f  1      OPC=1343  
  addq %r15, %r11              #  13    0x26040  3      OPC=72    
  jmpq %r11                    #  14    0x26043  3      OPC=928   
  nop                          #  15    0x26046  1      OPC=1343  
                                                                  
.size List_Size, .-List_Size

