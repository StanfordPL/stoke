  .text
  .globl pthread_cond_signal
  .type pthread_cond_signal, @function

#! file-offset 0x6fbe0
#! rip-offset  0x2fbe0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode              
.pthread_cond_signal:  #        0x2fbe0  0      OPC=<label>         
  movl %edi, %edi      #  1     0x2fbe0  2      OPC=movl_r32_r32    
  movl $0x1, %esi      #  2     0x2fbe2  5      OPC=movl_r32_imm32  
  jmpq .pulse          #  3     0x2fbe7  5      OPC=jmpq_label_1    
  nop                  #  4     0x2fbec  1      OPC=nop             
  nop                  #  5     0x2fbed  1      OPC=nop             
  nop                  #  6     0x2fbee  1      OPC=nop             
  nop                  #  7     0x2fbef  1      OPC=nop             
  nop                  #  8     0x2fbf0  1      OPC=nop             
  nop                  #  9     0x2fbf1  1      OPC=nop             
  nop                  #  10    0x2fbf2  1      OPC=nop             
  nop                  #  11    0x2fbf3  1      OPC=nop             
  nop                  #  12    0x2fbf4  1      OPC=nop             
  nop                  #  13    0x2fbf5  1      OPC=nop             
  nop                  #  14    0x2fbf6  1      OPC=nop             
  nop                  #  15    0x2fbf7  1      OPC=nop             
  nop                  #  16    0x2fbf8  1      OPC=nop             
  nop                  #  17    0x2fbf9  1      OPC=nop             
  nop                  #  18    0x2fbfa  1      OPC=nop             
  nop                  #  19    0x2fbfb  1      OPC=nop             
  nop                  #  20    0x2fbfc  1      OPC=nop             
  nop                  #  21    0x2fbfd  1      OPC=nop             
  nop                  #  22    0x2fbfe  1      OPC=nop             
  nop                  #  23    0x2fbff  1      OPC=nop             
                                                                    
.size pthread_cond_signal, .-pthread_cond_signal

