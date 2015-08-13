  .text
  .globl NACL_AnnotateThreadName
  .type NACL_AnnotateThreadName, @function

#! file-offset 0x6fc60
#! rip-offset  0x2fc60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateThreadName:  #        0x2fc60  0      OPC=<label>         
  popq %r11                #  1     0x2fc60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fc62  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fc69  1      OPC=nop             
  nop                      #  4     0x2fc6a  1      OPC=nop             
  nop                      #  5     0x2fc6b  1      OPC=nop             
  nop                      #  6     0x2fc6c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fc6d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fc70  3      OPC=jmpq_r64        
  nop                      #  9     0x2fc73  1      OPC=nop             
  nop                      #  10    0x2fc74  1      OPC=nop             
  nop                      #  11    0x2fc75  1      OPC=nop             
  nop                      #  12    0x2fc76  1      OPC=nop             
  nop                      #  13    0x2fc77  1      OPC=nop             
  nop                      #  14    0x2fc78  1      OPC=nop             
  nop                      #  15    0x2fc79  1      OPC=nop             
  nop                      #  16    0x2fc7a  1      OPC=nop             
  nop                      #  17    0x2fc7b  1      OPC=nop             
  nop                      #  18    0x2fc7c  1      OPC=nop             
  nop                      #  19    0x2fc7d  1      OPC=nop             
  nop                      #  20    0x2fc7e  1      OPC=nop             
  nop                      #  21    0x2fc7f  1      OPC=nop             
  nop                      #  22    0x2fc80  1      OPC=nop             
  nop                      #  23    0x2fc81  1      OPC=nop             
  nop                      #  24    0x2fc82  1      OPC=nop             
  nop                      #  25    0x2fc83  1      OPC=nop             
  nop                      #  26    0x2fc84  1      OPC=nop             
  nop                      #  27    0x2fc85  1      OPC=nop             
  nop                      #  28    0x2fc86  1      OPC=nop             
                                                                        
.size NACL_AnnotateThreadName, .-NACL_AnnotateThreadName

