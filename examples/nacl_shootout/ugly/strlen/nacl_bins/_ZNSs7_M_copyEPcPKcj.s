  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0xeaa60
#! rip-offset  0xaaa60
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
._ZNSs7_M_copyEPcPKcj:        #        0xaaa60  0      OPC=0     
  cmpl $0x1, %edx             #  1     0xaaa60  3      OPC=470   
  movl %edi, %edi             #  2     0xaaa63  2      OPC=1157  
  movl %esi, %esi             #  3     0xaaa65  2      OPC=1157  
  je .L_aaa80                 #  4     0xaaa67  6      OPC=893   
  nop                         #  5     0xaaa6d  1      OPC=1343  
  nop                         #  6     0xaaa6e  1      OPC=1343  
  jmpq .memcpy                #  7     0xaaa6f  5      OPC=930   
  nop                         #  8     0xaaa74  1      OPC=1343  
  nop                         #  9     0xaaa75  1      OPC=1343  
  nop                         #  10    0xaaa76  1      OPC=1343  
  nop                         #  11    0xaaa77  1      OPC=1343  
  nop                         #  12    0xaaa78  1      OPC=1343  
  nop                         #  13    0xaaa79  1      OPC=1343  
  nop                         #  14    0xaaa7a  1      OPC=1343  
  nop                         #  15    0xaaa7b  1      OPC=1343  
  nop                         #  16    0xaaa7c  1      OPC=1343  
  nop                         #  17    0xaaa7d  1      OPC=1343  
  nop                         #  18    0xaaa7e  1      OPC=1343  
  nop                         #  19    0xaaa7f  1      OPC=1343  
  nop                         #  20    0xaaa80  1      OPC=1343  
  nop                         #  21    0xaaa81  1      OPC=1343  
  nop                         #  22    0xaaa82  1      OPC=1343  
  nop                         #  23    0xaaa83  1      OPC=1343  
  nop                         #  24    0xaaa84  1      OPC=1343  
  nop                         #  25    0xaaa85  1      OPC=1343  
.L_aaa80:                     #        0xaaa86  0      OPC=0     
  movl %esi, %esi             #  26    0xaaa86  2      OPC=1157  
  movzbl (%r15,%rsi,1), %eax  #  27    0xaaa88  5      OPC=1302  
  popq %r11                   #  28    0xaaa8d  2      OPC=1694  
  movl %edi, %edi             #  29    0xaaa8f  2      OPC=1157  
  movb %al, (%r15,%rdi,1)     #  30    0xaaa91  4      OPC=1141  
  andl $0xffffffe0, %r11d     #  31    0xaaa95  7      OPC=131   
  nop                         #  32    0xaaa9c  1      OPC=1343  
  nop                         #  33    0xaaa9d  1      OPC=1343  
  nop                         #  34    0xaaa9e  1      OPC=1343  
  nop                         #  35    0xaaa9f  1      OPC=1343  
  addq %r15, %r11             #  36    0xaaaa0  3      OPC=72    
  jmpq %r11                   #  37    0xaaaa3  3      OPC=928   
  nop                         #  38    0xaaaa6  1      OPC=1343  
  nop                         #  39    0xaaaa7  1      OPC=1343  
  nop                         #  40    0xaaaa8  1      OPC=1343  
  nop                         #  41    0xaaaa9  1      OPC=1343  
  nop                         #  42    0xaaaaa  1      OPC=1343  
  nop                         #  43    0xaaaab  1      OPC=1343  
  nop                         #  44    0xaaaac  1      OPC=1343  
                                                                 
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

