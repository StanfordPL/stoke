  .text
  .globl NACL_AnnotateNewMemory
  .type NACL_AnnotateNewMemory, @function

#! file-offset 0x70580
#! rip-offset  0x30580
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateNewMemory:   #        0x30580  0      OPC=<label>         
  popq %r11                #  1     0x30580  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30582  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30589  1      OPC=nop             
  nop                      #  4     0x3058a  1      OPC=nop             
  nop                      #  5     0x3058b  1      OPC=nop             
  nop                      #  6     0x3058c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3058d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30590  3      OPC=jmpq_r64        
  nop                      #  9     0x30593  1      OPC=nop             
  nop                      #  10    0x30594  1      OPC=nop             
  nop                      #  11    0x30595  1      OPC=nop             
  nop                      #  12    0x30596  1      OPC=nop             
  nop                      #  13    0x30597  1      OPC=nop             
  nop                      #  14    0x30598  1      OPC=nop             
  nop                      #  15    0x30599  1      OPC=nop             
  nop                      #  16    0x3059a  1      OPC=nop             
  nop                      #  17    0x3059b  1      OPC=nop             
  nop                      #  18    0x3059c  1      OPC=nop             
  nop                      #  19    0x3059d  1      OPC=nop             
  nop                      #  20    0x3059e  1      OPC=nop             
  nop                      #  21    0x3059f  1      OPC=nop             
  nop                      #  22    0x305a0  1      OPC=nop             
  nop                      #  23    0x305a1  1      OPC=nop             
  nop                      #  24    0x305a2  1      OPC=nop             
  nop                      #  25    0x305a3  1      OPC=nop             
  nop                      #  26    0x305a4  1      OPC=nop             
  nop                      #  27    0x305a5  1      OPC=nop             
  nop                      #  28    0x305a6  1      OPC=nop             
                                                                        
.size NACL_AnnotateNewMemory, .-NACL_AnnotateNewMemory

