  .text
  .globl stub_getdents
  .type stub_getdents, @function

#! file-offset 0x157c80
#! rip-offset  0x117c80
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_getdents:            #        0x117c80  0      OPC=0     
  popq %r11                #  1     0x117c80  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117c82  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117c87  7      OPC=131   
  nop                      #  4     0x117c8e  1      OPC=1343  
  nop                      #  5     0x117c8f  1      OPC=1343  
  nop                      #  6     0x117c90  1      OPC=1343  
  nop                      #  7     0x117c91  1      OPC=1343  
  addq %r15, %r11          #  8     0x117c92  3      OPC=72    
  jmpq %r11                #  9     0x117c95  3      OPC=928   
  nop                      #  10    0x117c98  1      OPC=1343  
  nop                      #  11    0x117c99  1      OPC=1343  
  nop                      #  12    0x117c9a  1      OPC=1343  
  nop                      #  13    0x117c9b  1      OPC=1343  
  nop                      #  14    0x117c9c  1      OPC=1343  
  nop                      #  15    0x117c9d  1      OPC=1343  
  nop                      #  16    0x117c9e  1      OPC=1343  
  nop                      #  17    0x117c9f  1      OPC=1343  
  nop                      #  18    0x117ca0  1      OPC=1343  
  nop                      #  19    0x117ca1  1      OPC=1343  
  nop                      #  20    0x117ca2  1      OPC=1343  
  nop                      #  21    0x117ca3  1      OPC=1343  
  nop                      #  22    0x117ca4  1      OPC=1343  
  nop                      #  23    0x117ca5  1      OPC=1343  
  nop                      #  24    0x117ca6  1      OPC=1343  
                                                               
.size stub_getdents, .-stub_getdents

