  .text
  .globl stub_write
  .type stub_write, @function

#! file-offset 0x157c20
#! rip-offset  0x117c20
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_write:               #        0x117c20  0      OPC=0     
  popq %r11                #  1     0x117c20  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117c22  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117c27  7      OPC=131   
  nop                      #  4     0x117c2e  1      OPC=1343  
  nop                      #  5     0x117c2f  1      OPC=1343  
  nop                      #  6     0x117c30  1      OPC=1343  
  nop                      #  7     0x117c31  1      OPC=1343  
  addq %r15, %r11          #  8     0x117c32  3      OPC=72    
  jmpq %r11                #  9     0x117c35  3      OPC=928   
  nop                      #  10    0x117c38  1      OPC=1343  
  nop                      #  11    0x117c39  1      OPC=1343  
  nop                      #  12    0x117c3a  1      OPC=1343  
  nop                      #  13    0x117c3b  1      OPC=1343  
  nop                      #  14    0x117c3c  1      OPC=1343  
  nop                      #  15    0x117c3d  1      OPC=1343  
  nop                      #  16    0x117c3e  1      OPC=1343  
  nop                      #  17    0x117c3f  1      OPC=1343  
  nop                      #  18    0x117c40  1      OPC=1343  
  nop                      #  19    0x117c41  1      OPC=1343  
  nop                      #  20    0x117c42  1      OPC=1343  
  nop                      #  21    0x117c43  1      OPC=1343  
  nop                      #  22    0x117c44  1      OPC=1343  
  nop                      #  23    0x117c45  1      OPC=1343  
  nop                      #  24    0x117c46  1      OPC=1343  
                                                               
.size stub_write, .-stub_write

