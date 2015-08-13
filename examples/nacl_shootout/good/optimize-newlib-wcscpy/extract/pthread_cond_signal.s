  .text
  .globl pthread_cond_signal
  .type pthread_cond_signal, @function

#! file-offset 0x6f8e0
#! rip-offset  0x2f8e0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode              
.pthread_cond_signal:  #        0x2f8e0  0      OPC=<label>         
  movl %edi, %edi      #  1     0x2f8e0  2      OPC=movl_r32_r32    
  movl $0x1, %esi      #  2     0x2f8e2  5      OPC=movl_r32_imm32  
  jmpq .pulse          #  3     0x2f8e7  5      OPC=jmpq_label_1    
  nop                  #  4     0x2f8ec  1      OPC=nop             
  nop                  #  5     0x2f8ed  1      OPC=nop             
  nop                  #  6     0x2f8ee  1      OPC=nop             
  nop                  #  7     0x2f8ef  1      OPC=nop             
  nop                  #  8     0x2f8f0  1      OPC=nop             
  nop                  #  9     0x2f8f1  1      OPC=nop             
  nop                  #  10    0x2f8f2  1      OPC=nop             
  nop                  #  11    0x2f8f3  1      OPC=nop             
  nop                  #  12    0x2f8f4  1      OPC=nop             
  nop                  #  13    0x2f8f5  1      OPC=nop             
  nop                  #  14    0x2f8f6  1      OPC=nop             
  nop                  #  15    0x2f8f7  1      OPC=nop             
  nop                  #  16    0x2f8f8  1      OPC=nop             
  nop                  #  17    0x2f8f9  1      OPC=nop             
  nop                  #  18    0x2f8fa  1      OPC=nop             
  nop                  #  19    0x2f8fb  1      OPC=nop             
  nop                  #  20    0x2f8fc  1      OPC=nop             
  nop                  #  21    0x2f8fd  1      OPC=nop             
  nop                  #  22    0x2f8fe  1      OPC=nop             
  nop                  #  23    0x2f8ff  1      OPC=nop             
                                                                    
.size pthread_cond_signal, .-pthread_cond_signal

