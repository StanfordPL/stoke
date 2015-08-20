  .text
  .globl NACL_AnnotateMutexIsUsedAsCondVar
  .type NACL_AnnotateMutexIsUsedAsCondVar, @function

#! file-offset 0x6ff00
#! rip-offset  0x2ff00
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateMutexIsUsedAsCondVar:  #        0x2ff00  0      OPC=<label>         
  popq %r11                          #  1     0x2ff00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  2     0x2ff02  7      OPC=andl_r32_imm32  
  nop                                #  3     0x2ff09  1      OPC=nop             
  nop                                #  4     0x2ff0a  1      OPC=nop             
  nop                                #  5     0x2ff0b  1      OPC=nop             
  nop                                #  6     0x2ff0c  1      OPC=nop             
  addq %r15, %r11                    #  7     0x2ff0d  3      OPC=addq_r64_r64    
  jmpq %r11                          #  8     0x2ff10  3      OPC=jmpq_r64        
  nop                                #  9     0x2ff13  1      OPC=nop             
  nop                                #  10    0x2ff14  1      OPC=nop             
  nop                                #  11    0x2ff15  1      OPC=nop             
  nop                                #  12    0x2ff16  1      OPC=nop             
  nop                                #  13    0x2ff17  1      OPC=nop             
  nop                                #  14    0x2ff18  1      OPC=nop             
  nop                                #  15    0x2ff19  1      OPC=nop             
  nop                                #  16    0x2ff1a  1      OPC=nop             
  nop                                #  17    0x2ff1b  1      OPC=nop             
  nop                                #  18    0x2ff1c  1      OPC=nop             
  nop                                #  19    0x2ff1d  1      OPC=nop             
  nop                                #  20    0x2ff1e  1      OPC=nop             
  nop                                #  21    0x2ff1f  1      OPC=nop             
  nop                                #  22    0x2ff20  1      OPC=nop             
  nop                                #  23    0x2ff21  1      OPC=nop             
  nop                                #  24    0x2ff22  1      OPC=nop             
  nop                                #  25    0x2ff23  1      OPC=nop             
  nop                                #  26    0x2ff24  1      OPC=nop             
  nop                                #  27    0x2ff25  1      OPC=nop             
  nop                                #  28    0x2ff26  1      OPC=nop             
                                                                                  
.size NACL_AnnotateMutexIsUsedAsCondVar, .-NACL_AnnotateMutexIsUsedAsCondVar

