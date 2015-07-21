  .text
  .globl pthread_cond_signal
  .type pthread_cond_signal, @function

#! file-offset 0x6f3a0
#! rip-offset  0x2f3a0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode    
.pthread_cond_signal:  #        0x2f3a0  0      OPC=0     
  movl %edi, %edi      #  1     0x2f3a0  2      OPC=1157  
  movl $0x1, %esi      #  2     0x2f3a2  5      OPC=1154  
  jmpq .pulse          #  3     0x2f3a7  5      OPC=930   
  nop                  #  4     0x2f3ac  1      OPC=1343  
  nop                  #  5     0x2f3ad  1      OPC=1343  
  nop                  #  6     0x2f3ae  1      OPC=1343  
  nop                  #  7     0x2f3af  1      OPC=1343  
  nop                  #  8     0x2f3b0  1      OPC=1343  
  nop                  #  9     0x2f3b1  1      OPC=1343  
  nop                  #  10    0x2f3b2  1      OPC=1343  
  nop                  #  11    0x2f3b3  1      OPC=1343  
  nop                  #  12    0x2f3b4  1      OPC=1343  
  nop                  #  13    0x2f3b5  1      OPC=1343  
  nop                  #  14    0x2f3b6  1      OPC=1343  
  nop                  #  15    0x2f3b7  1      OPC=1343  
  nop                  #  16    0x2f3b8  1      OPC=1343  
  nop                  #  17    0x2f3b9  1      OPC=1343  
  nop                  #  18    0x2f3ba  1      OPC=1343  
  nop                  #  19    0x2f3bb  1      OPC=1343  
  nop                  #  20    0x2f3bc  1      OPC=1343  
  nop                  #  21    0x2f3bd  1      OPC=1343  
  nop                  #  22    0x2f3be  1      OPC=1343  
  nop                  #  23    0x2f3bf  1      OPC=1343  
                                                          
.size pthread_cond_signal, .-pthread_cond_signal

