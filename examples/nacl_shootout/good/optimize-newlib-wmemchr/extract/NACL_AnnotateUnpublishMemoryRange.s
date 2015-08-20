  .text
  .globl NACL_AnnotateUnpublishMemoryRange
  .type NACL_AnnotateUnpublishMemoryRange, @function

#! file-offset 0x6fdc0
#! rip-offset  0x2fdc0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateUnpublishMemoryRange:  #        0x2fdc0  0      OPC=<label>         
  popq %r11                          #  1     0x2fdc0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  2     0x2fdc2  7      OPC=andl_r32_imm32  
  nop                                #  3     0x2fdc9  1      OPC=nop             
  nop                                #  4     0x2fdca  1      OPC=nop             
  nop                                #  5     0x2fdcb  1      OPC=nop             
  nop                                #  6     0x2fdcc  1      OPC=nop             
  addq %r15, %r11                    #  7     0x2fdcd  3      OPC=addq_r64_r64    
  jmpq %r11                          #  8     0x2fdd0  3      OPC=jmpq_r64        
  nop                                #  9     0x2fdd3  1      OPC=nop             
  nop                                #  10    0x2fdd4  1      OPC=nop             
  nop                                #  11    0x2fdd5  1      OPC=nop             
  nop                                #  12    0x2fdd6  1      OPC=nop             
  nop                                #  13    0x2fdd7  1      OPC=nop             
  nop                                #  14    0x2fdd8  1      OPC=nop             
  nop                                #  15    0x2fdd9  1      OPC=nop             
  nop                                #  16    0x2fdda  1      OPC=nop             
  nop                                #  17    0x2fddb  1      OPC=nop             
  nop                                #  18    0x2fddc  1      OPC=nop             
  nop                                #  19    0x2fddd  1      OPC=nop             
  nop                                #  20    0x2fdde  1      OPC=nop             
  nop                                #  21    0x2fddf  1      OPC=nop             
  nop                                #  22    0x2fde0  1      OPC=nop             
  nop                                #  23    0x2fde1  1      OPC=nop             
  nop                                #  24    0x2fde2  1      OPC=nop             
  nop                                #  25    0x2fde3  1      OPC=nop             
  nop                                #  26    0x2fde4  1      OPC=nop             
  nop                                #  27    0x2fde5  1      OPC=nop             
  nop                                #  28    0x2fde6  1      OPC=nop             
                                                                                  
.size NACL_AnnotateUnpublishMemoryRange, .-NACL_AnnotateUnpublishMemoryRange

