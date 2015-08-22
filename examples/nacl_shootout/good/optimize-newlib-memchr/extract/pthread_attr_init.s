  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x6e1a0
#! rip-offset  0x2e1a0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.pthread_attr_init:                #        0x2e1a0  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x2e1a0  2      OPC=movl_r32_r32    
  movl $0x16, %eax                 #  2     0x2e1a2  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi                 #  3     0x2e1a7  3      OPC=testq_r64_r64   
  je .L_2e1e0                      #  4     0x2e1aa  2      OPC=je_label        
  movl %edi, %edi                  #  5     0x2e1ac  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rdi,1)         #  6     0x2e1ae  8      OPC=movl_m32_imm32  
  nop                              #  7     0x2e1b6  1      OPC=nop             
  nop                              #  8     0x2e1b7  1      OPC=nop             
  nop                              #  9     0x2e1b8  1      OPC=nop             
  nop                              #  10    0x2e1b9  1      OPC=nop             
  nop                              #  11    0x2e1ba  1      OPC=nop             
  nop                              #  12    0x2e1bb  1      OPC=nop             
  nop                              #  13    0x2e1bc  1      OPC=nop             
  nop                              #  14    0x2e1bd  1      OPC=nop             
  nop                              #  15    0x2e1be  1      OPC=nop             
  nop                              #  16    0x2e1bf  1      OPC=nop             
  movl %edi, %edi                  #  17    0x2e1c0  2      OPC=movl_r32_r32    
  movl $0x80000, 0x4(%r15,%rdi,1)  #  18    0x2e1c2  9      OPC=movl_m32_imm32  
  xorb %al, %al                    #  19    0x2e1cb  2      OPC=xorb_r8_r8      
  nop                              #  20    0x2e1cd  1      OPC=nop             
  nop                              #  21    0x2e1ce  1      OPC=nop             
  nop                              #  22    0x2e1cf  1      OPC=nop             
  nop                              #  23    0x2e1d0  1      OPC=nop             
  nop                              #  24    0x2e1d1  1      OPC=nop             
  nop                              #  25    0x2e1d2  1      OPC=nop             
  nop                              #  26    0x2e1d3  1      OPC=nop             
  nop                              #  27    0x2e1d4  1      OPC=nop             
  nop                              #  28    0x2e1d5  1      OPC=nop             
  nop                              #  29    0x2e1d6  1      OPC=nop             
  nop                              #  30    0x2e1d7  1      OPC=nop             
  nop                              #  31    0x2e1d8  1      OPC=nop             
  nop                              #  32    0x2e1d9  1      OPC=nop             
  nop                              #  33    0x2e1da  1      OPC=nop             
  nop                              #  34    0x2e1db  1      OPC=nop             
  nop                              #  35    0x2e1dc  1      OPC=nop             
  nop                              #  36    0x2e1dd  1      OPC=nop             
  nop                              #  37    0x2e1de  1      OPC=nop             
  nop                              #  38    0x2e1df  1      OPC=nop             
.L_2e1e0:                          #        0x2e1e0  0      OPC=<label>         
  popq %r11                        #  39    0x2e1e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  40    0x2e1e2  7      OPC=andl_r32_imm32  
  nop                              #  41    0x2e1e9  1      OPC=nop             
  nop                              #  42    0x2e1ea  1      OPC=nop             
  nop                              #  43    0x2e1eb  1      OPC=nop             
  nop                              #  44    0x2e1ec  1      OPC=nop             
  addq %r15, %r11                  #  45    0x2e1ed  3      OPC=addq_r64_r64    
  jmpq %r11                        #  46    0x2e1f0  3      OPC=jmpq_r64        
  nop                              #  47    0x2e1f3  1      OPC=nop             
  nop                              #  48    0x2e1f4  1      OPC=nop             
  nop                              #  49    0x2e1f5  1      OPC=nop             
  nop                              #  50    0x2e1f6  1      OPC=nop             
  nop                              #  51    0x2e1f7  1      OPC=nop             
  nop                              #  52    0x2e1f8  1      OPC=nop             
  nop                              #  53    0x2e1f9  1      OPC=nop             
  nop                              #  54    0x2e1fa  1      OPC=nop             
  nop                              #  55    0x2e1fb  1      OPC=nop             
  nop                              #  56    0x2e1fc  1      OPC=nop             
  nop                              #  57    0x2e1fd  1      OPC=nop             
  nop                              #  58    0x2e1fe  1      OPC=nop             
  nop                              #  59    0x2e1ff  1      OPC=nop             
  nop                              #  60    0x2e200  1      OPC=nop             
  nop                              #  61    0x2e201  1      OPC=nop             
  nop                              #  62    0x2e202  1      OPC=nop             
  nop                              #  63    0x2e203  1      OPC=nop             
  nop                              #  64    0x2e204  1      OPC=nop             
  nop                              #  65    0x2e205  1      OPC=nop             
  nop                              #  66    0x2e206  1      OPC=nop             
                                                                                
.size pthread_attr_init, .-pthread_attr_init

