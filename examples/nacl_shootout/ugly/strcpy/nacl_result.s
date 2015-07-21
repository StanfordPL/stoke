  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69960
#! rip-offset  0x29960
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.my_strcpy:                   #        0x29960  0      OPC=0     
  nop                         #  1     0x29960  1      OPC=1343  
  movl %edi, %eax             #  2     0x29961  2      OPC=1157  
  nop                         #  3     0x29963  1      OPC=1343  
  nop                         #  4     0x29964  1      OPC=1343  
  nop                         #  5     0x29965  1      OPC=1343  
  xorl %eax, %edi             #  6     0x29966  2      OPC=3758  
  nop                         #  7     0x29968  1      OPC=1343  
  subl %edi, %esi             #  8     0x29969  2      OPC=2387  
  movsbl (%r15,%rsi,1), %edx  #  9     0x2996b  5      OPC=1280  
  nop                         #  10    0x29970  1      OPC=1343  
  nop                         #  11    0x29971  1      OPC=1343  
  testw %dx, %ax              #  12    0x29972  3      OPC=2434  
  nop                         #  13    0x29975  1      OPC=1343  
  je .L_299a0                 #  14    0x29976  6      OPC=893   
  movl %eax, %ecx             #  15    0x2997c  2      OPC=1157  
  nop                         #  16    0x2997e  1      OPC=1343  
  nop                         #  17    0x2997f  1      OPC=1343  
.L_29980:                     #        0x29980  0      OPC=0     
  xorl %edi, %ecx             #  18    0x29980  2      OPC=3758  
  movb %dl, (%r15,%rcx,1)     #  19    0x29982  4      OPC=1141  
  addl $0x1, %ecx             #  20    0x29986  3      OPC=65    
  addl $0x1, %esi             #  21    0x29989  3      OPC=65    
  movzbl (%r15,%rsi,1), %edx  #  22    0x2998c  5      OPC=1302  
  testb %dl, %dl              #  23    0x29991  2      OPC=2440  
  jne .L_29980                #  24    0x29993  6      OPC=963   
  nop                         #  25    0x29999  1      OPC=1343  
  nop                         #  26    0x2999a  1      OPC=1343  
  nop                         #  27    0x2999b  1      OPC=1343  
  nop                         #  28    0x2999c  1      OPC=1343  
  nop                         #  29    0x2999d  1      OPC=1343  
  nop                         #  30    0x2999e  1      OPC=1343  
  nop                         #  31    0x2999f  1      OPC=1343  
.L_299a0:                     #        0x299a0  0      OPC=0     
  popq %r11                    #  70    0x2984c  2      OPC=1694  
  andl $0xe0, %r11d            #  71    0x2984e  4      OPC=132   
  addq %r15, %r11              #  76    0x29859  3      OPC=72    
  jmpq %r11                    #  77    0x2985c  3      OPC=928   
                                                                 
.size my_strcpy, .-my_strcpy
