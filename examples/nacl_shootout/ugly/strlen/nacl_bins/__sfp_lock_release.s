  .text
  .globl __sfp_lock_release
  .type __sfp_lock_release, @function

#! file-offset 0x159dc0
#! rip-offset  0x119dc0
#! capacity    32 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
.__sfp_lock_release:                    #        0x119dc0  0      OPC=0     
  movl $0x10070990, %edi                #  1     0x119dc0  5      OPC=1154  
  jmpq .__local_lock_release_recursive  #  2     0x119dc5  5      OPC=930   
  nop                                   #  3     0x119dca  1      OPC=1343  
  nop                                   #  4     0x119dcb  1      OPC=1343  
  nop                                   #  5     0x119dcc  1      OPC=1343  
  nop                                   #  6     0x119dcd  1      OPC=1343  
  nop                                   #  7     0x119dce  1      OPC=1343  
  nop                                   #  8     0x119dcf  1      OPC=1343  
  nop                                   #  9     0x119dd0  1      OPC=1343  
  nop                                   #  10    0x119dd1  1      OPC=1343  
  nop                                   #  11    0x119dd2  1      OPC=1343  
  nop                                   #  12    0x119dd3  1      OPC=1343  
  nop                                   #  13    0x119dd4  1      OPC=1343  
  nop                                   #  14    0x119dd5  1      OPC=1343  
  nop                                   #  15    0x119dd6  1      OPC=1343  
  nop                                   #  16    0x119dd7  1      OPC=1343  
  nop                                   #  17    0x119dd8  1      OPC=1343  
  nop                                   #  18    0x119dd9  1      OPC=1343  
  nop                                   #  19    0x119dda  1      OPC=1343  
  nop                                   #  20    0x119ddb  1      OPC=1343  
  nop                                   #  21    0x119ddc  1      OPC=1343  
  nop                                   #  22    0x119ddd  1      OPC=1343  
  nop                                   #  23    0x119dde  1      OPC=1343  
  nop                                   #  24    0x119ddf  1      OPC=1343  
                                                                            
.size __sfp_lock_release, .-__sfp_lock_release

