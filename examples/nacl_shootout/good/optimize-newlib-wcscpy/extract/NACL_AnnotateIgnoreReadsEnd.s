  .text
  .globl NACL_AnnotateIgnoreReadsEnd
  .type NACL_AnnotateIgnoreReadsEnd, @function

#! file-offset 0x6fca0
#! rip-offset  0x2fca0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreReadsEnd:  #        0x2fca0  0      OPC=<label>         
  popq %r11                    #  1     0x2fca0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2fca2  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2fca9  1      OPC=nop             
  nop                          #  4     0x2fcaa  1      OPC=nop             
  nop                          #  5     0x2fcab  1      OPC=nop             
  nop                          #  6     0x2fcac  1      OPC=nop             
  addq %r15, %r11              #  7     0x2fcad  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2fcb0  3      OPC=jmpq_r64        
  nop                          #  9     0x2fcb3  1      OPC=nop             
  nop                          #  10    0x2fcb4  1      OPC=nop             
  nop                          #  11    0x2fcb5  1      OPC=nop             
  nop                          #  12    0x2fcb6  1      OPC=nop             
  nop                          #  13    0x2fcb7  1      OPC=nop             
  nop                          #  14    0x2fcb8  1      OPC=nop             
  nop                          #  15    0x2fcb9  1      OPC=nop             
  nop                          #  16    0x2fcba  1      OPC=nop             
  nop                          #  17    0x2fcbb  1      OPC=nop             
  nop                          #  18    0x2fcbc  1      OPC=nop             
  nop                          #  19    0x2fcbd  1      OPC=nop             
  nop                          #  20    0x2fcbe  1      OPC=nop             
  nop                          #  21    0x2fcbf  1      OPC=nop             
  nop                          #  22    0x2fcc0  1      OPC=nop             
  nop                          #  23    0x2fcc1  1      OPC=nop             
  nop                          #  24    0x2fcc2  1      OPC=nop             
  nop                          #  25    0x2fcc3  1      OPC=nop             
  nop                          #  26    0x2fcc4  1      OPC=nop             
  nop                          #  27    0x2fcc5  1      OPC=nop             
  nop                          #  28    0x2fcc6  1      OPC=nop             
                                                                            
.size NACL_AnnotateIgnoreReadsEnd, .-NACL_AnnotateIgnoreReadsEnd

