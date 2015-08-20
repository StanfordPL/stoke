  .text
  .globl lflush
  .type lflush, @function

#! file-offset 0x1655a0
#! rip-offset  0x1255a0
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.lflush:                         #        0x1255a0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x1255a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0x1255a2  2      OPC=movl_r32_r32    
  movswl 0xc(%r15,%rdi,1), %eax  #  3     0x1255a4  6      OPC=movswl_r32_m16  
  andl $0x9, %eax                #  4     0x1255aa  3      OPC=andl_r32_imm8   
  cmpl $0x9, %eax                #  5     0x1255ad  3      OPC=cmpl_r32_imm8   
  je .L_1255c0                   #  6     0x1255b0  2      OPC=je_label        
  popq %r11                      #  7     0x1255b2  2      OPC=popq_r64_1      
  xorl %eax, %eax                #  8     0x1255b4  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d        #  9     0x1255b6  7      OPC=andl_r32_imm32  
  nop                            #  10    0x1255bd  1      OPC=nop             
  nop                            #  11    0x1255be  1      OPC=nop             
  nop                            #  12    0x1255bf  1      OPC=nop             
  nop                            #  13    0x1255c0  1      OPC=nop             
  addq %r15, %r11                #  14    0x1255c1  3      OPC=addq_r64_r64    
  jmpq %r11                      #  15    0x1255c4  3      OPC=jmpq_r64        
.L_1255c0:                       #        0x1255c7  0      OPC=<label>         
  jmpq .fflush                   #  16    0x1255c7  5      OPC=jmpq_label_1    
  nop                            #  17    0x1255cc  1      OPC=nop             
  nop                            #  18    0x1255cd  1      OPC=nop             
  nop                            #  19    0x1255ce  1      OPC=nop             
  nop                            #  20    0x1255cf  1      OPC=nop             
  nop                            #  21    0x1255d0  1      OPC=nop             
  nop                            #  22    0x1255d1  1      OPC=nop             
  nop                            #  23    0x1255d2  1      OPC=nop             
  nop                            #  24    0x1255d3  1      OPC=nop             
  nop                            #  25    0x1255d4  1      OPC=nop             
  nop                            #  26    0x1255d5  1      OPC=nop             
  nop                            #  27    0x1255d6  1      OPC=nop             
  nop                            #  28    0x1255d7  1      OPC=nop             
  nop                            #  29    0x1255d8  1      OPC=nop             
  nop                            #  30    0x1255d9  1      OPC=nop             
  nop                            #  31    0x1255da  1      OPC=nop             
  nop                            #  32    0x1255db  1      OPC=nop             
  nop                            #  33    0x1255dc  1      OPC=nop             
  nop                            #  34    0x1255dd  1      OPC=nop             
  nop                            #  35    0x1255de  1      OPC=nop             
  nop                            #  36    0x1255df  1      OPC=nop             
  nop                            #  37    0x1255e0  1      OPC=nop             
  nop                            #  38    0x1255e1  1      OPC=nop             
  nop                            #  39    0x1255e2  1      OPC=nop             
  nop                            #  40    0x1255e3  1      OPC=nop             
  nop                            #  41    0x1255e4  1      OPC=nop             
  nop                            #  42    0x1255e5  1      OPC=nop             
  nop                            #  43    0x1255e6  1      OPC=nop             
                                                                               
.size lflush, .-lflush

