  .text
  .globl NACL_AnnotateHappensAfter
  .type NACL_AnnotateHappensAfter, @function

#! file-offset 0x704a0
#! rip-offset  0x304a0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateHappensAfter:  #        0x304a0  0      OPC=<label>         
  popq %r11                  #  1     0x304a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  2     0x304a2  7      OPC=andl_r32_imm32  
  nop                        #  3     0x304a9  1      OPC=nop             
  nop                        #  4     0x304aa  1      OPC=nop             
  nop                        #  5     0x304ab  1      OPC=nop             
  nop                        #  6     0x304ac  1      OPC=nop             
  addq %r15, %r11            #  7     0x304ad  3      OPC=addq_r64_r64    
  jmpq %r11                  #  8     0x304b0  3      OPC=jmpq_r64        
  nop                        #  9     0x304b3  1      OPC=nop             
  nop                        #  10    0x304b4  1      OPC=nop             
  nop                        #  11    0x304b5  1      OPC=nop             
  nop                        #  12    0x304b6  1      OPC=nop             
  nop                        #  13    0x304b7  1      OPC=nop             
  nop                        #  14    0x304b8  1      OPC=nop             
  nop                        #  15    0x304b9  1      OPC=nop             
  nop                        #  16    0x304ba  1      OPC=nop             
  nop                        #  17    0x304bb  1      OPC=nop             
  nop                        #  18    0x304bc  1      OPC=nop             
  nop                        #  19    0x304bd  1      OPC=nop             
  nop                        #  20    0x304be  1      OPC=nop             
  nop                        #  21    0x304bf  1      OPC=nop             
  nop                        #  22    0x304c0  1      OPC=nop             
  nop                        #  23    0x304c1  1      OPC=nop             
  nop                        #  24    0x304c2  1      OPC=nop             
  nop                        #  25    0x304c3  1      OPC=nop             
  nop                        #  26    0x304c4  1      OPC=nop             
  nop                        #  27    0x304c5  1      OPC=nop             
  nop                        #  28    0x304c6  1      OPC=nop             
                                                                          
.size NACL_AnnotateHappensAfter, .-NACL_AnnotateHappensAfter

