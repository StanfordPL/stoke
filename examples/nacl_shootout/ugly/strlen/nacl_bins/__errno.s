  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x158f80
#! rip-offset  0x118f80
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.__errno:                   #        0x118f80  0      OPC=0     
  nop                       #  1     0x118f80  1      OPC=1343  
  nop                       #  2     0x118f81  1      OPC=1343  
  nop                       #  3     0x118f82  1      OPC=1343  
  nop                       #  4     0x118f83  1      OPC=1343  
  nop                       #  5     0x118f84  1      OPC=1343  
  nop                       #  6     0x118f85  1      OPC=1343  
  nop                       #  7     0x118f86  1      OPC=1343  
  nop                       #  8     0x118f87  1      OPC=1343  
  nop                       #  9     0x118f88  1      OPC=1343  
  nop                       #  10    0x118f89  1      OPC=1343  
  nop                       #  11    0x118f8a  1      OPC=1343  
  nop                       #  12    0x118f8b  1      OPC=1343  
  nop                       #  13    0x118f8c  1      OPC=1343  
  nop                       #  14    0x118f8d  1      OPC=1343  
  nop                       #  15    0x118f8e  1      OPC=1343  
  nop                       #  16    0x118f8f  1      OPC=1343  
  nop                       #  17    0x118f90  1      OPC=1343  
  nop                       #  18    0x118f91  1      OPC=1343  
  nop                       #  19    0x118f92  1      OPC=1343  
  nop                       #  20    0x118f93  1      OPC=1343  
  nop                       #  21    0x118f94  1      OPC=1343  
  nop                       #  22    0x118f95  1      OPC=1343  
  nop                       #  23    0x118f96  1      OPC=1343  
  nop                       #  24    0x118f97  1      OPC=1343  
  nop                       #  25    0x118f98  1      OPC=1343  
  nop                       #  26    0x118f99  1      OPC=1343  
  nop                       #  27    0x118f9a  1      OPC=1343  
  callq .__nacl_read_tp     #  28    0x118f9b  5      OPC=260   
  popq %r11                 #  29    0x118fa0  2      OPC=1694  
  leaq -0x480(%rax), %rax   #  30    0x118fa2  7      OPC=1069  
  movl %eax, %eax           #  31    0x118fa9  2      OPC=1157  
  movl (%r15,%rax,1), %eax  #  32    0x118fab  4      OPC=1156  
  andl $0xffffffe0, %r11d   #  33    0x118faf  7      OPC=131   
  nop                       #  34    0x118fb6  1      OPC=1343  
  nop                       #  35    0x118fb7  1      OPC=1343  
  nop                       #  36    0x118fb8  1      OPC=1343  
  nop                       #  37    0x118fb9  1      OPC=1343  
  addq %r15, %r11           #  38    0x118fba  3      OPC=72    
  jmpq %r11                 #  39    0x118fbd  3      OPC=928   
  nop                       #  40    0x118fc0  1      OPC=1343  
  nop                       #  41    0x118fc1  1      OPC=1343  
  nop                       #  42    0x118fc2  1      OPC=1343  
  nop                       #  43    0x118fc3  1      OPC=1343  
  nop                       #  44    0x118fc4  1      OPC=1343  
  nop                       #  45    0x118fc5  1      OPC=1343  
  nop                       #  46    0x118fc6  1      OPC=1343  
                                                                
.size __errno, .-__errno

