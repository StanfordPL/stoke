  .text
  .globl stub_dup
  .type stub_dup, @function

#! file-offset 0x157bc0
#! rip-offset  0x117bc0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_dup:                 #        0x117bc0  0      OPC=0     
  popq %r11                #  1     0x117bc0  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117bc2  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117bc7  7      OPC=131   
  nop                      #  4     0x117bce  1      OPC=1343  
  nop                      #  5     0x117bcf  1      OPC=1343  
  nop                      #  6     0x117bd0  1      OPC=1343  
  nop                      #  7     0x117bd1  1      OPC=1343  
  addq %r15, %r11          #  8     0x117bd2  3      OPC=72    
  jmpq %r11                #  9     0x117bd5  3      OPC=928   
  nop                      #  10    0x117bd8  1      OPC=1343  
  nop                      #  11    0x117bd9  1      OPC=1343  
  nop                      #  12    0x117bda  1      OPC=1343  
  nop                      #  13    0x117bdb  1      OPC=1343  
  nop                      #  14    0x117bdc  1      OPC=1343  
  nop                      #  15    0x117bdd  1      OPC=1343  
  nop                      #  16    0x117bde  1      OPC=1343  
  nop                      #  17    0x117bdf  1      OPC=1343  
  nop                      #  18    0x117be0  1      OPC=1343  
  nop                      #  19    0x117be1  1      OPC=1343  
  nop                      #  20    0x117be2  1      OPC=1343  
  nop                      #  21    0x117be3  1      OPC=1343  
  nop                      #  22    0x117be4  1      OPC=1343  
  nop                      #  23    0x117be5  1      OPC=1343  
  nop                      #  24    0x117be6  1      OPC=1343  
                                                               
.size stub_dup, .-stub_dup

