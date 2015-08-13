  .text
  .globl NACL_AnnotateNoOp
  .type NACL_AnnotateNoOp, @function

#! file-offset 0x6fd60
#! rip-offset  0x2fd60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateNoOp:        #        0x2fd60  0      OPC=<label>         
  popq %r11                #  1     0x2fd60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fd62  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fd69  1      OPC=nop             
  nop                      #  4     0x2fd6a  1      OPC=nop             
  nop                      #  5     0x2fd6b  1      OPC=nop             
  nop                      #  6     0x2fd6c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fd6d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fd70  3      OPC=jmpq_r64        
  nop                      #  9     0x2fd73  1      OPC=nop             
  nop                      #  10    0x2fd74  1      OPC=nop             
  nop                      #  11    0x2fd75  1      OPC=nop             
  nop                      #  12    0x2fd76  1      OPC=nop             
  nop                      #  13    0x2fd77  1      OPC=nop             
  nop                      #  14    0x2fd78  1      OPC=nop             
  nop                      #  15    0x2fd79  1      OPC=nop             
  nop                      #  16    0x2fd7a  1      OPC=nop             
  nop                      #  17    0x2fd7b  1      OPC=nop             
  nop                      #  18    0x2fd7c  1      OPC=nop             
  nop                      #  19    0x2fd7d  1      OPC=nop             
  nop                      #  20    0x2fd7e  1      OPC=nop             
  nop                      #  21    0x2fd7f  1      OPC=nop             
  nop                      #  22    0x2fd80  1      OPC=nop             
  nop                      #  23    0x2fd81  1      OPC=nop             
  nop                      #  24    0x2fd82  1      OPC=nop             
  nop                      #  25    0x2fd83  1      OPC=nop             
  nop                      #  26    0x2fd84  1      OPC=nop             
  nop                      #  27    0x2fd85  1      OPC=nop             
  nop                      #  28    0x2fd86  1      OPC=nop             
                                                                        
.size NACL_AnnotateNoOp, .-NACL_AnnotateNoOp

