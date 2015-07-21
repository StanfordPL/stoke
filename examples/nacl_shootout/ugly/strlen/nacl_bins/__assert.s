  .text
  .globl __assert
  .type __assert, @function

#! file-offset 0x158d80
#! rip-offset  0x118d80
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.__assert:              #        0x118d80  0      OPC=0     
  movl %edx, %ecx       #  1     0x118d80  2      OPC=1157  
  subl $0x8, %esp       #  2     0x118d82  3      OPC=2384  
  addq %r15, %rsp       #  3     0x118d85  3      OPC=72    
  movl %edi, %edi       #  4     0x118d88  2      OPC=1157  
  xorl %edx, %edx       #  5     0x118d8a  2      OPC=3758  
  nop                   #  6     0x118d8c  1      OPC=1343  
  nop                   #  7     0x118d8d  1      OPC=1343  
  nop                   #  8     0x118d8e  1      OPC=1343  
  nop                   #  9     0x118d8f  1      OPC=1343  
  nop                   #  10    0x118d90  1      OPC=1343  
  nop                   #  11    0x118d91  1      OPC=1343  
  nop                   #  12    0x118d92  1      OPC=1343  
  nop                   #  13    0x118d93  1      OPC=1343  
  nop                   #  14    0x118d94  1      OPC=1343  
  nop                   #  15    0x118d95  1      OPC=1343  
  nop                   #  16    0x118d96  1      OPC=1343  
  nop                   #  17    0x118d97  1      OPC=1343  
  nop                   #  18    0x118d98  1      OPC=1343  
  nop                   #  19    0x118d99  1      OPC=1343  
  nop                   #  20    0x118d9a  1      OPC=1343  
  callq .__assert_func  #  21    0x118d9b  5      OPC=260   
                                                            
.size __assert, .-__assert

