  .text
  .globl pthread_mutex_trylock
  .type pthread_mutex_trylock, @function

#! file-offset 0x6d6e0
#! rip-offset  0x2d6e0
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  Opcode              
.pthread_mutex_trylock:  #        0x2d6e0  0      OPC=<label>         
  movl %edi, %edi        #  1     0x2d6e0  2      OPC=movl_r32_r32    
  xorl %edx, %edx        #  2     0x2d6e2  2      OPC=xorl_r32_r32    
  movl $0x1, %esi        #  3     0x2d6e4  5      OPC=movl_r32_imm32  
  jmpq .mutex_lock       #  4     0x2d6e9  5      OPC=jmpq_label_1    
  nop                    #  5     0x2d6ee  1      OPC=nop             
  nop                    #  6     0x2d6ef  1      OPC=nop             
  nop                    #  7     0x2d6f0  1      OPC=nop             
  nop                    #  8     0x2d6f1  1      OPC=nop             
  nop                    #  9     0x2d6f2  1      OPC=nop             
  nop                    #  10    0x2d6f3  1      OPC=nop             
  nop                    #  11    0x2d6f4  1      OPC=nop             
  nop                    #  12    0x2d6f5  1      OPC=nop             
  nop                    #  13    0x2d6f6  1      OPC=nop             
  nop                    #  14    0x2d6f7  1      OPC=nop             
  nop                    #  15    0x2d6f8  1      OPC=nop             
  nop                    #  16    0x2d6f9  1      OPC=nop             
  nop                    #  17    0x2d6fa  1      OPC=nop             
  nop                    #  18    0x2d6fb  1      OPC=nop             
  nop                    #  19    0x2d6fc  1      OPC=nop             
  nop                    #  20    0x2d6fd  1      OPC=nop             
  nop                    #  21    0x2d6fe  1      OPC=nop             
  nop                    #  22    0x2d6ff  1      OPC=nop             
                                                                      
.size pthread_mutex_trylock, .-pthread_mutex_trylock

