  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69960
#! rip-offset  0x29960
#! capacity    96 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.my_strcpy:                  #        0x29960  0      OPC=0     
  nop                        #  1     0x29960  1      OPC=1343  
  movq %rdi, %rcx            #  2     0x29961  3      OPC=1162  
  movq %rdi, %rax            #  3     0x29964  3      OPC=1162  
  leal (%rsi), %r8d          #  4     0x29967  3      OPC=1066  
  movsbl (%r15,%r8,1), %edx  #  5     0x2996a  5      OPC=1280  
  testb %r8b, %dl            #  6     0x2996f  3      OPC=2440  
  nopl %eax                  #  7     0x29972  3      OPC=1347  
  nop                        #  8     0x29975  1      OPC=1343  
  je .L_406f33               #  9     0x29976  6      OPC=893   
  nop                        #  10    0x2997c  1      OPC=1343  
  nopl %eax                  #  11    0x2997d  3      OPC=1347  
.L_406f21:                   #        0x29980  0      OPC=0     
  addq $0x1, %rcx            #  12    0x29980  4      OPC=70    
  addq $0x1, %rsi            #  13    0x29984  4      OPC=70    
  leal -0x1(%rcx), %r8d      #  14    0x29988  4      OPC=1066  
  movb %dl, (%r15,%r8,1)     #  15    0x2998c  4      OPC=1141  
  leal (%rsi), %r8d          #  16    0x29990  3      OPC=1066  
  movzbl (%r15,%r8,1), %edx  #  17    0x29993  5      OPC=1302  
  andb %dl, %dl              #  18    0x29998  2      OPC=143   
  jne .L_406f21              #  19    0x2999a  6      OPC=963   
.L_406f33:                   #        0x299a0  0      OPC=0     
  popq %r11                    #  70    0x2984c  2      OPC=1694  
  andl $0xe0, %r11d            #  71    0x2984e  4      OPC=132   
  addq %r15, %r11              #  76    0x29859  3      OPC=72    
  jmpq %r11                    #  77    0x2985c  3      OPC=928   
                                                                
.size my_strcpy, .-my_strcpy
