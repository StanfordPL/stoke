  .text
  .globl NACL_AnnotateUnpublishMemoryRange
  .type NACL_AnnotateUnpublishMemoryRange, @function

#! file-offset 0x704e0
#! rip-offset  0x304e0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateUnpublishMemoryRange:  #        0x304e0  0      OPC=<label>         
  popq %r11                          #  1     0x304e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  2     0x304e2  7      OPC=andl_r32_imm32  
  nop                                #  3     0x304e9  1      OPC=nop             
  nop                                #  4     0x304ea  1      OPC=nop             
  nop                                #  5     0x304eb  1      OPC=nop             
  nop                                #  6     0x304ec  1      OPC=nop             
  addq %r15, %r11                    #  7     0x304ed  3      OPC=addq_r64_r64    
  jmpq %r11                          #  8     0x304f0  3      OPC=jmpq_r64        
  nop                                #  9     0x304f3  1      OPC=nop             
  nop                                #  10    0x304f4  1      OPC=nop             
  nop                                #  11    0x304f5  1      OPC=nop             
  nop                                #  12    0x304f6  1      OPC=nop             
  nop                                #  13    0x304f7  1      OPC=nop             
  nop                                #  14    0x304f8  1      OPC=nop             
  nop                                #  15    0x304f9  1      OPC=nop             
  nop                                #  16    0x304fa  1      OPC=nop             
  nop                                #  17    0x304fb  1      OPC=nop             
  nop                                #  18    0x304fc  1      OPC=nop             
  nop                                #  19    0x304fd  1      OPC=nop             
  nop                                #  20    0x304fe  1      OPC=nop             
  nop                                #  21    0x304ff  1      OPC=nop             
  nop                                #  22    0x30500  1      OPC=nop             
  nop                                #  23    0x30501  1      OPC=nop             
  nop                                #  24    0x30502  1      OPC=nop             
  nop                                #  25    0x30503  1      OPC=nop             
  nop                                #  26    0x30504  1      OPC=nop             
  nop                                #  27    0x30505  1      OPC=nop             
  nop                                #  28    0x30506  1      OPC=nop             
                                                                                  
.size NACL_AnnotateUnpublishMemoryRange, .-NACL_AnnotateUnpublishMemoryRange

