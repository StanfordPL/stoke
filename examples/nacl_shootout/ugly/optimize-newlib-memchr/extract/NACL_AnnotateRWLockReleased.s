  .text
  .globl NACL_AnnotateRWLockReleased
  .type NACL_AnnotateRWLockReleased, @function

#! file-offset 0x70380
#! rip-offset  0x30380
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockReleased:  #        0x30380  0      OPC=<label>         
  popq %r11                    #  1     0x30380  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x30382  7      OPC=andl_r32_imm32  
  nop                          #  3     0x30389  1      OPC=nop             
  nop                          #  4     0x3038a  1      OPC=nop             
  nop                          #  5     0x3038b  1      OPC=nop             
  nop                          #  6     0x3038c  1      OPC=nop             
  addq %r15, %r11              #  7     0x3038d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x30390  3      OPC=jmpq_r64        
  nop                          #  9     0x30393  1      OPC=nop             
  nop                          #  10    0x30394  1      OPC=nop             
  nop                          #  11    0x30395  1      OPC=nop             
  nop                          #  12    0x30396  1      OPC=nop             
  nop                          #  13    0x30397  1      OPC=nop             
  nop                          #  14    0x30398  1      OPC=nop             
  nop                          #  15    0x30399  1      OPC=nop             
  nop                          #  16    0x3039a  1      OPC=nop             
  nop                          #  17    0x3039b  1      OPC=nop             
  nop                          #  18    0x3039c  1      OPC=nop             
  nop                          #  19    0x3039d  1      OPC=nop             
  nop                          #  20    0x3039e  1      OPC=nop             
  nop                          #  21    0x3039f  1      OPC=nop             
  nop                          #  22    0x303a0  1      OPC=nop             
  nop                          #  23    0x303a1  1      OPC=nop             
  nop                          #  24    0x303a2  1      OPC=nop             
  nop                          #  25    0x303a3  1      OPC=nop             
  nop                          #  26    0x303a4  1      OPC=nop             
  nop                          #  27    0x303a5  1      OPC=nop             
  nop                          #  28    0x303a6  1      OPC=nop             
                                                                            
.size NACL_AnnotateRWLockReleased, .-NACL_AnnotateRWLockReleased

