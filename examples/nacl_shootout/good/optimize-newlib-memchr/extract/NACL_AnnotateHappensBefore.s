  .text
  .globl NACL_AnnotateHappensBefore
  .type NACL_AnnotateHappensBefore, @function

#! file-offset 0x70480
#! rip-offset  0x30480
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateHappensBefore:  #        0x30480  0      OPC=<label>         
  popq %r11                   #  1     0x30480  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x30482  7      OPC=andl_r32_imm32  
  nop                         #  3     0x30489  1      OPC=nop             
  nop                         #  4     0x3048a  1      OPC=nop             
  nop                         #  5     0x3048b  1      OPC=nop             
  nop                         #  6     0x3048c  1      OPC=nop             
  addq %r15, %r11             #  7     0x3048d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x30490  3      OPC=jmpq_r64        
  nop                         #  9     0x30493  1      OPC=nop             
  nop                         #  10    0x30494  1      OPC=nop             
  nop                         #  11    0x30495  1      OPC=nop             
  nop                         #  12    0x30496  1      OPC=nop             
  nop                         #  13    0x30497  1      OPC=nop             
  nop                         #  14    0x30498  1      OPC=nop             
  nop                         #  15    0x30499  1      OPC=nop             
  nop                         #  16    0x3049a  1      OPC=nop             
  nop                         #  17    0x3049b  1      OPC=nop             
  nop                         #  18    0x3049c  1      OPC=nop             
  nop                         #  19    0x3049d  1      OPC=nop             
  nop                         #  20    0x3049e  1      OPC=nop             
  nop                         #  21    0x3049f  1      OPC=nop             
  nop                         #  22    0x304a0  1      OPC=nop             
  nop                         #  23    0x304a1  1      OPC=nop             
  nop                         #  24    0x304a2  1      OPC=nop             
  nop                         #  25    0x304a3  1      OPC=nop             
  nop                         #  26    0x304a4  1      OPC=nop             
  nop                         #  27    0x304a5  1      OPC=nop             
  nop                         #  28    0x304a6  1      OPC=nop             
                                                                           
.size NACL_AnnotateHappensBefore, .-NACL_AnnotateHappensBefore

