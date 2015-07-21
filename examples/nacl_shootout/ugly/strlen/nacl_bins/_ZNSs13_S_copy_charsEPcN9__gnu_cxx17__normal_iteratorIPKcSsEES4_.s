  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0xeb860
#! rip-offset  0xab860
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode    
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0xab860  0      OPC=0     
  movl %esi, %esi                                                   #  1     0xab860  2      OPC=1157  
  movl %edi, %edi                                                   #  2     0xab862  2      OPC=1157  
  subl %esi, %edx                                                   #  3     0xab864  2      OPC=2386  
  cmpl $0x1, %edx                                                   #  4     0xab866  3      OPC=470   
  je .L_ab880                                                       #  5     0xab869  6      OPC=893   
  nop                                                               #  6     0xab86f  1      OPC=1343  
  nop                                                               #  7     0xab870  1      OPC=1343  
  jmpq .memcpy                                                      #  8     0xab871  5      OPC=930   
  nop                                                               #  9     0xab876  1      OPC=1343  
  nop                                                               #  10    0xab877  1      OPC=1343  
  nop                                                               #  11    0xab878  1      OPC=1343  
  nop                                                               #  12    0xab879  1      OPC=1343  
  nop                                                               #  13    0xab87a  1      OPC=1343  
  nop                                                               #  14    0xab87b  1      OPC=1343  
  nop                                                               #  15    0xab87c  1      OPC=1343  
  nop                                                               #  16    0xab87d  1      OPC=1343  
  nop                                                               #  17    0xab87e  1      OPC=1343  
  nop                                                               #  18    0xab87f  1      OPC=1343  
  nop                                                               #  19    0xab880  1      OPC=1343  
  nop                                                               #  20    0xab881  1      OPC=1343  
  nop                                                               #  21    0xab882  1      OPC=1343  
  nop                                                               #  22    0xab883  1      OPC=1343  
  nop                                                               #  23    0xab884  1      OPC=1343  
  nop                                                               #  24    0xab885  1      OPC=1343  
.L_ab880:                                                           #        0xab886  0      OPC=0     
  movl %esi, %esi                                                   #  25    0xab886  2      OPC=1157  
  movzbl (%r15,%rsi,1), %eax                                        #  26    0xab888  5      OPC=1302  
  popq %r11                                                         #  27    0xab88d  2      OPC=1694  
  movl %edi, %edi                                                   #  28    0xab88f  2      OPC=1157  
  movb %al, (%r15,%rdi,1)                                           #  29    0xab891  4      OPC=1141  
  andl $0xffffffe0, %r11d                                           #  30    0xab895  7      OPC=131   
  nop                                                               #  31    0xab89c  1      OPC=1343  
  nop                                                               #  32    0xab89d  1      OPC=1343  
  nop                                                               #  33    0xab89e  1      OPC=1343  
  nop                                                               #  34    0xab89f  1      OPC=1343  
  addq %r15, %r11                                                   #  35    0xab8a0  3      OPC=72    
  jmpq %r11                                                         #  36    0xab8a3  3      OPC=928   
  nop                                                               #  37    0xab8a6  1      OPC=1343  
  nop                                                               #  38    0xab8a7  1      OPC=1343  
  nop                                                               #  39    0xab8a8  1      OPC=1343  
  nop                                                               #  40    0xab8a9  1      OPC=1343  
  nop                                                               #  41    0xab8aa  1      OPC=1343  
  nop                                                               #  42    0xab8ab  1      OPC=1343  
  nop                                                               #  43    0xab8ac  1      OPC=1343  
                                                                                                       
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

