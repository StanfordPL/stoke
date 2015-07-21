  .text
  .globl stub_read
  .type stub_read, @function

#! file-offset 0x157c00
#! rip-offset  0x117c00
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_read:                #        0x117c00  0      OPC=0     
  popq %r11                #  1     0x117c00  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117c02  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117c07  7      OPC=131   
  nop                      #  4     0x117c0e  1      OPC=1343  
  nop                      #  5     0x117c0f  1      OPC=1343  
  nop                      #  6     0x117c10  1      OPC=1343  
  nop                      #  7     0x117c11  1      OPC=1343  
  addq %r15, %r11          #  8     0x117c12  3      OPC=72    
  jmpq %r11                #  9     0x117c15  3      OPC=928   
  nop                      #  10    0x117c18  1      OPC=1343  
  nop                      #  11    0x117c19  1      OPC=1343  
  nop                      #  12    0x117c1a  1      OPC=1343  
  nop                      #  13    0x117c1b  1      OPC=1343  
  nop                      #  14    0x117c1c  1      OPC=1343  
  nop                      #  15    0x117c1d  1      OPC=1343  
  nop                      #  16    0x117c1e  1      OPC=1343  
  nop                      #  17    0x117c1f  1      OPC=1343  
  nop                      #  18    0x117c20  1      OPC=1343  
  nop                      #  19    0x117c21  1      OPC=1343  
  nop                      #  20    0x117c22  1      OPC=1343  
  nop                      #  21    0x117c23  1      OPC=1343  
  nop                      #  22    0x117c24  1      OPC=1343  
  nop                      #  23    0x117c25  1      OPC=1343  
  nop                      #  24    0x117c26  1      OPC=1343  
                                                               
.size stub_read, .-stub_read

