  .text
  .globl NACL_AnnotateIgnoreReadsEnd
  .type NACL_AnnotateIgnoreReadsEnd, @function

#! file-offset 0x706c0
#! rip-offset  0x306c0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreReadsEnd:  #        0x306c0  0      OPC=<label>         
  popq %r11                    #  1     0x306c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x306c2  7      OPC=andl_r32_imm32  
  nop                          #  3     0x306c9  1      OPC=nop             
  nop                          #  4     0x306ca  1      OPC=nop             
  nop                          #  5     0x306cb  1      OPC=nop             
  nop                          #  6     0x306cc  1      OPC=nop             
  addq %r15, %r11              #  7     0x306cd  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x306d0  3      OPC=jmpq_r64        
  nop                          #  9     0x306d3  1      OPC=nop             
  nop                          #  10    0x306d4  1      OPC=nop             
  nop                          #  11    0x306d5  1      OPC=nop             
  nop                          #  12    0x306d6  1      OPC=nop             
  nop                          #  13    0x306d7  1      OPC=nop             
  nop                          #  14    0x306d8  1      OPC=nop             
  nop                          #  15    0x306d9  1      OPC=nop             
  nop                          #  16    0x306da  1      OPC=nop             
  nop                          #  17    0x306db  1      OPC=nop             
  nop                          #  18    0x306dc  1      OPC=nop             
  nop                          #  19    0x306dd  1      OPC=nop             
  nop                          #  20    0x306de  1      OPC=nop             
  nop                          #  21    0x306df  1      OPC=nop             
  nop                          #  22    0x306e0  1      OPC=nop             
  nop                          #  23    0x306e1  1      OPC=nop             
  nop                          #  24    0x306e2  1      OPC=nop             
  nop                          #  25    0x306e3  1      OPC=nop             
  nop                          #  26    0x306e4  1      OPC=nop             
  nop                          #  27    0x306e5  1      OPC=nop             
  nop                          #  28    0x306e6  1      OPC=nop             
                                                                            
.size NACL_AnnotateIgnoreReadsEnd, .-NACL_AnnotateIgnoreReadsEnd

