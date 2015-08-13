  .text
  .globl NACL_AnnotateUnpublishMemoryRange
  .type NACL_AnnotateUnpublishMemoryRange, @function

#! file-offset 0x6fac0
#! rip-offset  0x2fac0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateUnpublishMemoryRange:  #        0x2fac0  0      OPC=<label>         
  popq %r11                          #  1     0x2fac0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  2     0x2fac2  7      OPC=andl_r32_imm32  
  nop                                #  3     0x2fac9  1      OPC=nop             
  nop                                #  4     0x2faca  1      OPC=nop             
  nop                                #  5     0x2facb  1      OPC=nop             
  nop                                #  6     0x2facc  1      OPC=nop             
  addq %r15, %r11                    #  7     0x2facd  3      OPC=addq_r64_r64    
  jmpq %r11                          #  8     0x2fad0  3      OPC=jmpq_r64        
  nop                                #  9     0x2fad3  1      OPC=nop             
  nop                                #  10    0x2fad4  1      OPC=nop             
  nop                                #  11    0x2fad5  1      OPC=nop             
  nop                                #  12    0x2fad6  1      OPC=nop             
  nop                                #  13    0x2fad7  1      OPC=nop             
  nop                                #  14    0x2fad8  1      OPC=nop             
  nop                                #  15    0x2fad9  1      OPC=nop             
  nop                                #  16    0x2fada  1      OPC=nop             
  nop                                #  17    0x2fadb  1      OPC=nop             
  nop                                #  18    0x2fadc  1      OPC=nop             
  nop                                #  19    0x2fadd  1      OPC=nop             
  nop                                #  20    0x2fade  1      OPC=nop             
  nop                                #  21    0x2fadf  1      OPC=nop             
  nop                                #  22    0x2fae0  1      OPC=nop             
  nop                                #  23    0x2fae1  1      OPC=nop             
  nop                                #  24    0x2fae2  1      OPC=nop             
  nop                                #  25    0x2fae3  1      OPC=nop             
  nop                                #  26    0x2fae4  1      OPC=nop             
  nop                                #  27    0x2fae5  1      OPC=nop             
  nop                                #  28    0x2fae6  1      OPC=nop             
                                                                                  
.size NACL_AnnotateUnpublishMemoryRange, .-NACL_AnnotateUnpublishMemoryRange

