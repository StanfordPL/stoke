  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x158f40
#! rip-offset  0x118f40
#! capacity    32 bytes

# Text                               #  Line  RIP       Bytes  Opcode    
.__set_ctype:                        #        0x118f40  0      OPC=0     
  popq %r11                          #  1     0x118f40  2      OPC=1694  
  movl $0x10040cdf, 0xff57a14(%rip)  #  2     0x118f42  10     OPC=1135  
  andl $0xffffffe0, %r11d            #  3     0x118f4c  7      OPC=131   
  nop                                #  4     0x118f53  1      OPC=1343  
  nop                                #  5     0x118f54  1      OPC=1343  
  nop                                #  6     0x118f55  1      OPC=1343  
  nop                                #  7     0x118f56  1      OPC=1343  
  addq %r15, %r11                    #  8     0x118f57  3      OPC=72    
  jmpq %r11                          #  9     0x118f5a  3      OPC=928   
  nop                                #  10    0x118f5d  1      OPC=1343  
  nop                                #  11    0x118f5e  1      OPC=1343  
  nop                                #  12    0x118f5f  1      OPC=1343  
  nop                                #  13    0x118f60  1      OPC=1343  
  nop                                #  14    0x118f61  1      OPC=1343  
  nop                                #  15    0x118f62  1      OPC=1343  
  nop                                #  16    0x118f63  1      OPC=1343  
  nop                                #  17    0x118f64  1      OPC=1343  
  nop                                #  18    0x118f65  1      OPC=1343  
  nop                                #  19    0x118f66  1      OPC=1343  
                                                                         
.size __set_ctype, .-__set_ctype

