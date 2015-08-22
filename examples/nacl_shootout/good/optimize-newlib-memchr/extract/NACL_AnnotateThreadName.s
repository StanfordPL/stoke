  .text
  .globl NACL_AnnotateThreadName
  .type NACL_AnnotateThreadName, @function

#! file-offset 0x70680
#! rip-offset  0x30680
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateThreadName:  #        0x30680  0      OPC=<label>         
  popq %r11                #  1     0x30680  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30682  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30689  1      OPC=nop             
  nop                      #  4     0x3068a  1      OPC=nop             
  nop                      #  5     0x3068b  1      OPC=nop             
  nop                      #  6     0x3068c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3068d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30690  3      OPC=jmpq_r64        
  nop                      #  9     0x30693  1      OPC=nop             
  nop                      #  10    0x30694  1      OPC=nop             
  nop                      #  11    0x30695  1      OPC=nop             
  nop                      #  12    0x30696  1      OPC=nop             
  nop                      #  13    0x30697  1      OPC=nop             
  nop                      #  14    0x30698  1      OPC=nop             
  nop                      #  15    0x30699  1      OPC=nop             
  nop                      #  16    0x3069a  1      OPC=nop             
  nop                      #  17    0x3069b  1      OPC=nop             
  nop                      #  18    0x3069c  1      OPC=nop             
  nop                      #  19    0x3069d  1      OPC=nop             
  nop                      #  20    0x3069e  1      OPC=nop             
  nop                      #  21    0x3069f  1      OPC=nop             
  nop                      #  22    0x306a0  1      OPC=nop             
  nop                      #  23    0x306a1  1      OPC=nop             
  nop                      #  24    0x306a2  1      OPC=nop             
  nop                      #  25    0x306a3  1      OPC=nop             
  nop                      #  26    0x306a4  1      OPC=nop             
  nop                      #  27    0x306a5  1      OPC=nop             
  nop                      #  28    0x306a6  1      OPC=nop             
                                                                        
.size NACL_AnnotateThreadName, .-NACL_AnnotateThreadName

