  .text
  .globl pthread_cond_signal
  .type pthread_cond_signal, @function

#! file-offset 0x41e80
#! rip-offset  0x41e80
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  
.pthread_cond_signal:  #        0x41e80  0      
  movl %edi, %edi      #  1     0x41e80  2      
  movl $0x1, %esi      #  2     0x41e82  5      
  jmpq .pulse          #  3     0x41e87  5      
  nop                  #  4     0x41e8c  1      
  nop                  #  5     0x41e8d  1      
  nop                  #  6     0x41e8e  1      
  nop                  #  7     0x41e8f  1      
  nop                  #  8     0x41e90  1      
  nop                  #  9     0x41e91  1      
  nop                  #  10    0x41e92  1      
  nop                  #  11    0x41e93  1      
  nop                  #  12    0x41e94  1      
  nop                  #  13    0x41e95  1      
  nop                  #  14    0x41e96  1      
  nop                  #  15    0x41e97  1      
  nop                  #  16    0x41e98  1      
  nop                  #  17    0x41e99  1      
  nop                  #  18    0x41e9a  1      
  nop                  #  19    0x41e9b  1      
  nop                  #  20    0x41e9c  1      
  nop                  #  21    0x41e9d  1      
  nop                  #  22    0x41e9e  1      
  nop                  #  23    0x41e9f  1      
                                                
.size pthread_cond_signal, .-pthread_cond_signal

