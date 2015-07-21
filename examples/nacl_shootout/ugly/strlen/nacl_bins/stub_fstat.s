  .text
  .globl stub_fstat
  .type stub_fstat, @function

#! file-offset 0x157c60
#! rip-offset  0x117c60
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_fstat:               #        0x117c60  0      OPC=0     
  popq %r11                #  1     0x117c60  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117c62  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117c67  7      OPC=131   
  nop                      #  4     0x117c6e  1      OPC=1343  
  nop                      #  5     0x117c6f  1      OPC=1343  
  nop                      #  6     0x117c70  1      OPC=1343  
  nop                      #  7     0x117c71  1      OPC=1343  
  addq %r15, %r11          #  8     0x117c72  3      OPC=72    
  jmpq %r11                #  9     0x117c75  3      OPC=928   
  nop                      #  10    0x117c78  1      OPC=1343  
  nop                      #  11    0x117c79  1      OPC=1343  
  nop                      #  12    0x117c7a  1      OPC=1343  
  nop                      #  13    0x117c7b  1      OPC=1343  
  nop                      #  14    0x117c7c  1      OPC=1343  
  nop                      #  15    0x117c7d  1      OPC=1343  
  nop                      #  16    0x117c7e  1      OPC=1343  
  nop                      #  17    0x117c7f  1      OPC=1343  
  nop                      #  18    0x117c80  1      OPC=1343  
  nop                      #  19    0x117c81  1      OPC=1343  
  nop                      #  20    0x117c82  1      OPC=1343  
  nop                      #  21    0x117c83  1      OPC=1343  
  nop                      #  22    0x117c84  1      OPC=1343  
  nop                      #  23    0x117c85  1      OPC=1343  
  nop                      #  24    0x117c86  1      OPC=1343  
                                                               
.size stub_fstat, .-stub_fstat

