  .text
  .globl run_fannkuch
  .type run_fannkuch, @function

#! file-offset 0x60be0
#! rip-offset  0x20be0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode            
.run_fannkuch:         #        0x20be0  0      OPC=<label>       
  jmpq .fannkuchredux  #  1     0x20be0  5      OPC=jmpq_label_1  
  nop                  #  2     0x20be5  1      OPC=nop           
  nop                  #  3     0x20be6  1      OPC=nop           
  nop                  #  4     0x20be7  1      OPC=nop           
  nop                  #  5     0x20be8  1      OPC=nop           
  nop                  #  6     0x20be9  1      OPC=nop           
  nop                  #  7     0x20bea  1      OPC=nop           
  nop                  #  8     0x20beb  1      OPC=nop           
  nop                  #  9     0x20bec  1      OPC=nop           
  nop                  #  10    0x20bed  1      OPC=nop           
  nop                  #  11    0x20bee  1      OPC=nop           
  nop                  #  12    0x20bef  1      OPC=nop           
  nop                  #  13    0x20bf0  1      OPC=nop           
  nop                  #  14    0x20bf1  1      OPC=nop           
  nop                  #  15    0x20bf2  1      OPC=nop           
  nop                  #  16    0x20bf3  1      OPC=nop           
  nop                  #  17    0x20bf4  1      OPC=nop           
  nop                  #  18    0x20bf5  1      OPC=nop           
  nop                  #  19    0x20bf6  1      OPC=nop           
  nop                  #  20    0x20bf7  1      OPC=nop           
  nop                  #  21    0x20bf8  1      OPC=nop           
  nop                  #  22    0x20bf9  1      OPC=nop           
  nop                  #  23    0x20bfa  1      OPC=nop           
  nop                  #  24    0x20bfb  1      OPC=nop           
  nop                  #  25    0x20bfc  1      OPC=nop           
  nop                  #  26    0x20bfd  1      OPC=nop           
  nop                  #  27    0x20bfe  1      OPC=nop           
  nop                  #  28    0x20bff  1      OPC=nop           
                                                                  
.size run_fannkuch, .-run_fannkuch

