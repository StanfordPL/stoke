  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x6e2a0
#! rip-offset  0x2e2a0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode               
.pthread_attr_setscope:    #        0x2e2a0  0      OPC=<label>          
  testl %esi, %esi         #  1     0x2e2a0  2      OPC=testl_r32_r32    
  movl $0x5f, %eax         #  2     0x2e2a2  5      OPC=movl_r32_imm32   
  je .L_2e2c0              #  3     0x2e2a7  2      OPC=je_label         
  xorb %al, %al            #  4     0x2e2a9  2      OPC=xorb_r8_r8       
  movl $0x16, %edx         #  5     0x2e2ab  5      OPC=movl_r32_imm32   
  cmpl $0x1, %esi          #  6     0x2e2b0  3      OPC=cmpl_r32_imm8    
  cmovnel %edx, %eax       #  7     0x2e2b3  3      OPC=cmovnel_r32_r32  
  nop                      #  8     0x2e2b6  1      OPC=nop              
  nop                      #  9     0x2e2b7  1      OPC=nop              
  nop                      #  10    0x2e2b8  1      OPC=nop              
  nop                      #  11    0x2e2b9  1      OPC=nop              
  nop                      #  12    0x2e2ba  1      OPC=nop              
  nop                      #  13    0x2e2bb  1      OPC=nop              
  nop                      #  14    0x2e2bc  1      OPC=nop              
  nop                      #  15    0x2e2bd  1      OPC=nop              
  nop                      #  16    0x2e2be  1      OPC=nop              
  nop                      #  17    0x2e2bf  1      OPC=nop              
.L_2e2c0:                  #        0x2e2c0  0      OPC=<label>          
  popq %r11                #  18    0x2e2c0  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d  #  19    0x2e2c2  7      OPC=andl_r32_imm32   
  nop                      #  20    0x2e2c9  1      OPC=nop              
  nop                      #  21    0x2e2ca  1      OPC=nop              
  nop                      #  22    0x2e2cb  1      OPC=nop              
  nop                      #  23    0x2e2cc  1      OPC=nop              
  addq %r15, %r11          #  24    0x2e2cd  3      OPC=addq_r64_r64     
  jmpq %r11                #  25    0x2e2d0  3      OPC=jmpq_r64         
  nop                      #  26    0x2e2d3  1      OPC=nop              
  nop                      #  27    0x2e2d4  1      OPC=nop              
  nop                      #  28    0x2e2d5  1      OPC=nop              
  nop                      #  29    0x2e2d6  1      OPC=nop              
  nop                      #  30    0x2e2d7  1      OPC=nop              
  nop                      #  31    0x2e2d8  1      OPC=nop              
  nop                      #  32    0x2e2d9  1      OPC=nop              
  nop                      #  33    0x2e2da  1      OPC=nop              
  nop                      #  34    0x2e2db  1      OPC=nop              
  nop                      #  35    0x2e2dc  1      OPC=nop              
  nop                      #  36    0x2e2dd  1      OPC=nop              
  nop                      #  37    0x2e2de  1      OPC=nop              
  nop                      #  38    0x2e2df  1      OPC=nop              
  nop                      #  39    0x2e2e0  1      OPC=nop              
  nop                      #  40    0x2e2e1  1      OPC=nop              
  nop                      #  41    0x2e2e2  1      OPC=nop              
  nop                      #  42    0x2e2e3  1      OPC=nop              
  nop                      #  43    0x2e2e4  1      OPC=nop              
  nop                      #  44    0x2e2e5  1      OPC=nop              
  nop                      #  45    0x2e2e6  1      OPC=nop              
                                                                         
.size pthread_attr_setscope, .-pthread_attr_setscope

