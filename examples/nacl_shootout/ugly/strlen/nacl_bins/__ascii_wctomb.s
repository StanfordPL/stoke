  .text
  .globl __ascii_wctomb
  .type __ascii_wctomb, @function

#! file-offset 0x182f00
#! rip-offset  0x142f00
#! capacity    96 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.__ascii_wctomb:             #        0x142f00  0      OPC=0     
  movl %esi, %esi            #  1     0x142f00  2      OPC=1157  
  xorl %eax, %eax            #  2     0x142f02  2      OPC=3758  
  movl %edi, %edi            #  3     0x142f04  2      OPC=1157  
  testq %rsi, %rsi           #  4     0x142f06  3      OPC=2438  
  je .L_142f20               #  5     0x142f09  6      OPC=893   
  nop                        #  6     0x142f0f  1      OPC=1343  
  nop                        #  7     0x142f10  1      OPC=1343  
  cmpl $0xff, %edx           #  8     0x142f11  6      OPC=469   
  ja .L_142f40               #  9     0x142f17  6      OPC=863   
  nop                        #  10    0x142f1d  1      OPC=1343  
  nop                        #  11    0x142f1e  1      OPC=1343  
  movl %esi, %esi            #  12    0x142f1f  2      OPC=1157  
  movb %dl, (%r15,%rsi,1)    #  13    0x142f21  4      OPC=1141  
  movl $0x1, %eax            #  14    0x142f25  5      OPC=1154  
  xchgw %ax, %ax             #  15    0x142f2a  2      OPC=3700  
.L_142f20:                   #        0x142f2c  0      OPC=0     
  popq %r11                  #  16    0x142f2c  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  17    0x142f2e  7      OPC=131   
  nop                        #  18    0x142f35  1      OPC=1343  
  nop                        #  19    0x142f36  1      OPC=1343  
  nop                        #  20    0x142f37  1      OPC=1343  
  nop                        #  21    0x142f38  1      OPC=1343  
  addq %r15, %r11            #  22    0x142f39  3      OPC=72    
  jmpq %r11                  #  23    0x142f3c  3      OPC=928   
  nop                        #  24    0x142f3f  1      OPC=1343  
  nop                        #  25    0x142f40  1      OPC=1343  
  nop                        #  26    0x142f41  1      OPC=1343  
  nop                        #  27    0x142f42  1      OPC=1343  
  nop                        #  28    0x142f43  1      OPC=1343  
  nop                        #  29    0x142f44  1      OPC=1343  
  nop                        #  30    0x142f45  1      OPC=1343  
  nop                        #  31    0x142f46  1      OPC=1343  
  nop                        #  32    0x142f47  1      OPC=1343  
  nop                        #  33    0x142f48  1      OPC=1343  
  nop                        #  34    0x142f49  1      OPC=1343  
  nop                        #  35    0x142f4a  1      OPC=1343  
  nop                        #  36    0x142f4b  1      OPC=1343  
  nop                        #  37    0x142f4c  1      OPC=1343  
  nop                        #  38    0x142f4d  1      OPC=1343  
  nop                        #  39    0x142f4e  1      OPC=1343  
  nop                        #  40    0x142f4f  1      OPC=1343  
  nop                        #  41    0x142f50  1      OPC=1343  
  nop                        #  42    0x142f51  1      OPC=1343  
  nop                        #  43    0x142f52  1      OPC=1343  
.L_142f40:                   #        0x142f53  0      OPC=0     
  movl %edi, %edi            #  44    0x142f53  2      OPC=1157  
  movl $0x54, (%r15,%rdi,1)  #  45    0x142f55  8      OPC=1135  
  movl $0xffffffff, %eax     #  46    0x142f5d  6      OPC=1155  
  popq %r11                  #  47    0x142f63  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  48    0x142f65  7      OPC=131   
  nop                        #  49    0x142f6c  1      OPC=1343  
  nop                        #  50    0x142f6d  1      OPC=1343  
  nop                        #  51    0x142f6e  1      OPC=1343  
  nop                        #  52    0x142f6f  1      OPC=1343  
  addq %r15, %r11            #  53    0x142f70  3      OPC=72    
  jmpq %r11                  #  54    0x142f73  3      OPC=928   
  nop                        #  55    0x142f76  1      OPC=1343  
  nop                        #  56    0x142f77  1      OPC=1343  
  nop                        #  57    0x142f78  1      OPC=1343  
  nop                        #  58    0x142f79  1      OPC=1343  
  nop                        #  59    0x142f7a  1      OPC=1343  
                                                                 
.size __ascii_wctomb, .-__ascii_wctomb

