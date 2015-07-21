  .text
  .globl __i2b
  .type __i2b, @function

#! file-offset 0x18ae80
#! rip-offset  0x14ae80
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.__i2b:                         #        0x14ae80  0      OPC=0     
  pushq %rbx                    #  1     0x14ae80  1      OPC=1861  
  movl %edi, %edi               #  2     0x14ae81  2      OPC=1157  
  movl %esi, %ebx               #  3     0x14ae83  2      OPC=1157  
  movl $0x1, %esi               #  4     0x14ae85  5      OPC=1154  
  xchgw %ax, %ax                #  5     0x14ae8a  2      OPC=3700  
  nop                           #  6     0x14ae8c  1      OPC=1343  
  nop                           #  7     0x14ae8d  1      OPC=1343  
  nop                           #  8     0x14ae8e  1      OPC=1343  
  nop                           #  9     0x14ae8f  1      OPC=1343  
  nop                           #  10    0x14ae90  1      OPC=1343  
  nop                           #  11    0x14ae91  1      OPC=1343  
  nop                           #  12    0x14ae92  1      OPC=1343  
  nop                           #  13    0x14ae93  1      OPC=1343  
  nop                           #  14    0x14ae94  1      OPC=1343  
  nop                           #  15    0x14ae95  1      OPC=1343  
  nop                           #  16    0x14ae96  1      OPC=1343  
  nop                           #  17    0x14ae97  1      OPC=1343  
  nop                           #  18    0x14ae98  1      OPC=1343  
  nop                           #  19    0x14ae99  1      OPC=1343  
  nop                           #  20    0x14ae9a  1      OPC=1343  
  callq ._Balloc                #  21    0x14ae9b  5      OPC=260   
  movl %eax, %eax               #  22    0x14aea0  2      OPC=1157  
  movl %eax, %eax               #  23    0x14aea2  2      OPC=1157  
  movl %ebx, 0x14(%r15,%rax,1)  #  24    0x14aea4  5      OPC=1136  
  movl %eax, %eax               #  25    0x14aea9  2      OPC=1157  
  movl $0x1, 0x10(%r15,%rax,1)  #  26    0x14aeab  9      OPC=1135  
  popq %rbx                     #  27    0x14aeb4  1      OPC=1694  
  popq %r11                     #  28    0x14aeb5  2      OPC=1694  
  nop                           #  29    0x14aeb7  1      OPC=1343  
  nop                           #  30    0x14aeb8  1      OPC=1343  
  nop                           #  31    0x14aeb9  1      OPC=1343  
  nop                           #  32    0x14aeba  1      OPC=1343  
  nop                           #  33    0x14aebb  1      OPC=1343  
  nop                           #  34    0x14aebc  1      OPC=1343  
  nop                           #  35    0x14aebd  1      OPC=1343  
  nop                           #  36    0x14aebe  1      OPC=1343  
  nop                           #  37    0x14aebf  1      OPC=1343  
  andl $0xffffffe0, %r11d       #  38    0x14aec0  7      OPC=131   
  nop                           #  39    0x14aec7  1      OPC=1343  
  nop                           #  40    0x14aec8  1      OPC=1343  
  nop                           #  41    0x14aec9  1      OPC=1343  
  nop                           #  42    0x14aeca  1      OPC=1343  
  addq %r15, %r11               #  43    0x14aecb  3      OPC=72    
  jmpq %r11                     #  44    0x14aece  3      OPC=928   
  nop                           #  45    0x14aed1  1      OPC=1343  
  nop                           #  46    0x14aed2  1      OPC=1343  
  nop                           #  47    0x14aed3  1      OPC=1343  
  nop                           #  48    0x14aed4  1      OPC=1343  
  nop                           #  49    0x14aed5  1      OPC=1343  
  nop                           #  50    0x14aed6  1      OPC=1343  
  nop                           #  51    0x14aed7  1      OPC=1343  
  nop                           #  52    0x14aed8  1      OPC=1343  
  nop                           #  53    0x14aed9  1      OPC=1343  
  nop                           #  54    0x14aeda  1      OPC=1343  
  nop                           #  55    0x14aedb  1      OPC=1343  
  nop                           #  56    0x14aedc  1      OPC=1343  
  nop                           #  57    0x14aedd  1      OPC=1343  
  nop                           #  58    0x14aede  1      OPC=1343  
  nop                           #  59    0x14aedf  1      OPC=1343  
  nop                           #  60    0x14aee0  1      OPC=1343  
  nop                           #  61    0x14aee1  1      OPC=1343  
  nop                           #  62    0x14aee2  1      OPC=1343  
  nop                           #  63    0x14aee3  1      OPC=1343  
  nop                           #  64    0x14aee4  1      OPC=1343  
  nop                           #  65    0x14aee5  1      OPC=1343  
  nop                           #  66    0x14aee6  1      OPC=1343  
                                                                    
.size __i2b, .-__i2b

