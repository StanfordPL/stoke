  .text
  .globl lflush
  .type lflush, @function

#! file-offset 0x1652a0
#! rip-offset  0x1252a0
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.lflush:                         #        0x1252a0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x1252a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0x1252a2  2      OPC=movl_r32_r32    
  movswl 0xc(%r15,%rdi,1), %eax  #  3     0x1252a4  6      OPC=movswl_r32_m16  
  andl $0x9, %eax                #  4     0x1252aa  3      OPC=andl_r32_imm8   
  cmpl $0x9, %eax                #  5     0x1252ad  3      OPC=cmpl_r32_imm8   
  je .L_1252c0                   #  6     0x1252b0  2      OPC=je_label        
  popq %r11                      #  7     0x1252b2  2      OPC=popq_r64_1      
  xorl %eax, %eax                #  8     0x1252b4  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d        #  9     0x1252b6  7      OPC=andl_r32_imm32  
  nop                            #  10    0x1252bd  1      OPC=nop             
  nop                            #  11    0x1252be  1      OPC=nop             
  nop                            #  12    0x1252bf  1      OPC=nop             
  nop                            #  13    0x1252c0  1      OPC=nop             
  addq %r15, %r11                #  14    0x1252c1  3      OPC=addq_r64_r64    
  jmpq %r11                      #  15    0x1252c4  3      OPC=jmpq_r64        
.L_1252c0:                       #        0x1252c7  0      OPC=<label>         
  jmpq .fflush                   #  16    0x1252c7  5      OPC=jmpq_label_1    
  nop                            #  17    0x1252cc  1      OPC=nop             
  nop                            #  18    0x1252cd  1      OPC=nop             
  nop                            #  19    0x1252ce  1      OPC=nop             
  nop                            #  20    0x1252cf  1      OPC=nop             
  nop                            #  21    0x1252d0  1      OPC=nop             
  nop                            #  22    0x1252d1  1      OPC=nop             
  nop                            #  23    0x1252d2  1      OPC=nop             
  nop                            #  24    0x1252d3  1      OPC=nop             
  nop                            #  25    0x1252d4  1      OPC=nop             
  nop                            #  26    0x1252d5  1      OPC=nop             
  nop                            #  27    0x1252d6  1      OPC=nop             
  nop                            #  28    0x1252d7  1      OPC=nop             
  nop                            #  29    0x1252d8  1      OPC=nop             
  nop                            #  30    0x1252d9  1      OPC=nop             
  nop                            #  31    0x1252da  1      OPC=nop             
  nop                            #  32    0x1252db  1      OPC=nop             
  nop                            #  33    0x1252dc  1      OPC=nop             
  nop                            #  34    0x1252dd  1      OPC=nop             
  nop                            #  35    0x1252de  1      OPC=nop             
  nop                            #  36    0x1252df  1      OPC=nop             
  nop                            #  37    0x1252e0  1      OPC=nop             
  nop                            #  38    0x1252e1  1      OPC=nop             
  nop                            #  39    0x1252e2  1      OPC=nop             
  nop                            #  40    0x1252e3  1      OPC=nop             
  nop                            #  41    0x1252e4  1      OPC=nop             
  nop                            #  42    0x1252e5  1      OPC=nop             
  nop                            #  43    0x1252e6  1      OPC=nop             
                                                                               
.size lflush, .-lflush

