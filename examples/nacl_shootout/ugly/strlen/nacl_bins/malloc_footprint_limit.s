  .text
  .globl malloc_footprint_limit
  .type malloc_footprint_limit, @function

#! file-offset 0x150dc0
#! rip-offset  0x110dc0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.malloc_footprint_limit:      #        0x110dc0  0      OPC=0     
  movl 0xff67f72(%rip), %eax  #  1     0x110dc0  6      OPC=1156  
  movl $0xffffffff, %edx      #  2     0x110dc6  6      OPC=1155  
  popq %r11                   #  3     0x110dcc  2      OPC=1694  
  testl %eax, %eax            #  4     0x110dce  2      OPC=2436  
  cmovel %edx, %eax           #  5     0x110dd0  3      OPC=302   
  andl $0xffffffe0, %r11d     #  6     0x110dd3  7      OPC=131   
  nop                         #  7     0x110dda  1      OPC=1343  
  nop                         #  8     0x110ddb  1      OPC=1343  
  nop                         #  9     0x110ddc  1      OPC=1343  
  nop                         #  10    0x110ddd  1      OPC=1343  
  addq %r15, %r11             #  11    0x110dde  3      OPC=72    
  jmpq %r11                   #  12    0x110de1  3      OPC=928   
  nop                         #  13    0x110de4  1      OPC=1343  
  nop                         #  14    0x110de5  1      OPC=1343  
  nop                         #  15    0x110de6  1      OPC=1343  
  nop                         #  16    0x110de7  1      OPC=1343  
                                                                  
.size malloc_footprint_limit, .-malloc_footprint_limit

