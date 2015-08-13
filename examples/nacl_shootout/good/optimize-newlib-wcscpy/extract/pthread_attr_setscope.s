  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x6d880
#! rip-offset  0x2d880
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode               
.pthread_attr_setscope:    #        0x2d880  0      OPC=<label>          
  testl %esi, %esi         #  1     0x2d880  2      OPC=testl_r32_r32    
  movl $0x5f, %eax         #  2     0x2d882  5      OPC=movl_r32_imm32   
  je .L_2d8a0              #  3     0x2d887  2      OPC=je_label         
  xorb %al, %al            #  4     0x2d889  2      OPC=xorb_r8_r8       
  movl $0x16, %edx         #  5     0x2d88b  5      OPC=movl_r32_imm32   
  cmpl $0x1, %esi          #  6     0x2d890  3      OPC=cmpl_r32_imm8    
  cmovnel %edx, %eax       #  7     0x2d893  3      OPC=cmovnel_r32_r32  
  nop                      #  8     0x2d896  1      OPC=nop              
  nop                      #  9     0x2d897  1      OPC=nop              
  nop                      #  10    0x2d898  1      OPC=nop              
  nop                      #  11    0x2d899  1      OPC=nop              
  nop                      #  12    0x2d89a  1      OPC=nop              
  nop                      #  13    0x2d89b  1      OPC=nop              
  nop                      #  14    0x2d89c  1      OPC=nop              
  nop                      #  15    0x2d89d  1      OPC=nop              
  nop                      #  16    0x2d89e  1      OPC=nop              
  nop                      #  17    0x2d89f  1      OPC=nop              
.L_2d8a0:                  #        0x2d8a0  0      OPC=<label>          
  popq %r11                #  18    0x2d8a0  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d  #  19    0x2d8a2  7      OPC=andl_r32_imm32   
  nop                      #  20    0x2d8a9  1      OPC=nop              
  nop                      #  21    0x2d8aa  1      OPC=nop              
  nop                      #  22    0x2d8ab  1      OPC=nop              
  nop                      #  23    0x2d8ac  1      OPC=nop              
  addq %r15, %r11          #  24    0x2d8ad  3      OPC=addq_r64_r64     
  jmpq %r11                #  25    0x2d8b0  3      OPC=jmpq_r64         
  nop                      #  26    0x2d8b3  1      OPC=nop              
  nop                      #  27    0x2d8b4  1      OPC=nop              
  nop                      #  28    0x2d8b5  1      OPC=nop              
  nop                      #  29    0x2d8b6  1      OPC=nop              
  nop                      #  30    0x2d8b7  1      OPC=nop              
  nop                      #  31    0x2d8b8  1      OPC=nop              
  nop                      #  32    0x2d8b9  1      OPC=nop              
  nop                      #  33    0x2d8ba  1      OPC=nop              
  nop                      #  34    0x2d8bb  1      OPC=nop              
  nop                      #  35    0x2d8bc  1      OPC=nop              
  nop                      #  36    0x2d8bd  1      OPC=nop              
  nop                      #  37    0x2d8be  1      OPC=nop              
  nop                      #  38    0x2d8bf  1      OPC=nop              
  nop                      #  39    0x2d8c0  1      OPC=nop              
  nop                      #  40    0x2d8c1  1      OPC=nop              
  nop                      #  41    0x2d8c2  1      OPC=nop              
  nop                      #  42    0x2d8c3  1      OPC=nop              
  nop                      #  43    0x2d8c4  1      OPC=nop              
  nop                      #  44    0x2d8c5  1      OPC=nop              
  nop                      #  45    0x2d8c6  1      OPC=nop              
                                                                         
.size pthread_attr_setscope, .-pthread_attr_setscope

