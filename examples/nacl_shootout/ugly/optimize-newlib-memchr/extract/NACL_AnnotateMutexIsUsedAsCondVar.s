  .text
  .globl NACL_AnnotateMutexIsUsedAsCondVar
  .type NACL_AnnotateMutexIsUsedAsCondVar, @function

#! file-offset 0x70620
#! rip-offset  0x30620
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateMutexIsUsedAsCondVar:  #        0x30620  0      OPC=<label>         
  popq %r11                          #  1     0x30620  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  2     0x30622  7      OPC=andl_r32_imm32  
  nop                                #  3     0x30629  1      OPC=nop             
  nop                                #  4     0x3062a  1      OPC=nop             
  nop                                #  5     0x3062b  1      OPC=nop             
  nop                                #  6     0x3062c  1      OPC=nop             
  addq %r15, %r11                    #  7     0x3062d  3      OPC=addq_r64_r64    
  jmpq %r11                          #  8     0x30630  3      OPC=jmpq_r64        
  nop                                #  9     0x30633  1      OPC=nop             
  nop                                #  10    0x30634  1      OPC=nop             
  nop                                #  11    0x30635  1      OPC=nop             
  nop                                #  12    0x30636  1      OPC=nop             
  nop                                #  13    0x30637  1      OPC=nop             
  nop                                #  14    0x30638  1      OPC=nop             
  nop                                #  15    0x30639  1      OPC=nop             
  nop                                #  16    0x3063a  1      OPC=nop             
  nop                                #  17    0x3063b  1      OPC=nop             
  nop                                #  18    0x3063c  1      OPC=nop             
  nop                                #  19    0x3063d  1      OPC=nop             
  nop                                #  20    0x3063e  1      OPC=nop             
  nop                                #  21    0x3063f  1      OPC=nop             
  nop                                #  22    0x30640  1      OPC=nop             
  nop                                #  23    0x30641  1      OPC=nop             
  nop                                #  24    0x30642  1      OPC=nop             
  nop                                #  25    0x30643  1      OPC=nop             
  nop                                #  26    0x30644  1      OPC=nop             
  nop                                #  27    0x30645  1      OPC=nop             
  nop                                #  28    0x30646  1      OPC=nop             
                                                                                  
.size NACL_AnnotateMutexIsUsedAsCondVar, .-NACL_AnnotateMutexIsUsedAsCondVar

