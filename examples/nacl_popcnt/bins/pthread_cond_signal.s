  .text
  .globl pthread_cond_signal
  .type pthread_cond_signal, @function

#! file-offset 0x41de0
#! rip-offset  0x41de0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  
.pthread_cond_signal:  #        0x41de0  0      
  movl %edi, %edi      #  1     0x41de0  2      
  movl $0x1, %esi      #  2     0x41de2  5      
  jmpq .pulse          #  3     0x41de7  5      
  nop                  #  4     0x41dec  1      
  nop                  #  5     0x41ded  1      
  nop                  #  6     0x41dee  1      
  nop                  #  7     0x41def  1      
  nop                  #  8     0x41df0  1      
  nop                  #  9     0x41df1  1      
  nop                  #  10    0x41df2  1      
  nop                  #  11    0x41df3  1      
  nop                  #  12    0x41df4  1      
  nop                  #  13    0x41df5  1      
  nop                  #  14    0x41df6  1      
  nop                  #  15    0x41df7  1      
  nop                  #  16    0x41df8  1      
  nop                  #  17    0x41df9  1      
  nop                  #  18    0x41dfa  1      
  nop                  #  19    0x41dfb  1      
  nop                  #  20    0x41dfc  1      
  nop                  #  21    0x41dfd  1      
  nop                  #  22    0x41dfe  1      
  nop                  #  23    0x41dff  1      
                                                
.size pthread_cond_signal, .-pthread_cond_signal

