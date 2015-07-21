  .text
  .globl stub_seek
  .type stub_seek, @function

#! file-offset 0x157c40
#! rip-offset  0x117c40
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_seek:                #        0x117c40  0      OPC=0     
  popq %r11                #  1     0x117c40  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117c42  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117c47  7      OPC=131   
  nop                      #  4     0x117c4e  1      OPC=1343  
  nop                      #  5     0x117c4f  1      OPC=1343  
  nop                      #  6     0x117c50  1      OPC=1343  
  nop                      #  7     0x117c51  1      OPC=1343  
  addq %r15, %r11          #  8     0x117c52  3      OPC=72    
  jmpq %r11                #  9     0x117c55  3      OPC=928   
  nop                      #  10    0x117c58  1      OPC=1343  
  nop                      #  11    0x117c59  1      OPC=1343  
  nop                      #  12    0x117c5a  1      OPC=1343  
  nop                      #  13    0x117c5b  1      OPC=1343  
  nop                      #  14    0x117c5c  1      OPC=1343  
  nop                      #  15    0x117c5d  1      OPC=1343  
  nop                      #  16    0x117c5e  1      OPC=1343  
  nop                      #  17    0x117c5f  1      OPC=1343  
  nop                      #  18    0x117c60  1      OPC=1343  
  nop                      #  19    0x117c61  1      OPC=1343  
  nop                      #  20    0x117c62  1      OPC=1343  
  nop                      #  21    0x117c63  1      OPC=1343  
  nop                      #  22    0x117c64  1      OPC=1343  
  nop                      #  23    0x117c65  1      OPC=1343  
  nop                      #  24    0x117c66  1      OPC=1343  
                                                               
.size stub_seek, .-stub_seek

