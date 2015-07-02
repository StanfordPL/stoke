  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x697e0
#! rip-offset  0x297e0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.my_memcpy:                    #        0x297e0  0      OPC=0     
  nop                          #  1     0x297e0  1      OPC=1343  
  nop                          #  2     0x297e1  1      OPC=1343  
  nop                          #  3     0x297e2  1      OPC=1343  
  nop                          #  4     0x297e3  1      OPC=1343  
  nop                          #  5     0x297e4  1      OPC=1343  
  nop                          #  6     0x297e5  1      OPC=1343  
  nop                          #  7     0x297e6  1      OPC=1343  
  nop                          #  8     0x297e7  1      OPC=1343  
  xorl %ecx, %ecx              #  9     0x297e8  2      OPC=3758  
  nop                          #  10    0x297ea  1      OPC=1343  
  movl %edi, %eax              #  11    0x297eb  2      OPC=1157  
  nop                          #  12    0x297ed  1      OPC=1343  
  nop                          #  13    0x297ee  1      OPC=1343  
  nop                          #  14    0x297ef  1      OPC=1343  
  nop                          #  15    0x297f0  1      OPC=1343  
  nop                          #  16    0x297f1  1      OPC=1343  
  nop                          #  17    0x297f2  1      OPC=1343  
  testl %eax, %esi             #  18    0x297f3  2      OPC=2436  
  nop                          #  19    0x297f5  1      OPC=1343  
  nop                          #  20    0x297f6  1      OPC=1343  
  movl %eax, %r8d              #  21    0x297f7  3      OPC=1158  
  je .L_29840                  #  22    0x297fa  6      OPC=893   
.L_29800:                      #        0x29800  0      OPC=0     
  movl %esi, %r10d             #  23    0x29800  3      OPC=1158  
  movzbl (%r15,%r10,1), %r10d  #  24    0x29803  5      OPC=1302  
  nopl %eax                    #  25    0x29808  3      OPC=1347  
  movl %r8d, %r9d              #  26    0x2980b  3      OPC=1158  
  movb %r10b, (%r15,%r9,1)     #  27    0x2980e  4      OPC=1141  
  nop                          #  28    0x29812  1      OPC=1343  
  addl $0x1, %ecx              #  29    0x29813  3      OPC=65    
  addl $0x1, %r8d              #  30    0x29816  4      OPC=65    
  addl $0x1, %esi              #  31    0x2981a  3      OPC=65    
  cmpl %ecx, %edx              #  32    0x2981d  2      OPC=473   
  nop                          #  33    0x2981f  1      OPC=1343  
  ja .L_29800                  #  34    0x29820  6      OPC=863   
  popq %r11                    #  70    0x2984c  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  71    0x2984e  7      OPC=131   
  nop                          #  72    0x29855  1      OPC=1343  
  nop                          #  73    0x29856  1      OPC=1343  
  nop                          #  74    0x29857  1      OPC=1343  
  nop                          #  75    0x29858  1      OPC=1343  
  addq %r15, %r11              #  76    0x29859  3      OPC=72    
  jmpq %r11                    #  77    0x2985c  3      OPC=928   
  nop                          #  87    0x29860  1      OPC=1343  
  nop                          #  88    0x29861  1      OPC=1343  
  nop                          #  89    0x29862  1      OPC=1343  
  nop                          #  90    0x29863  1      OPC=1343  
  nop                          #  91    0x29864  1      OPC=1343  
  nopl %eax                    #  92    0x29865  3      OPC=1347  
  nop                          #  93    0x29868  1      OPC=1343  
                                                                  
.size my_memcpy, .-my_memcpy
