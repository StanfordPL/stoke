  .text
  .globl stub_close
  .type stub_close, @function

#! file-offset 0x157ba0
#! rip-offset  0x117ba0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.stub_close:               #        0x117ba0  0      OPC=0     
  popq %r11                #  1     0x117ba0  2      OPC=1694  
  movl $0x26, %eax         #  2     0x117ba2  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x117ba7  7      OPC=131   
  nop                      #  4     0x117bae  1      OPC=1343  
  nop                      #  5     0x117baf  1      OPC=1343  
  nop                      #  6     0x117bb0  1      OPC=1343  
  nop                      #  7     0x117bb1  1      OPC=1343  
  addq %r15, %r11          #  8     0x117bb2  3      OPC=72    
  jmpq %r11                #  9     0x117bb5  3      OPC=928   
  nop                      #  10    0x117bb8  1      OPC=1343  
  nop                      #  11    0x117bb9  1      OPC=1343  
  nop                      #  12    0x117bba  1      OPC=1343  
  nop                      #  13    0x117bbb  1      OPC=1343  
  nop                      #  14    0x117bbc  1      OPC=1343  
  nop                      #  15    0x117bbd  1      OPC=1343  
  nop                      #  16    0x117bbe  1      OPC=1343  
  nop                      #  17    0x117bbf  1      OPC=1343  
  nop                      #  18    0x117bc0  1      OPC=1343  
  nop                      #  19    0x117bc1  1      OPC=1343  
  nop                      #  20    0x117bc2  1      OPC=1343  
  nop                      #  21    0x117bc3  1      OPC=1343  
  nop                      #  22    0x117bc4  1      OPC=1343  
  nop                      #  23    0x117bc5  1      OPC=1343  
  nop                      #  24    0x117bc6  1      OPC=1343  
                                                               
.size stub_close, .-stub_close

