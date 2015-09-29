  .text
  .globl pthread_mutex_trylock
  .type pthread_mutex_trylock, @function

#! file-offset 0x6e100
#! rip-offset  0x2e100
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  Opcode              
.pthread_mutex_trylock:  #        0x2e100  0      OPC=<label>         
  movl %edi, %edi        #  1     0x2e100  2      OPC=movl_r32_r32    
  xorl %edx, %edx        #  2     0x2e102  2      OPC=xorl_r32_r32    
  movl $0x1, %esi        #  3     0x2e104  5      OPC=movl_r32_imm32  
  jmpq .mutex_lock       #  4     0x2e109  5      OPC=jmpq_label_1    
  nop                    #  5     0x2e10e  1      OPC=nop             
  nop                    #  6     0x2e10f  1      OPC=nop             
  nop                    #  7     0x2e110  1      OPC=nop             
  nop                    #  8     0x2e111  1      OPC=nop             
  nop                    #  9     0x2e112  1      OPC=nop             
  nop                    #  10    0x2e113  1      OPC=nop             
  nop                    #  11    0x2e114  1      OPC=nop             
  nop                    #  12    0x2e115  1      OPC=nop             
  nop                    #  13    0x2e116  1      OPC=nop             
  nop                    #  14    0x2e117  1      OPC=nop             
  nop                    #  15    0x2e118  1      OPC=nop             
  nop                    #  16    0x2e119  1      OPC=nop             
  nop                    #  17    0x2e11a  1      OPC=nop             
  nop                    #  18    0x2e11b  1      OPC=nop             
  nop                    #  19    0x2e11c  1      OPC=nop             
  nop                    #  20    0x2e11d  1      OPC=nop             
  nop                    #  21    0x2e11e  1      OPC=nop             
  nop                    #  22    0x2e11f  1      OPC=nop             
                                                                      
.size pthread_mutex_trylock, .-pthread_mutex_trylock

