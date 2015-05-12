  .text
  .globl pthread_cond_signal
  .type pthread_cond_signal, @function

#! file-offset 0x41e00
#! rip-offset  0x41e00
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  
.pthread_cond_signal:  #        0x41e00  0      
  movl %edi, %edi      #  1     0x41e00  2      
  movl $0x1, %esi      #  2     0x41e02  5      
  jmpq .pulse          #  3     0x41e07  5      
  nop                  #  4     0x41e0c  1      
  nop                  #  5     0x41e0d  1      
  nop                  #  6     0x41e0e  1      
  nop                  #  7     0x41e0f  1      
  nop                  #  8     0x41e10  1      
  nop                  #  9     0x41e11  1      
  nop                  #  10    0x41e12  1      
  nop                  #  11    0x41e13  1      
  nop                  #  12    0x41e14  1      
  nop                  #  13    0x41e15  1      
  nop                  #  14    0x41e16  1      
  nop                  #  15    0x41e17  1      
  nop                  #  16    0x41e18  1      
  nop                  #  17    0x41e19  1      
  nop                  #  18    0x41e1a  1      
  nop                  #  19    0x41e1b  1      
  nop                  #  20    0x41e1c  1      
  nop                  #  21    0x41e1d  1      
  nop                  #  22    0x41e1e  1      
  nop                  #  23    0x41e1f  1      
                                                
.size pthread_cond_signal, .-pthread_cond_signal

