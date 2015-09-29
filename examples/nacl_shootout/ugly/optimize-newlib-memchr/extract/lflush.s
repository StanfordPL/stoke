  .text
  .globl lflush
  .type lflush, @function

#! file-offset 0x165cc0
#! rip-offset  0x125cc0
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.lflush:                         #        0x125cc0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x125cc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0x125cc2  2      OPC=movl_r32_r32    
  movswl 0xc(%r15,%rdi,1), %eax  #  3     0x125cc4  6      OPC=movswl_r32_m16  
  andl $0x9, %eax                #  4     0x125cca  3      OPC=andl_r32_imm8   
  cmpl $0x9, %eax                #  5     0x125ccd  3      OPC=cmpl_r32_imm8   
  je .L_125ce0                   #  6     0x125cd0  2      OPC=je_label        
  popq %r11                      #  7     0x125cd2  2      OPC=popq_r64_1      
  xorl %eax, %eax                #  8     0x125cd4  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d        #  9     0x125cd6  7      OPC=andl_r32_imm32  
  nop                            #  10    0x125cdd  1      OPC=nop             
  nop                            #  11    0x125cde  1      OPC=nop             
  nop                            #  12    0x125cdf  1      OPC=nop             
  nop                            #  13    0x125ce0  1      OPC=nop             
  addq %r15, %r11                #  14    0x125ce1  3      OPC=addq_r64_r64    
  jmpq %r11                      #  15    0x125ce4  3      OPC=jmpq_r64        
.L_125ce0:                       #        0x125ce7  0      OPC=<label>         
  jmpq .fflush                   #  16    0x125ce7  5      OPC=jmpq_label_1    
  nop                            #  17    0x125cec  1      OPC=nop             
  nop                            #  18    0x125ced  1      OPC=nop             
  nop                            #  19    0x125cee  1      OPC=nop             
  nop                            #  20    0x125cef  1      OPC=nop             
  nop                            #  21    0x125cf0  1      OPC=nop             
  nop                            #  22    0x125cf1  1      OPC=nop             
  nop                            #  23    0x125cf2  1      OPC=nop             
  nop                            #  24    0x125cf3  1      OPC=nop             
  nop                            #  25    0x125cf4  1      OPC=nop             
  nop                            #  26    0x125cf5  1      OPC=nop             
  nop                            #  27    0x125cf6  1      OPC=nop             
  nop                            #  28    0x125cf7  1      OPC=nop             
  nop                            #  29    0x125cf8  1      OPC=nop             
  nop                            #  30    0x125cf9  1      OPC=nop             
  nop                            #  31    0x125cfa  1      OPC=nop             
  nop                            #  32    0x125cfb  1      OPC=nop             
  nop                            #  33    0x125cfc  1      OPC=nop             
  nop                            #  34    0x125cfd  1      OPC=nop             
  nop                            #  35    0x125cfe  1      OPC=nop             
  nop                            #  36    0x125cff  1      OPC=nop             
  nop                            #  37    0x125d00  1      OPC=nop             
  nop                            #  38    0x125d01  1      OPC=nop             
  nop                            #  39    0x125d02  1      OPC=nop             
  nop                            #  40    0x125d03  1      OPC=nop             
  nop                            #  41    0x125d04  1      OPC=nop             
  nop                            #  42    0x125d05  1      OPC=nop             
  nop                            #  43    0x125d06  1      OPC=nop             
                                                                               
.size lflush, .-lflush

