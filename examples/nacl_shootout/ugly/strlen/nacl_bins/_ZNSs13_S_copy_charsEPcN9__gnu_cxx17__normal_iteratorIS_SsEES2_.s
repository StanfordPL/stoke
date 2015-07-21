  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0xeb8a0
#! rip-offset  0xab8a0
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode    
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0xab8a0  0      OPC=0     
  movl %esi, %esi                                                  #  1     0xab8a0  2      OPC=1157  
  movl %edi, %edi                                                  #  2     0xab8a2  2      OPC=1157  
  subl %esi, %edx                                                  #  3     0xab8a4  2      OPC=2386  
  cmpl $0x1, %edx                                                  #  4     0xab8a6  3      OPC=470   
  je .L_ab8c0                                                      #  5     0xab8a9  6      OPC=893   
  nop                                                              #  6     0xab8af  1      OPC=1343  
  nop                                                              #  7     0xab8b0  1      OPC=1343  
  jmpq .memcpy                                                     #  8     0xab8b1  5      OPC=930   
  nop                                                              #  9     0xab8b6  1      OPC=1343  
  nop                                                              #  10    0xab8b7  1      OPC=1343  
  nop                                                              #  11    0xab8b8  1      OPC=1343  
  nop                                                              #  12    0xab8b9  1      OPC=1343  
  nop                                                              #  13    0xab8ba  1      OPC=1343  
  nop                                                              #  14    0xab8bb  1      OPC=1343  
  nop                                                              #  15    0xab8bc  1      OPC=1343  
  nop                                                              #  16    0xab8bd  1      OPC=1343  
  nop                                                              #  17    0xab8be  1      OPC=1343  
  nop                                                              #  18    0xab8bf  1      OPC=1343  
  nop                                                              #  19    0xab8c0  1      OPC=1343  
  nop                                                              #  20    0xab8c1  1      OPC=1343  
  nop                                                              #  21    0xab8c2  1      OPC=1343  
  nop                                                              #  22    0xab8c3  1      OPC=1343  
  nop                                                              #  23    0xab8c4  1      OPC=1343  
  nop                                                              #  24    0xab8c5  1      OPC=1343  
.L_ab8c0:                                                          #        0xab8c6  0      OPC=0     
  movl %esi, %esi                                                  #  25    0xab8c6  2      OPC=1157  
  movzbl (%r15,%rsi,1), %eax                                       #  26    0xab8c8  5      OPC=1302  
  popq %r11                                                        #  27    0xab8cd  2      OPC=1694  
  movl %edi, %edi                                                  #  28    0xab8cf  2      OPC=1157  
  movb %al, (%r15,%rdi,1)                                          #  29    0xab8d1  4      OPC=1141  
  andl $0xffffffe0, %r11d                                          #  30    0xab8d5  7      OPC=131   
  nop                                                              #  31    0xab8dc  1      OPC=1343  
  nop                                                              #  32    0xab8dd  1      OPC=1343  
  nop                                                              #  33    0xab8de  1      OPC=1343  
  nop                                                              #  34    0xab8df  1      OPC=1343  
  addq %r15, %r11                                                  #  35    0xab8e0  3      OPC=72    
  jmpq %r11                                                        #  36    0xab8e3  3      OPC=928   
  nop                                                              #  37    0xab8e6  1      OPC=1343  
  nop                                                              #  38    0xab8e7  1      OPC=1343  
  nop                                                              #  39    0xab8e8  1      OPC=1343  
  nop                                                              #  40    0xab8e9  1      OPC=1343  
  nop                                                              #  41    0xab8ea  1      OPC=1343  
  nop                                                              #  42    0xab8eb  1      OPC=1343  
  nop                                                              #  43    0xab8ec  1      OPC=1343  
                                                                                                      
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

