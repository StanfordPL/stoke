  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0xec0a0
#! rip-offset  0xac0a0
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0xac0a0  0      OPC=<label>         
  movl %esi, %esi                                                   #  1     0xac0a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                   #  2     0xac0a2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                   #  3     0xac0a4  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                                                   #  4     0xac0a6  3      OPC=cmpl_r32_imm8   
  je .L_ac0c0                                                       #  5     0xac0a9  2      OPC=je_label        
  jmpq .memcpy                                                      #  6     0xac0ab  5      OPC=jmpq_label_1    
  nop                                                               #  7     0xac0b0  1      OPC=nop             
  nop                                                               #  8     0xac0b1  1      OPC=nop             
  nop                                                               #  9     0xac0b2  1      OPC=nop             
  nop                                                               #  10    0xac0b3  1      OPC=nop             
  nop                                                               #  11    0xac0b4  1      OPC=nop             
  nop                                                               #  12    0xac0b5  1      OPC=nop             
  nop                                                               #  13    0xac0b6  1      OPC=nop             
  nop                                                               #  14    0xac0b7  1      OPC=nop             
  nop                                                               #  15    0xac0b8  1      OPC=nop             
  nop                                                               #  16    0xac0b9  1      OPC=nop             
  nop                                                               #  17    0xac0ba  1      OPC=nop             
  nop                                                               #  18    0xac0bb  1      OPC=nop             
  nop                                                               #  19    0xac0bc  1      OPC=nop             
  nop                                                               #  20    0xac0bd  1      OPC=nop             
  nop                                                               #  21    0xac0be  1      OPC=nop             
  nop                                                               #  22    0xac0bf  1      OPC=nop             
.L_ac0c0:                                                           #        0xac0c0  0      OPC=<label>         
  movl %esi, %esi                                                   #  23    0xac0c0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax                                        #  24    0xac0c2  5      OPC=movzbl_r32_m8   
  popq %r11                                                         #  25    0xac0c7  2      OPC=popq_r64_1      
  movl %edi, %edi                                                   #  26    0xac0c9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)                                           #  27    0xac0cb  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d                                           #  28    0xac0cf  7      OPC=andl_r32_imm32  
  nop                                                               #  29    0xac0d6  1      OPC=nop             
  nop                                                               #  30    0xac0d7  1      OPC=nop             
  nop                                                               #  31    0xac0d8  1      OPC=nop             
  nop                                                               #  32    0xac0d9  1      OPC=nop             
  addq %r15, %r11                                                   #  33    0xac0da  3      OPC=addq_r64_r64    
  jmpq %r11                                                         #  34    0xac0dd  3      OPC=jmpq_r64        
  nop                                                               #  35    0xac0e0  1      OPC=nop             
  nop                                                               #  36    0xac0e1  1      OPC=nop             
  nop                                                               #  37    0xac0e2  1      OPC=nop             
  nop                                                               #  38    0xac0e3  1      OPC=nop             
  nop                                                               #  39    0xac0e4  1      OPC=nop             
  nop                                                               #  40    0xac0e5  1      OPC=nop             
  nop                                                               #  41    0xac0e6  1      OPC=nop             
                                                                                                                 
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

