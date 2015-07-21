  .text
  .globl stub_dup2
  .type stub_dup2, @function

#! file-offset 0x157be0
#! rip-offset  0x117be0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_dup2:                #        0x117be0  0      OPC=0     
  popq %r11                #  1     0x117be0  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117be2  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117be7  7      OPC=131   
  nop                      #  4     0x117bee  1      OPC=1343  
  nop                      #  5     0x117bef  1      OPC=1343  
  nop                      #  6     0x117bf0  1      OPC=1343  
  nop                      #  7     0x117bf1  1      OPC=1343  
  addq %r15, %r11          #  8     0x117bf2  3      OPC=72    
  jmpq %r11                #  9     0x117bf5  3      OPC=928   
  nop                      #  10    0x117bf8  1      OPC=1343  
  nop                      #  11    0x117bf9  1      OPC=1343  
  nop                      #  12    0x117bfa  1      OPC=1343  
  nop                      #  13    0x117bfb  1      OPC=1343  
  nop                      #  14    0x117bfc  1      OPC=1343  
  nop                      #  15    0x117bfd  1      OPC=1343  
  nop                      #  16    0x117bfe  1      OPC=1343  
  nop                      #  17    0x117bff  1      OPC=1343  
  nop                      #  18    0x117c00  1      OPC=1343  
  nop                      #  19    0x117c01  1      OPC=1343  
  nop                      #  20    0x117c02  1      OPC=1343  
  nop                      #  21    0x117c03  1      OPC=1343  
  nop                      #  22    0x117c04  1      OPC=1343  
  nop                      #  23    0x117c05  1      OPC=1343  
  nop                      #  24    0x117c06  1      OPC=1343  
                                                               
.size stub_dup2, .-stub_dup2

