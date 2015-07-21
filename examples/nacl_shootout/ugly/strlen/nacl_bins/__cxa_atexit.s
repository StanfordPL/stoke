  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x158f60
#! rip-offset  0x118f60
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.__cxa_atexit:               #        0x118f60  0      OPC=0     
  movl %edi, %edi            #  1     0x118f60  2      OPC=1157  
  movl %esi, %esi            #  2     0x118f62  2      OPC=1157  
  movl %edx, %ecx            #  3     0x118f64  2      OPC=1157  
  movl %esi, %edx            #  4     0x118f66  2      OPC=1157  
  movl %edi, %esi            #  5     0x118f68  2      OPC=1157  
  movl $0x2, %edi            #  6     0x118f6a  5      OPC=1154  
  jmpq .__register_exitproc  #  7     0x118f6f  5      OPC=930   
  nop                        #  8     0x118f74  1      OPC=1343  
  nop                        #  9     0x118f75  1      OPC=1343  
  nop                        #  10    0x118f76  1      OPC=1343  
  nop                        #  11    0x118f77  1      OPC=1343  
  nop                        #  12    0x118f78  1      OPC=1343  
  nop                        #  13    0x118f79  1      OPC=1343  
  nop                        #  14    0x118f7a  1      OPC=1343  
  nop                        #  15    0x118f7b  1      OPC=1343  
  nop                        #  16    0x118f7c  1      OPC=1343  
  nop                        #  17    0x118f7d  1      OPC=1343  
  nop                        #  18    0x118f7e  1      OPC=1343  
  nop                        #  19    0x118f7f  1      OPC=1343  
                                                                 
.size __cxa_atexit, .-__cxa_atexit

