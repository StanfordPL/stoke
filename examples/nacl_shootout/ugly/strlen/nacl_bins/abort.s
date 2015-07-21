  .text
  .globl abort
  .type abort, @function

#! file-offset 0x150ae0
#! rip-offset  0x110ae0
#! capacity    64 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
.abort:                   #        0x110ae0  0      OPC=0     
  subl $0x8, %esp         #  1     0x110ae0  3      OPC=2384  
  addq %r15, %rsp         #  2     0x110ae3  3      OPC=72    
  movl $0x12, %edx        #  3     0x110ae6  5      OPC=1154  
  movl $0x100409b0, %esi  #  4     0x110aeb  5      OPC=1154  
  movl $0x2, %edi         #  5     0x110af0  5      OPC=1154  
  nop                     #  6     0x110af5  1      OPC=1343  
  nop                     #  7     0x110af6  1      OPC=1343  
  nop                     #  8     0x110af7  1      OPC=1343  
  nop                     #  9     0x110af8  1      OPC=1343  
  nop                     #  10    0x110af9  1      OPC=1343  
  nop                     #  11    0x110afa  1      OPC=1343  
  callq .write            #  12    0x110afb  5      OPC=260   
  ud2                     #  13    0x110b00  2      OPC=2456  
  nop                     #  14    0x110b02  1      OPC=1343  
  nop                     #  15    0x110b03  1      OPC=1343  
  nop                     #  16    0x110b04  1      OPC=1343  
  nop                     #  17    0x110b05  1      OPC=1343  
  nop                     #  18    0x110b06  1      OPC=1343  
  nop                     #  19    0x110b07  1      OPC=1343  
  nop                     #  20    0x110b08  1      OPC=1343  
  nop                     #  21    0x110b09  1      OPC=1343  
  nop                     #  22    0x110b0a  1      OPC=1343  
  nop                     #  23    0x110b0b  1      OPC=1343  
  nop                     #  24    0x110b0c  1      OPC=1343  
  nop                     #  25    0x110b0d  1      OPC=1343  
  nop                     #  26    0x110b0e  1      OPC=1343  
  nop                     #  27    0x110b0f  1      OPC=1343  
  nop                     #  28    0x110b10  1      OPC=1343  
  nop                     #  29    0x110b11  1      OPC=1343  
  nop                     #  30    0x110b12  1      OPC=1343  
  nop                     #  31    0x110b13  1      OPC=1343  
  nop                     #  32    0x110b14  1      OPC=1343  
  nop                     #  33    0x110b15  1      OPC=1343  
  nop                     #  34    0x110b16  1      OPC=1343  
  nop                     #  35    0x110b17  1      OPC=1343  
  nop                     #  36    0x110b18  1      OPC=1343  
  nop                     #  37    0x110b19  1      OPC=1343  
  nop                     #  38    0x110b1a  1      OPC=1343  
  nop                     #  39    0x110b1b  1      OPC=1343  
  nop                     #  40    0x110b1c  1      OPC=1343  
  nop                     #  41    0x110b1d  1      OPC=1343  
  nop                     #  42    0x110b1e  1      OPC=1343  
  nop                     #  43    0x110b1f  1      OPC=1343  
                                                              
.size abort, .-abort

