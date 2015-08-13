  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x6d800
#! rip-offset  0x2d800
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_setdetachstate:  #        0x2d800  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2d800  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  2     0x2d802  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  3     0x2d807  3      OPC=testq_r64_r64   
  je .L_2d820                  #  4     0x2d80a  2      OPC=je_label        
  movl %edi, %edi              #  5     0x2d80c  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)     #  6     0x2d80e  4      OPC=movl_m32_r32    
  xorb %al, %al                #  7     0x2d812  2      OPC=xorb_r8_r8      
  nop                          #  8     0x2d814  1      OPC=nop             
  nop                          #  9     0x2d815  1      OPC=nop             
  nop                          #  10    0x2d816  1      OPC=nop             
  nop                          #  11    0x2d817  1      OPC=nop             
  nop                          #  12    0x2d818  1      OPC=nop             
  nop                          #  13    0x2d819  1      OPC=nop             
  nop                          #  14    0x2d81a  1      OPC=nop             
  nop                          #  15    0x2d81b  1      OPC=nop             
  nop                          #  16    0x2d81c  1      OPC=nop             
  nop                          #  17    0x2d81d  1      OPC=nop             
  nop                          #  18    0x2d81e  1      OPC=nop             
  nop                          #  19    0x2d81f  1      OPC=nop             
.L_2d820:                      #        0x2d820  0      OPC=<label>         
  popq %r11                    #  20    0x2d820  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x2d822  7      OPC=andl_r32_imm32  
  nop                          #  22    0x2d829  1      OPC=nop             
  nop                          #  23    0x2d82a  1      OPC=nop             
  nop                          #  24    0x2d82b  1      OPC=nop             
  nop                          #  25    0x2d82c  1      OPC=nop             
  addq %r15, %r11              #  26    0x2d82d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x2d830  3      OPC=jmpq_r64        
  nop                          #  28    0x2d833  1      OPC=nop             
  nop                          #  29    0x2d834  1      OPC=nop             
  nop                          #  30    0x2d835  1      OPC=nop             
  nop                          #  31    0x2d836  1      OPC=nop             
  nop                          #  32    0x2d837  1      OPC=nop             
  nop                          #  33    0x2d838  1      OPC=nop             
  nop                          #  34    0x2d839  1      OPC=nop             
  nop                          #  35    0x2d83a  1      OPC=nop             
  nop                          #  36    0x2d83b  1      OPC=nop             
  nop                          #  37    0x2d83c  1      OPC=nop             
  nop                          #  38    0x2d83d  1      OPC=nop             
  nop                          #  39    0x2d83e  1      OPC=nop             
  nop                          #  40    0x2d83f  1      OPC=nop             
  nop                          #  41    0x2d840  1      OPC=nop             
  nop                          #  42    0x2d841  1      OPC=nop             
  nop                          #  43    0x2d842  1      OPC=nop             
  nop                          #  44    0x2d843  1      OPC=nop             
  nop                          #  45    0x2d844  1      OPC=nop             
  nop                          #  46    0x2d845  1      OPC=nop             
  nop                          #  47    0x2d846  1      OPC=nop             
                                                                            
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate

