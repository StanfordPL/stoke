  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0xec7c0
#! rip-offset  0xac7c0
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0xac7c0  0      OPC=<label>         
  movl %esi, %esi                                                   #  1     0xac7c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                   #  2     0xac7c2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                   #  3     0xac7c4  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                                                   #  4     0xac7c6  3      OPC=cmpl_r32_imm8   
  je .L_ac7e0                                                       #  5     0xac7c9  2      OPC=je_label        
  jmpq .memcpy                                                      #  6     0xac7cb  5      OPC=jmpq_label_1    
  nop                                                               #  7     0xac7d0  1      OPC=nop             
  nop                                                               #  8     0xac7d1  1      OPC=nop             
  nop                                                               #  9     0xac7d2  1      OPC=nop             
  nop                                                               #  10    0xac7d3  1      OPC=nop             
  nop                                                               #  11    0xac7d4  1      OPC=nop             
  nop                                                               #  12    0xac7d5  1      OPC=nop             
  nop                                                               #  13    0xac7d6  1      OPC=nop             
  nop                                                               #  14    0xac7d7  1      OPC=nop             
  nop                                                               #  15    0xac7d8  1      OPC=nop             
  nop                                                               #  16    0xac7d9  1      OPC=nop             
  nop                                                               #  17    0xac7da  1      OPC=nop             
  nop                                                               #  18    0xac7db  1      OPC=nop             
  nop                                                               #  19    0xac7dc  1      OPC=nop             
  nop                                                               #  20    0xac7dd  1      OPC=nop             
  nop                                                               #  21    0xac7de  1      OPC=nop             
  nop                                                               #  22    0xac7df  1      OPC=nop             
.L_ac7e0:                                                           #        0xac7e0  0      OPC=<label>         
  movl %esi, %esi                                                   #  23    0xac7e0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax                                        #  24    0xac7e2  5      OPC=movzbl_r32_m8   
  popq %r11                                                         #  25    0xac7e7  2      OPC=popq_r64_1      
  movl %edi, %edi                                                   #  26    0xac7e9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)                                           #  27    0xac7eb  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d                                           #  28    0xac7ef  7      OPC=andl_r32_imm32  
  nop                                                               #  29    0xac7f6  1      OPC=nop             
  nop                                                               #  30    0xac7f7  1      OPC=nop             
  nop                                                               #  31    0xac7f8  1      OPC=nop             
  nop                                                               #  32    0xac7f9  1      OPC=nop             
  addq %r15, %r11                                                   #  33    0xac7fa  3      OPC=addq_r64_r64    
  jmpq %r11                                                         #  34    0xac7fd  3      OPC=jmpq_r64        
  nop                                                               #  35    0xac800  1      OPC=nop             
  nop                                                               #  36    0xac801  1      OPC=nop             
  nop                                                               #  37    0xac802  1      OPC=nop             
  nop                                                               #  38    0xac803  1      OPC=nop             
  nop                                                               #  39    0xac804  1      OPC=nop             
  nop                                                               #  40    0xac805  1      OPC=nop             
  nop                                                               #  41    0xac806  1      OPC=nop             
                                                                                                                 
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

