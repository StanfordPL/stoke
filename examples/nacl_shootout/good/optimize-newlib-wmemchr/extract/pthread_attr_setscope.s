  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x6db80
#! rip-offset  0x2db80
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode               
.pthread_attr_setscope:    #        0x2db80  0      OPC=<label>          
  testl %esi, %esi         #  1     0x2db80  2      OPC=testl_r32_r32    
  movl $0x5f, %eax         #  2     0x2db82  5      OPC=movl_r32_imm32   
  je .L_2dba0              #  3     0x2db87  2      OPC=je_label         
  xorb %al, %al            #  4     0x2db89  2      OPC=xorb_r8_r8       
  movl $0x16, %edx         #  5     0x2db8b  5      OPC=movl_r32_imm32   
  cmpl $0x1, %esi          #  6     0x2db90  3      OPC=cmpl_r32_imm8    
  cmovnel %edx, %eax       #  7     0x2db93  3      OPC=cmovnel_r32_r32  
  nop                      #  8     0x2db96  1      OPC=nop              
  nop                      #  9     0x2db97  1      OPC=nop              
  nop                      #  10    0x2db98  1      OPC=nop              
  nop                      #  11    0x2db99  1      OPC=nop              
  nop                      #  12    0x2db9a  1      OPC=nop              
  nop                      #  13    0x2db9b  1      OPC=nop              
  nop                      #  14    0x2db9c  1      OPC=nop              
  nop                      #  15    0x2db9d  1      OPC=nop              
  nop                      #  16    0x2db9e  1      OPC=nop              
  nop                      #  17    0x2db9f  1      OPC=nop              
.L_2dba0:                  #        0x2dba0  0      OPC=<label>          
  popq %r11                #  18    0x2dba0  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d  #  19    0x2dba2  7      OPC=andl_r32_imm32   
  nop                      #  20    0x2dba9  1      OPC=nop              
  nop                      #  21    0x2dbaa  1      OPC=nop              
  nop                      #  22    0x2dbab  1      OPC=nop              
  nop                      #  23    0x2dbac  1      OPC=nop              
  addq %r15, %r11          #  24    0x2dbad  3      OPC=addq_r64_r64     
  jmpq %r11                #  25    0x2dbb0  3      OPC=jmpq_r64         
  nop                      #  26    0x2dbb3  1      OPC=nop              
  nop                      #  27    0x2dbb4  1      OPC=nop              
  nop                      #  28    0x2dbb5  1      OPC=nop              
  nop                      #  29    0x2dbb6  1      OPC=nop              
  nop                      #  30    0x2dbb7  1      OPC=nop              
  nop                      #  31    0x2dbb8  1      OPC=nop              
  nop                      #  32    0x2dbb9  1      OPC=nop              
  nop                      #  33    0x2dbba  1      OPC=nop              
  nop                      #  34    0x2dbbb  1      OPC=nop              
  nop                      #  35    0x2dbbc  1      OPC=nop              
  nop                      #  36    0x2dbbd  1      OPC=nop              
  nop                      #  37    0x2dbbe  1      OPC=nop              
  nop                      #  38    0x2dbbf  1      OPC=nop              
  nop                      #  39    0x2dbc0  1      OPC=nop              
  nop                      #  40    0x2dbc1  1      OPC=nop              
  nop                      #  41    0x2dbc2  1      OPC=nop              
  nop                      #  42    0x2dbc3  1      OPC=nop              
  nop                      #  43    0x2dbc4  1      OPC=nop              
  nop                      #  44    0x2dbc5  1      OPC=nop              
  nop                      #  45    0x2dbc6  1      OPC=nop              
                                                                         
.size pthread_attr_setscope, .-pthread_attr_setscope

