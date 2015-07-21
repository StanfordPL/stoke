  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x6f14
#! rip-offset  0x406f14
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.my_strcpy:             #        0x406f14  0      OPC=0     
  movq %rdi, %rax       #  1     0x406f14  3      OPC=1162  
  movzbl (%rsi), %edx   #  2     0x406f17  3      OPC=1302  
  movq %rdi, %rcx       #  3     0x406f1a  3      OPC=1162  
  testb %dl, %dl        #  4     0x406f1d  2      OPC=2440  
  je .L_406f33          #  5     0x406f1f  6      OPC=893   
  nop                   #  6     0x406f25  1      OPC=1343  
  nop                   #  7     0x406f26  1      OPC=1343  
.L_406f21:              #        0x406f27  0      OPC=0     
  addq $0x1, %rcx       #  8     0x406f27  4      OPC=70    
  addq $0x1, %rsi       #  9     0x406f2b  4      OPC=70    
  movb %dl, -0x1(%rcx)  #  10    0x406f2f  3      OPC=1141  
  movzbl (%rsi), %edx   #  11    0x406f32  3      OPC=1302  
  testb %dl, %dl        #  12    0x406f35  2      OPC=2440  
  jne .L_406f21         #  13    0x406f37  6      OPC=963   
  nop                   #  14    0x406f3d  1      OPC=1343  
  nop                   #  15    0x406f3e  1      OPC=1343  
.L_406f33:              #        0x406f3f  0      OPC=0     
  retq                  #  16    0x406f3f  1      OPC=1978  
                                                            
.size my_strcpy, .-my_strcpy

