  .text
  .globl _getenv_r
  .type _getenv_r, @function

#! file-offset 0x15de80
#! rip-offset  0x11de80
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
._getenv_r:                #        0x11de80  0      OPC=0     
  subl $0x18, %esp         #  1     0x11de80  3      OPC=2384  
  addq %r15, %rsp          #  2     0x11de83  3      OPC=72    
  movl %edi, %edi          #  3     0x11de86  2      OPC=1157  
  movl %esi, %esi          #  4     0x11de88  2      OPC=1157  
  leal 0xc(%rsp), %edx     #  5     0x11de8a  4      OPC=1066  
  nop                      #  6     0x11de8e  1      OPC=1343  
  nop                      #  7     0x11de8f  1      OPC=1343  
  nop                      #  8     0x11de90  1      OPC=1343  
  nop                      #  9     0x11de91  1      OPC=1343  
  nop                      #  10    0x11de92  1      OPC=1343  
  nop                      #  11    0x11de93  1      OPC=1343  
  nop                      #  12    0x11de94  1      OPC=1343  
  nop                      #  13    0x11de95  1      OPC=1343  
  nop                      #  14    0x11de96  1      OPC=1343  
  nop                      #  15    0x11de97  1      OPC=1343  
  nop                      #  16    0x11de98  1      OPC=1343  
  nop                      #  17    0x11de99  1      OPC=1343  
  nop                      #  18    0x11de9a  1      OPC=1343  
  callq ._findenv_r        #  19    0x11de9b  5      OPC=260   
  addl $0x18, %esp         #  20    0x11dea0  3      OPC=65    
  addq %r15, %rsp          #  21    0x11dea3  3      OPC=72    
  movl %eax, %eax          #  22    0x11dea6  2      OPC=1157  
  popq %r11                #  23    0x11dea8  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  24    0x11deaa  7      OPC=131   
  nop                      #  25    0x11deb1  1      OPC=1343  
  nop                      #  26    0x11deb2  1      OPC=1343  
  nop                      #  27    0x11deb3  1      OPC=1343  
  nop                      #  28    0x11deb4  1      OPC=1343  
  addq %r15, %r11          #  29    0x11deb5  3      OPC=72    
  jmpq %r11                #  30    0x11deb8  3      OPC=928   
  nop                      #  31    0x11debb  1      OPC=1343  
  nop                      #  32    0x11debc  1      OPC=1343  
  nop                      #  33    0x11debd  1      OPC=1343  
  nop                      #  34    0x11debe  1      OPC=1343  
  nop                      #  35    0x11debf  1      OPC=1343  
  nop                      #  36    0x11dec0  1      OPC=1343  
  nop                      #  37    0x11dec1  1      OPC=1343  
  nop                      #  38    0x11dec2  1      OPC=1343  
  nop                      #  39    0x11dec3  1      OPC=1343  
  nop                      #  40    0x11dec4  1      OPC=1343  
  nop                      #  41    0x11dec5  1      OPC=1343  
  nop                      #  42    0x11dec6  1      OPC=1343  
                                                               
.size _getenv_r, .-_getenv_r

