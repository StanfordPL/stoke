  .text
  .globl _ZNSs13_S_copy_charsEPcS_S_
  .type _ZNSs13_S_copy_charsEPcS_S_, @function

#! file-offset 0xeb7e0
#! rip-offset  0xab7e0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNSs13_S_copy_charsEPcS_S_:  #        0xab7e0  0      OPC=0     
  movl %esi, %esi              #  1     0xab7e0  2      OPC=1157  
  movl %edi, %edi              #  2     0xab7e2  2      OPC=1157  
  subl %esi, %edx              #  3     0xab7e4  2      OPC=2386  
  cmpl $0x1, %edx              #  4     0xab7e6  3      OPC=470   
  je .L_ab800                  #  5     0xab7e9  6      OPC=893   
  nop                          #  6     0xab7ef  1      OPC=1343  
  nop                          #  7     0xab7f0  1      OPC=1343  
  jmpq .memcpy                 #  8     0xab7f1  5      OPC=930   
  nop                          #  9     0xab7f6  1      OPC=1343  
  nop                          #  10    0xab7f7  1      OPC=1343  
  nop                          #  11    0xab7f8  1      OPC=1343  
  nop                          #  12    0xab7f9  1      OPC=1343  
  nop                          #  13    0xab7fa  1      OPC=1343  
  nop                          #  14    0xab7fb  1      OPC=1343  
  nop                          #  15    0xab7fc  1      OPC=1343  
  nop                          #  16    0xab7fd  1      OPC=1343  
  nop                          #  17    0xab7fe  1      OPC=1343  
  nop                          #  18    0xab7ff  1      OPC=1343  
  nop                          #  19    0xab800  1      OPC=1343  
  nop                          #  20    0xab801  1      OPC=1343  
  nop                          #  21    0xab802  1      OPC=1343  
  nop                          #  22    0xab803  1      OPC=1343  
  nop                          #  23    0xab804  1      OPC=1343  
  nop                          #  24    0xab805  1      OPC=1343  
.L_ab800:                      #        0xab806  0      OPC=0     
  movl %esi, %esi              #  25    0xab806  2      OPC=1157  
  movzbl (%r15,%rsi,1), %eax   #  26    0xab808  5      OPC=1302  
  popq %r11                    #  27    0xab80d  2      OPC=1694  
  movl %edi, %edi              #  28    0xab80f  2      OPC=1157  
  movb %al, (%r15,%rdi,1)      #  29    0xab811  4      OPC=1141  
  andl $0xffffffe0, %r11d      #  30    0xab815  7      OPC=131   
  nop                          #  31    0xab81c  1      OPC=1343  
  nop                          #  32    0xab81d  1      OPC=1343  
  nop                          #  33    0xab81e  1      OPC=1343  
  nop                          #  34    0xab81f  1      OPC=1343  
  addq %r15, %r11              #  35    0xab820  3      OPC=72    
  jmpq %r11                    #  36    0xab823  3      OPC=928   
  nop                          #  37    0xab826  1      OPC=1343  
  nop                          #  38    0xab827  1      OPC=1343  
  nop                          #  39    0xab828  1      OPC=1343  
  nop                          #  40    0xab829  1      OPC=1343  
  nop                          #  41    0xab82a  1      OPC=1343  
  nop                          #  42    0xab82b  1      OPC=1343  
  nop                          #  43    0xab82c  1      OPC=1343  
                                                                  
.size _ZNSs13_S_copy_charsEPcS_S_, .-_ZNSs13_S_copy_charsEPcS_S_

