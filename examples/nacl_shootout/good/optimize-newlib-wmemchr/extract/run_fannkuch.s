  .text
  .globl run_fannkuch
  .type run_fannkuch, @function

#! file-offset 0x60660
#! rip-offset  0x20660
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode            
.run_fannkuch:         #        0x20660  0      OPC=<label>       
  jmpq .fannkuchredux  #  1     0x20660  5      OPC=jmpq_label_1  
  nop                  #  2     0x20665  1      OPC=nop           
  nop                  #  3     0x20666  1      OPC=nop           
  nop                  #  4     0x20667  1      OPC=nop           
  nop                  #  5     0x20668  1      OPC=nop           
  nop                  #  6     0x20669  1      OPC=nop           
  nop                  #  7     0x2066a  1      OPC=nop           
  nop                  #  8     0x2066b  1      OPC=nop           
  nop                  #  9     0x2066c  1      OPC=nop           
  nop                  #  10    0x2066d  1      OPC=nop           
  nop                  #  11    0x2066e  1      OPC=nop           
  nop                  #  12    0x2066f  1      OPC=nop           
  nop                  #  13    0x20670  1      OPC=nop           
  nop                  #  14    0x20671  1      OPC=nop           
  nop                  #  15    0x20672  1      OPC=nop           
  nop                  #  16    0x20673  1      OPC=nop           
  nop                  #  17    0x20674  1      OPC=nop           
  nop                  #  18    0x20675  1      OPC=nop           
  nop                  #  19    0x20676  1      OPC=nop           
  nop                  #  20    0x20677  1      OPC=nop           
  nop                  #  21    0x20678  1      OPC=nop           
  nop                  #  22    0x20679  1      OPC=nop           
  nop                  #  23    0x2067a  1      OPC=nop           
  nop                  #  24    0x2067b  1      OPC=nop           
  nop                  #  25    0x2067c  1      OPC=nop           
  nop                  #  26    0x2067d  1      OPC=nop           
  nop                  #  27    0x2067e  1      OPC=nop           
  nop                  #  28    0x2067f  1      OPC=nop           
                                                                  
.size run_fannkuch, .-run_fannkuch

