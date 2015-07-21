  .text
  .globl pthread_mutexattr_destroy
  .type pthread_mutexattr_destroy, @function

#! file-offset 0x6cba0
#! rip-offset  0x2cba0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.pthread_mutexattr_destroy:  #        0x2cba0  0      OPC=0     
  popq %r11                  #  1     0x2cba0  2      OPC=1694  
  xorl %eax, %eax            #  2     0x2cba2  2      OPC=3758  
  andl $0xffffffe0, %r11d    #  3     0x2cba4  7      OPC=131   
  nop                        #  4     0x2cbab  1      OPC=1343  
  nop                        #  5     0x2cbac  1      OPC=1343  
  nop                        #  6     0x2cbad  1      OPC=1343  
  nop                        #  7     0x2cbae  1      OPC=1343  
  addq %r15, %r11            #  8     0x2cbaf  3      OPC=72    
  jmpq %r11                  #  9     0x2cbb2  3      OPC=928   
  nop                        #  10    0x2cbb5  1      OPC=1343  
  nop                        #  11    0x2cbb6  1      OPC=1343  
  nop                        #  12    0x2cbb7  1      OPC=1343  
  nop                        #  13    0x2cbb8  1      OPC=1343  
  nop                        #  14    0x2cbb9  1      OPC=1343  
  nop                        #  15    0x2cbba  1      OPC=1343  
  nop                        #  16    0x2cbbb  1      OPC=1343  
  nop                        #  17    0x2cbbc  1      OPC=1343  
  nop                        #  18    0x2cbbd  1      OPC=1343  
  nop                        #  19    0x2cbbe  1      OPC=1343  
  nop                        #  20    0x2cbbf  1      OPC=1343  
  nop                        #  21    0x2cbc0  1      OPC=1343  
  nop                        #  22    0x2cbc1  1      OPC=1343  
  nop                        #  23    0x2cbc2  1      OPC=1343  
  nop                        #  24    0x2cbc3  1      OPC=1343  
  nop                        #  25    0x2cbc4  1      OPC=1343  
  nop                        #  26    0x2cbc5  1      OPC=1343  
  nop                        #  27    0x2cbc6  1      OPC=1343  
                                                                
.size pthread_mutexattr_destroy, .-pthread_mutexattr_destroy

