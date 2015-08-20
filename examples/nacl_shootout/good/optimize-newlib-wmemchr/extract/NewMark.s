  .text
  .globl NewMark
  .type NewMark, @function

#! file-offset 0x66740
#! rip-offset  0x26740
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NewMark:                      #        0x26740  0      OPC=<label>         
  addl $0x1, 0x1004a9fd(%rip)  #  1     0x26740  7      OPC=addl_m32_imm8   
  popq %r11                    #  2     0x26747  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  3     0x26749  7      OPC=andl_r32_imm32  
  nop                          #  4     0x26750  1      OPC=nop             
  nop                          #  5     0x26751  1      OPC=nop             
  nop                          #  6     0x26752  1      OPC=nop             
  nop                          #  7     0x26753  1      OPC=nop             
  addq %r15, %r11              #  8     0x26754  3      OPC=addq_r64_r64    
  jmpq %r11                    #  9     0x26757  3      OPC=jmpq_r64        
  nop                          #  10    0x2675a  1      OPC=nop             
  nop                          #  11    0x2675b  1      OPC=nop             
  nop                          #  12    0x2675c  1      OPC=nop             
  nop                          #  13    0x2675d  1      OPC=nop             
  nop                          #  14    0x2675e  1      OPC=nop             
  nop                          #  15    0x2675f  1      OPC=nop             
  nop                          #  16    0x26760  1      OPC=nop             
  nop                          #  17    0x26761  1      OPC=nop             
  nop                          #  18    0x26762  1      OPC=nop             
  nop                          #  19    0x26763  1      OPC=nop             
  nop                          #  20    0x26764  1      OPC=nop             
  nop                          #  21    0x26765  1      OPC=nop             
  nop                          #  22    0x26766  1      OPC=nop             
                                                                            
.size NewMark, .-NewMark

