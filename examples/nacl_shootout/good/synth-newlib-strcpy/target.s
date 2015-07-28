  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes


# Text                            #  Line  RIP   Bytes  Opcode    
.strcpy:                          #        0     0      OPC=0     
  movq %rdi, %rcx                 #  1     0     3      OPC=1162  
  movq %rdi, %rax                 #  2     0x3   3      OPC=1162  
  movq %rdi, %rdx                 #  3     0x6   3      OPC=1162  
  orq %rsi, %rcx                  #  4     0x9   3      OPC=1385  
  andl $0x7, %ecx                 #  5     0xc   3      OPC=132   
  jne .L_68                       #  6     0xf   6      OPC=963   
  nop                             #  7     0x15  1      OPC=1343  
  nop                             #  8     0x16  1      OPC=1343  
  leal (%rsi), %r11d
  movq (%r15, %r11), %rcx         
  movq $0xfefefefefefefeff, %r11  #  10    0x1a  10     OPC=1160  
  movq $0x8080808080808080, %r10  #  11    0x24  10     OPC=1160  
  movq %rcx, %rdi                 #  12    0x2e  3      OPC=1162  
  leaq (%rcx,%r11,1), %rdx        #  13    0x31  4      OPC=1069  
  notq %rdi                       #  14    0x35  3      OPC=1354  
  andq %rdi, %rdx                 #  15    0x38  3      OPC=139   
  testq %r10, %rdx                #  16    0x3b  3      OPC=2438  
  movq %rax, %rdx                 #  17    0x3e  3      OPC=1162  
  jne .L_68                       #  18    0x41  6      OPC=963   
  nop                             #  19    0x47  1      OPC=1343  
  nop                             #  20    0x48  1      OPC=1343  
  nop                             #  21    0x49  1      OPC=1343  
  nop                             #  22    0x4a  1      OPC=1343  
  nop                             #  23    0x4b  1      OPC=1343  
.L_40:                            #        0x4c  0      OPC=0     
  addq $0x8, %rdx                 #  24    0x4c  4      OPC=70    
  addq $0x8, %rsi                 #  25    0x50  4      OPC=70    
  leal -0x8(%rdx), %r8d
  movq %rcx, (%r15, %r8)
  leal (%rsi), %r8d
  movq (%r15, %r8), %rcx               #  27    0x58  3      OPC=1161  
  movq %rcx, %r9                  #  28    0x5b  3      OPC=1162  
  leaq (%rcx,%r11,1), %r8         #  29    0x5e  4      OPC=1069  
  notq %r9                        #  30    0x62  3      OPC=1354  
  andq %r9, %r8                   #  31    0x65  3      OPC=139   
  testq %r10, %r8                 #  32    0x68  3      OPC=2438  
  je .L_40                        #  33    0x6b  6      OPC=893   
  nop                             #  34    0x71  1      OPC=1343  
  nop                             #  35    0x72  1      OPC=1343  
  nop                             #  36    0x73  1      OPC=1343  
  nop                             #  37    0x74  1      OPC=1343  
  nop                             #  38    0x75  1      OPC=1343  
  nop                             #  39    0x76  1      OPC=1343  
  nop                             #  40    0x77  1      OPC=1343  
  nop                             #  41    0x78  1      OPC=1343  
  nop                             #  42    0x79  1      OPC=1343  
.L_68:                            #        0x7a  0      OPC=0     
  addq $0x1, %rsi                 #  43    0x7a  4      OPC=70    
  leal -0x1(%rsi), %ecx
  movzbl (%r15, %rcx), %ecx         #  44    0x7e  4      OPC=1302  
  addq $0x1, %rdx                 #  45    0x82  4      OPC=70    
  testb %cl, %cl                  #  46    0x86  2      OPC=2440  
  leal -0x1(%rdx), %r8d
  movb %cl, (%r15, %r8)            #  47    0x88  3      OPC=1141  
  jne .L_68                       #  48    0x8b  6      OPC=963   
  nop                             #  49    0x91  1      OPC=1343  
  nop                             #  50    0x92  1      OPC=1343  
  retq                            #  51    0x93  1      OPC=1978  


                                                                  
.size strcpy, .-strcpy

