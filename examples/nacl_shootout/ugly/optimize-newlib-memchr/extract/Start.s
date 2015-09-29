  .text
  .globl Start
  .type Start, @function

#! file-offset 0x67100
#! rip-offset  0x27100
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Start:                        #        0x27100  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x27100  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x27103  3      OPC=addq_r64_r64    
  xorl %eax, %eax              #  3     0x27106  2      OPC=xorl_r32_r32    
  nop                          #  4     0x27108  1      OPC=nop             
  nop                          #  5     0x27109  1      OPC=nop             
  nop                          #  6     0x2710a  1      OPC=nop             
  nop                          #  7     0x2710b  1      OPC=nop             
  nop                          #  8     0x2710c  1      OPC=nop             
  nop                          #  9     0x2710d  1      OPC=nop             
  nop                          #  10    0x2710e  1      OPC=nop             
  nop                          #  11    0x2710f  1      OPC=nop             
  nop                          #  12    0x27110  1      OPC=nop             
  nop                          #  13    0x27111  1      OPC=nop             
  nop                          #  14    0x27112  1      OPC=nop             
  nop                          #  15    0x27113  1      OPC=nop             
  nop                          #  16    0x27114  1      OPC=nop             
  nop                          #  17    0x27115  1      OPC=nop             
  nop                          #  18    0x27116  1      OPC=nop             
  nop                          #  19    0x27117  1      OPC=nop             
  nop                          #  20    0x27118  1      OPC=nop             
  nop                          #  21    0x27119  1      OPC=nop             
  nop                          #  22    0x2711a  1      OPC=nop             
  callq .Milliseconds          #  23    0x2711b  5      OPC=callq_label     
  movl %eax, 0x10052096(%rip)  #  24    0x27120  6      OPC=movl_m32_r32    
  addl $0x8, %esp              #  25    0x27126  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  26    0x27129  3      OPC=addq_r64_r64    
  popq %r11                    #  27    0x2712c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  28    0x2712e  7      OPC=andl_r32_imm32  
  nop                          #  29    0x27135  1      OPC=nop             
  nop                          #  30    0x27136  1      OPC=nop             
  nop                          #  31    0x27137  1      OPC=nop             
  nop                          #  32    0x27138  1      OPC=nop             
  addq %r15, %r11              #  33    0x27139  3      OPC=addq_r64_r64    
  jmpq %r11                    #  34    0x2713c  3      OPC=jmpq_r64        
  nop                          #  35    0x2713f  1      OPC=nop             
  nop                          #  36    0x27140  1      OPC=nop             
  nop                          #  37    0x27141  1      OPC=nop             
  nop                          #  38    0x27142  1      OPC=nop             
  nop                          #  39    0x27143  1      OPC=nop             
  nop                          #  40    0x27144  1      OPC=nop             
  nop                          #  41    0x27145  1      OPC=nop             
  nop                          #  42    0x27146  1      OPC=nop             
                                                                            
.size Start, .-Start

