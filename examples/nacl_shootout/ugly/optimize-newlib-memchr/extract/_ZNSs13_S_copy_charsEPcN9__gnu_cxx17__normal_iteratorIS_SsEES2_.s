  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0xec800
#! rip-offset  0xac800
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0xac800  0      OPC=<label>         
  movl %esi, %esi                                                  #  1     0xac800  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                  #  2     0xac802  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                  #  3     0xac804  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                                                  #  4     0xac806  3      OPC=cmpl_r32_imm8   
  je .L_ac820                                                      #  5     0xac809  2      OPC=je_label        
  jmpq .memcpy                                                     #  6     0xac80b  5      OPC=jmpq_label_1    
  nop                                                              #  7     0xac810  1      OPC=nop             
  nop                                                              #  8     0xac811  1      OPC=nop             
  nop                                                              #  9     0xac812  1      OPC=nop             
  nop                                                              #  10    0xac813  1      OPC=nop             
  nop                                                              #  11    0xac814  1      OPC=nop             
  nop                                                              #  12    0xac815  1      OPC=nop             
  nop                                                              #  13    0xac816  1      OPC=nop             
  nop                                                              #  14    0xac817  1      OPC=nop             
  nop                                                              #  15    0xac818  1      OPC=nop             
  nop                                                              #  16    0xac819  1      OPC=nop             
  nop                                                              #  17    0xac81a  1      OPC=nop             
  nop                                                              #  18    0xac81b  1      OPC=nop             
  nop                                                              #  19    0xac81c  1      OPC=nop             
  nop                                                              #  20    0xac81d  1      OPC=nop             
  nop                                                              #  21    0xac81e  1      OPC=nop             
  nop                                                              #  22    0xac81f  1      OPC=nop             
.L_ac820:                                                          #        0xac820  0      OPC=<label>         
  movl %esi, %esi                                                  #  23    0xac820  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax                                       #  24    0xac822  5      OPC=movzbl_r32_m8   
  popq %r11                                                        #  25    0xac827  2      OPC=popq_r64_1      
  movl %edi, %edi                                                  #  26    0xac829  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)                                          #  27    0xac82b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d                                          #  28    0xac82f  7      OPC=andl_r32_imm32  
  nop                                                              #  29    0xac836  1      OPC=nop             
  nop                                                              #  30    0xac837  1      OPC=nop             
  nop                                                              #  31    0xac838  1      OPC=nop             
  nop                                                              #  32    0xac839  1      OPC=nop             
  addq %r15, %r11                                                  #  33    0xac83a  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  34    0xac83d  3      OPC=jmpq_r64        
  nop                                                              #  35    0xac840  1      OPC=nop             
  nop                                                              #  36    0xac841  1      OPC=nop             
  nop                                                              #  37    0xac842  1      OPC=nop             
  nop                                                              #  38    0xac843  1      OPC=nop             
  nop                                                              #  39    0xac844  1      OPC=nop             
  nop                                                              #  40    0xac845  1      OPC=nop             
  nop                                                              #  41    0xac846  1      OPC=nop             
                                                                                                                
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

