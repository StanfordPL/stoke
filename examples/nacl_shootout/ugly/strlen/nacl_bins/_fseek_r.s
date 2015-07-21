  .text
  .globl _fseek_r
  .type _fseek_r, @function

#! file-offset 0x15b880
#! rip-offset  0x11b880
#! capacity    32 bytes

# Text               #  Line  RIP       Bytes  Opcode    
._fseek_r:           #        0x11b880  0      OPC=0     
  movl %edi, %edi    #  1     0x11b880  2      OPC=1157  
  movl %esi, %esi    #  2     0x11b882  2      OPC=1157  
  movslq %edx, %rdx  #  3     0x11b884  3      OPC=1289  
  jmpq ._fseeko_r    #  4     0x11b887  5      OPC=930   
  nop                #  5     0x11b88c  1      OPC=1343  
  nop                #  6     0x11b88d  1      OPC=1343  
  nop                #  7     0x11b88e  1      OPC=1343  
  nop                #  8     0x11b88f  1      OPC=1343  
  nop                #  9     0x11b890  1      OPC=1343  
  nop                #  10    0x11b891  1      OPC=1343  
  nop                #  11    0x11b892  1      OPC=1343  
  nop                #  12    0x11b893  1      OPC=1343  
  nop                #  13    0x11b894  1      OPC=1343  
  nop                #  14    0x11b895  1      OPC=1343  
  nop                #  15    0x11b896  1      OPC=1343  
  nop                #  16    0x11b897  1      OPC=1343  
  nop                #  17    0x11b898  1      OPC=1343  
  nop                #  18    0x11b899  1      OPC=1343  
  nop                #  19    0x11b89a  1      OPC=1343  
  nop                #  20    0x11b89b  1      OPC=1343  
  nop                #  21    0x11b89c  1      OPC=1343  
  nop                #  22    0x11b89d  1      OPC=1343  
  nop                #  23    0x11b89e  1      OPC=1343  
  nop                #  24    0x11b89f  1      OPC=1343  
                                                         
.size _fseek_r, .-_fseek_r

