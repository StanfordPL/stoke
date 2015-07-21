  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0xeaa20
#! rip-offset  0xaaa20
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
._ZNSs7_M_moveEPcPKcj:        #        0xaaa20  0      OPC=0     
  cmpl $0x1, %edx             #  1     0xaaa20  3      OPC=470   
  movl %edi, %edi             #  2     0xaaa23  2      OPC=1157  
  movl %esi, %esi             #  3     0xaaa25  2      OPC=1157  
  je .L_aaa40                 #  4     0xaaa27  6      OPC=893   
  nop                         #  5     0xaaa2d  1      OPC=1343  
  nop                         #  6     0xaaa2e  1      OPC=1343  
  jmpq .memmove               #  7     0xaaa2f  5      OPC=930   
  nop                         #  8     0xaaa34  1      OPC=1343  
  nop                         #  9     0xaaa35  1      OPC=1343  
  nop                         #  10    0xaaa36  1      OPC=1343  
  nop                         #  11    0xaaa37  1      OPC=1343  
  nop                         #  12    0xaaa38  1      OPC=1343  
  nop                         #  13    0xaaa39  1      OPC=1343  
  nop                         #  14    0xaaa3a  1      OPC=1343  
  nop                         #  15    0xaaa3b  1      OPC=1343  
  nop                         #  16    0xaaa3c  1      OPC=1343  
  nop                         #  17    0xaaa3d  1      OPC=1343  
  nop                         #  18    0xaaa3e  1      OPC=1343  
  nop                         #  19    0xaaa3f  1      OPC=1343  
  nop                         #  20    0xaaa40  1      OPC=1343  
  nop                         #  21    0xaaa41  1      OPC=1343  
  nop                         #  22    0xaaa42  1      OPC=1343  
  nop                         #  23    0xaaa43  1      OPC=1343  
  nop                         #  24    0xaaa44  1      OPC=1343  
  nop                         #  25    0xaaa45  1      OPC=1343  
.L_aaa40:                     #        0xaaa46  0      OPC=0     
  movl %esi, %esi             #  26    0xaaa46  2      OPC=1157  
  movzbl (%r15,%rsi,1), %eax  #  27    0xaaa48  5      OPC=1302  
  popq %r11                   #  28    0xaaa4d  2      OPC=1694  
  movl %edi, %edi             #  29    0xaaa4f  2      OPC=1157  
  movb %al, (%r15,%rdi,1)     #  30    0xaaa51  4      OPC=1141  
  andl $0xffffffe0, %r11d     #  31    0xaaa55  7      OPC=131   
  nop                         #  32    0xaaa5c  1      OPC=1343  
  nop                         #  33    0xaaa5d  1      OPC=1343  
  nop                         #  34    0xaaa5e  1      OPC=1343  
  nop                         #  35    0xaaa5f  1      OPC=1343  
  addq %r15, %r11             #  36    0xaaa60  3      OPC=72    
  jmpq %r11                   #  37    0xaaa63  3      OPC=928   
  nop                         #  38    0xaaa66  1      OPC=1343  
  nop                         #  39    0xaaa67  1      OPC=1343  
  nop                         #  40    0xaaa68  1      OPC=1343  
  nop                         #  41    0xaaa69  1      OPC=1343  
  nop                         #  42    0xaaa6a  1      OPC=1343  
  nop                         #  43    0xaaa6b  1      OPC=1343  
  nop                         #  44    0xaaa6c  1      OPC=1343  
                                                                 
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

