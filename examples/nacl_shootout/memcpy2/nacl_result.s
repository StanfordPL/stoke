  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x697e0
#! rip-offset  0x297e0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.my_memcpy:                    #        0x297e0  0      OPC=0     
  movl %edi, %eax              #  1     0x297e0  2      OPC=1157  
  movl %esi, %esi              #  2     0x297e2  2      OPC=1157  
  testl %edx, %edx             #  3     0x297e4  2      OPC=2436  
  je .L_29840                  #  4     0x297e6  6      OPC=893   
  movl %eax, %r8d              #  7     0x297ee  3      OPC=1157  
  xorl %ecx, %ecx              #  8     0x297f1  2      OPC=3758  
  nop                          #  11    0x297f5  1      OPC=1343  
  nop                          #  12    0x297f6  1      OPC=1343  
  nop                          #  13    0x297f7  1      OPC=1343  
  nop                          #  14    0x297f8  1      OPC=1343  
  nop                          #  15    0x297f9  1      OPC=1343  
  nop                          #  16    0x297fa  1      OPC=1343  
  nop                          #  27    0x29805  1      OPC=1343  
.L_29800:                      #        0x29806  0      OPC=0     
  movl %r8d, %r9d              #  28    0x29806  3      OPC=1157  
  movl %esi, %r10d             #  29    0x29809  3      OPC=1157  
  movl %r10d, %r10d            #  30    0x2980c  3      OPC=1157  
  movzbl (%r15,%r10,1), %r10d  #  31    0x2980f  5      OPC=1302  
  movl %r9d, %r9d              #  32    0x29814  3      OPC=1157  
  movb %r10b, (%r15,%r9,1)     #  33    0x29817  4      OPC=1141  
  addl $0x1, %ecx              #  34    0x2981b  3      OPC=65    
  addl $0x1, %esi              #  35    0x2981e  3      OPC=65    
  addl $0x1, %r8d              #  36    0x29821  4      OPC=65    
  nop                          #  37    0x29825  1      OPC=1343  
  cmpl %ecx, %edx              #  38    0x29826  2      OPC=472   
  ja .L_29800                  #  39    0x29828  6      OPC=863   
  nop                          #  44    0x29832  1      OPC=1343  
  nop                          #  45    0x29833  1      OPC=1343  
  nop                          #  46    0x29834  1      OPC=1343  
  nop                          #  47    0x29835  1      OPC=1343  
  nop                          #  48    0x29836  1      OPC=1343  
  nop                          #  49    0x29837  1      OPC=1343  
  nop                          #  50    0x29838  1      OPC=1343  
  nop                          #  51    0x29839  1      OPC=1343  
  nop                          #  52    0x2983a  1      OPC=1343  
  nop                          #  53    0x2983b  1      OPC=1343  
  nop                          #  54    0x2983c  1      OPC=1343  
  nop                          #  55    0x2983d  1      OPC=1343  
  nop                          #  56    0x2983e  1      OPC=1343  
  nop                          #  57    0x2983f  1      OPC=1343  
  nop                          #  58    0x29840  1      OPC=1343  
  nop                          #  59    0x29841  1      OPC=1343  
  nop                          #  60    0x29842  1      OPC=1343  
  nop                          #  61    0x29843  1      OPC=1343  
  nop                          #  62    0x29844  1      OPC=1343  
  nop                          #  63    0x29845  1      OPC=1343  
  nop                          #  64    0x29846  1      OPC=1343  
  nop                          #  65    0x29847  1      OPC=1343  
  nop                          #  66    0x29848  1      OPC=1343  
  nop                          #  67    0x29849  1      OPC=1343  
  nop                          #  68    0x2984a  1      OPC=1343  
  nop                          #  69    0x2984b  1      OPC=1343  
.L_29840:                      #        0x2984c  0      OPC=0     
  popq %r11                    #  70    0x2984c  2      OPC=1694  
  andl $0xe0, %r11d            #  71    0x2984e  4      OPC=132   
  addq %r15, %r11              #  76    0x29859  3      OPC=72    
  jmpq %r11                    #  77    0x2985c  3      OPC=928   
                                                                  
.size my_memcpy, .-my_memcpy

