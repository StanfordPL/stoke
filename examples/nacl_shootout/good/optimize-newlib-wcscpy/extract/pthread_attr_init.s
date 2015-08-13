  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x6d780
#! rip-offset  0x2d780
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.pthread_attr_init:                #        0x2d780  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x2d780  2      OPC=movl_r32_r32    
  movl $0x16, %eax                 #  2     0x2d782  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi                 #  3     0x2d787  3      OPC=testq_r64_r64   
  je .L_2d7c0                      #  4     0x2d78a  2      OPC=je_label        
  movl %edi, %edi                  #  5     0x2d78c  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rdi,1)         #  6     0x2d78e  8      OPC=movl_m32_imm32  
  nop                              #  7     0x2d796  1      OPC=nop             
  nop                              #  8     0x2d797  1      OPC=nop             
  nop                              #  9     0x2d798  1      OPC=nop             
  nop                              #  10    0x2d799  1      OPC=nop             
  nop                              #  11    0x2d79a  1      OPC=nop             
  nop                              #  12    0x2d79b  1      OPC=nop             
  nop                              #  13    0x2d79c  1      OPC=nop             
  nop                              #  14    0x2d79d  1      OPC=nop             
  nop                              #  15    0x2d79e  1      OPC=nop             
  nop                              #  16    0x2d79f  1      OPC=nop             
  movl %edi, %edi                  #  17    0x2d7a0  2      OPC=movl_r32_r32    
  movl $0x80000, 0x4(%r15,%rdi,1)  #  18    0x2d7a2  9      OPC=movl_m32_imm32  
  xorb %al, %al                    #  19    0x2d7ab  2      OPC=xorb_r8_r8      
  nop                              #  20    0x2d7ad  1      OPC=nop             
  nop                              #  21    0x2d7ae  1      OPC=nop             
  nop                              #  22    0x2d7af  1      OPC=nop             
  nop                              #  23    0x2d7b0  1      OPC=nop             
  nop                              #  24    0x2d7b1  1      OPC=nop             
  nop                              #  25    0x2d7b2  1      OPC=nop             
  nop                              #  26    0x2d7b3  1      OPC=nop             
  nop                              #  27    0x2d7b4  1      OPC=nop             
  nop                              #  28    0x2d7b5  1      OPC=nop             
  nop                              #  29    0x2d7b6  1      OPC=nop             
  nop                              #  30    0x2d7b7  1      OPC=nop             
  nop                              #  31    0x2d7b8  1      OPC=nop             
  nop                              #  32    0x2d7b9  1      OPC=nop             
  nop                              #  33    0x2d7ba  1      OPC=nop             
  nop                              #  34    0x2d7bb  1      OPC=nop             
  nop                              #  35    0x2d7bc  1      OPC=nop             
  nop                              #  36    0x2d7bd  1      OPC=nop             
  nop                              #  37    0x2d7be  1      OPC=nop             
  nop                              #  38    0x2d7bf  1      OPC=nop             
.L_2d7c0:                          #        0x2d7c0  0      OPC=<label>         
  popq %r11                        #  39    0x2d7c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  40    0x2d7c2  7      OPC=andl_r32_imm32  
  nop                              #  41    0x2d7c9  1      OPC=nop             
  nop                              #  42    0x2d7ca  1      OPC=nop             
  nop                              #  43    0x2d7cb  1      OPC=nop             
  nop                              #  44    0x2d7cc  1      OPC=nop             
  addq %r15, %r11                  #  45    0x2d7cd  3      OPC=addq_r64_r64    
  jmpq %r11                        #  46    0x2d7d0  3      OPC=jmpq_r64        
  nop                              #  47    0x2d7d3  1      OPC=nop             
  nop                              #  48    0x2d7d4  1      OPC=nop             
  nop                              #  49    0x2d7d5  1      OPC=nop             
  nop                              #  50    0x2d7d6  1      OPC=nop             
  nop                              #  51    0x2d7d7  1      OPC=nop             
  nop                              #  52    0x2d7d8  1      OPC=nop             
  nop                              #  53    0x2d7d9  1      OPC=nop             
  nop                              #  54    0x2d7da  1      OPC=nop             
  nop                              #  55    0x2d7db  1      OPC=nop             
  nop                              #  56    0x2d7dc  1      OPC=nop             
  nop                              #  57    0x2d7dd  1      OPC=nop             
  nop                              #  58    0x2d7de  1      OPC=nop             
  nop                              #  59    0x2d7df  1      OPC=nop             
  nop                              #  60    0x2d7e0  1      OPC=nop             
  nop                              #  61    0x2d7e1  1      OPC=nop             
  nop                              #  62    0x2d7e2  1      OPC=nop             
  nop                              #  63    0x2d7e3  1      OPC=nop             
  nop                              #  64    0x2d7e4  1      OPC=nop             
  nop                              #  65    0x2d7e5  1      OPC=nop             
  nop                              #  66    0x2d7e6  1      OPC=nop             
                                                                                
.size pthread_attr_init, .-pthread_attr_init

