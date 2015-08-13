  .text
  .globl Start
  .type Start, @function

#! file-offset 0x66b80
#! rip-offset  0x26b80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.Start:                        #        0x26b80  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x26b80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x26b83  3      OPC=addq_r64_r64    
  xorl %eax, %eax              #  3     0x26b86  2      OPC=xorl_r32_r32    
  nop                          #  4     0x26b88  1      OPC=nop             
  nop                          #  5     0x26b89  1      OPC=nop             
  nop                          #  6     0x26b8a  1      OPC=nop             
  nop                          #  7     0x26b8b  1      OPC=nop             
  nop                          #  8     0x26b8c  1      OPC=nop             
  nop                          #  9     0x26b8d  1      OPC=nop             
  nop                          #  10    0x26b8e  1      OPC=nop             
  nop                          #  11    0x26b8f  1      OPC=nop             
  nop                          #  12    0x26b90  1      OPC=nop             
  nop                          #  13    0x26b91  1      OPC=nop             
  nop                          #  14    0x26b92  1      OPC=nop             
  nop                          #  15    0x26b93  1      OPC=nop             
  nop                          #  16    0x26b94  1      OPC=nop             
  nop                          #  17    0x26b95  1      OPC=nop             
  nop                          #  18    0x26b96  1      OPC=nop             
  nop                          #  19    0x26b97  1      OPC=nop             
  nop                          #  20    0x26b98  1      OPC=nop             
  nop                          #  21    0x26b99  1      OPC=nop             
  nop                          #  22    0x26b9a  1      OPC=nop             
  callq .Milliseconds          #  23    0x26b9b  5      OPC=callq_label     
  movl %eax, 0x10052616(%rip)  #  24    0x26ba0  6      OPC=movl_m32_r32    
  addl $0x8, %esp              #  25    0x26ba6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  26    0x26ba9  3      OPC=addq_r64_r64    
  popq %r11                    #  27    0x26bac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  28    0x26bae  7      OPC=andl_r32_imm32  
  nop                          #  29    0x26bb5  1      OPC=nop             
  nop                          #  30    0x26bb6  1      OPC=nop             
  nop                          #  31    0x26bb7  1      OPC=nop             
  nop                          #  32    0x26bb8  1      OPC=nop             
  addq %r15, %r11              #  33    0x26bb9  3      OPC=addq_r64_r64    
  jmpq %r11                    #  34    0x26bbc  3      OPC=jmpq_r64        
  nop                          #  35    0x26bbf  1      OPC=nop             
  nop                          #  36    0x26bc0  1      OPC=nop             
  nop                          #  37    0x26bc1  1      OPC=nop             
  nop                          #  38    0x26bc2  1      OPC=nop             
  nop                          #  39    0x26bc3  1      OPC=nop             
  nop                          #  40    0x26bc4  1      OPC=nop             
  nop                          #  41    0x26bc5  1      OPC=nop             
  nop                          #  42    0x26bc6  1      OPC=nop             
                                                                            
.size Start, .-Start

