  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x6da80
#! rip-offset  0x2da80
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.pthread_attr_init:                #        0x2da80  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x2da80  2      OPC=movl_r32_r32    
  movl $0x16, %eax                 #  2     0x2da82  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi                 #  3     0x2da87  3      OPC=testq_r64_r64   
  je .L_2dac0                      #  4     0x2da8a  2      OPC=je_label        
  movl %edi, %edi                  #  5     0x2da8c  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rdi,1)         #  6     0x2da8e  8      OPC=movl_m32_imm32  
  nop                              #  7     0x2da96  1      OPC=nop             
  nop                              #  8     0x2da97  1      OPC=nop             
  nop                              #  9     0x2da98  1      OPC=nop             
  nop                              #  10    0x2da99  1      OPC=nop             
  nop                              #  11    0x2da9a  1      OPC=nop             
  nop                              #  12    0x2da9b  1      OPC=nop             
  nop                              #  13    0x2da9c  1      OPC=nop             
  nop                              #  14    0x2da9d  1      OPC=nop             
  nop                              #  15    0x2da9e  1      OPC=nop             
  nop                              #  16    0x2da9f  1      OPC=nop             
  movl %edi, %edi                  #  17    0x2daa0  2      OPC=movl_r32_r32    
  movl $0x80000, 0x4(%r15,%rdi,1)  #  18    0x2daa2  9      OPC=movl_m32_imm32  
  xorb %al, %al                    #  19    0x2daab  2      OPC=xorb_r8_r8      
  nop                              #  20    0x2daad  1      OPC=nop             
  nop                              #  21    0x2daae  1      OPC=nop             
  nop                              #  22    0x2daaf  1      OPC=nop             
  nop                              #  23    0x2dab0  1      OPC=nop             
  nop                              #  24    0x2dab1  1      OPC=nop             
  nop                              #  25    0x2dab2  1      OPC=nop             
  nop                              #  26    0x2dab3  1      OPC=nop             
  nop                              #  27    0x2dab4  1      OPC=nop             
  nop                              #  28    0x2dab5  1      OPC=nop             
  nop                              #  29    0x2dab6  1      OPC=nop             
  nop                              #  30    0x2dab7  1      OPC=nop             
  nop                              #  31    0x2dab8  1      OPC=nop             
  nop                              #  32    0x2dab9  1      OPC=nop             
  nop                              #  33    0x2daba  1      OPC=nop             
  nop                              #  34    0x2dabb  1      OPC=nop             
  nop                              #  35    0x2dabc  1      OPC=nop             
  nop                              #  36    0x2dabd  1      OPC=nop             
  nop                              #  37    0x2dabe  1      OPC=nop             
  nop                              #  38    0x2dabf  1      OPC=nop             
.L_2dac0:                          #        0x2dac0  0      OPC=<label>         
  popq %r11                        #  39    0x2dac0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  40    0x2dac2  7      OPC=andl_r32_imm32  
  nop                              #  41    0x2dac9  1      OPC=nop             
  nop                              #  42    0x2daca  1      OPC=nop             
  nop                              #  43    0x2dacb  1      OPC=nop             
  nop                              #  44    0x2dacc  1      OPC=nop             
  addq %r15, %r11                  #  45    0x2dacd  3      OPC=addq_r64_r64    
  jmpq %r11                        #  46    0x2dad0  3      OPC=jmpq_r64        
  nop                              #  47    0x2dad3  1      OPC=nop             
  nop                              #  48    0x2dad4  1      OPC=nop             
  nop                              #  49    0x2dad5  1      OPC=nop             
  nop                              #  50    0x2dad6  1      OPC=nop             
  nop                              #  51    0x2dad7  1      OPC=nop             
  nop                              #  52    0x2dad8  1      OPC=nop             
  nop                              #  53    0x2dad9  1      OPC=nop             
  nop                              #  54    0x2dada  1      OPC=nop             
  nop                              #  55    0x2dadb  1      OPC=nop             
  nop                              #  56    0x2dadc  1      OPC=nop             
  nop                              #  57    0x2dadd  1      OPC=nop             
  nop                              #  58    0x2dade  1      OPC=nop             
  nop                              #  59    0x2dadf  1      OPC=nop             
  nop                              #  60    0x2dae0  1      OPC=nop             
  nop                              #  61    0x2dae1  1      OPC=nop             
  nop                              #  62    0x2dae2  1      OPC=nop             
  nop                              #  63    0x2dae3  1      OPC=nop             
  nop                              #  64    0x2dae4  1      OPC=nop             
  nop                              #  65    0x2dae5  1      OPC=nop             
  nop                              #  66    0x2dae6  1      OPC=nop             
                                                                                
.size pthread_attr_init, .-pthread_attr_init

