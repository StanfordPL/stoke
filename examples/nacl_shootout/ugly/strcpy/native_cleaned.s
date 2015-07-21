  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69960
#! rip-offset  0x29960
#! capacity    96 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.my_strcpy:             #        0x406f14  0      OPC=0     
  movq %rdi, %rax       #  1     0x406f14  3      OPC=1162  
  leal (%rsi), %r8d
  movzbl (%r15, %r8, 1), %edx   #  2     0x406f17  3      OPC=1302  
  movq %rdi, %rcx       #  3     0x406f1a  3      OPC=1162  
  testb %dl, %dl        #  4     0x406f1d  2      OPC=2440  
  je .L_406f33          #  5     0x406f1f  6      OPC=893   
  nop                   #  6     0x406f25  1      OPC=1343  
  nop                   #  7     0x406f26  1      OPC=1343  
.L_406f21:              #        0x406f27  0      OPC=0     
  addq $0x1, %rcx       #  8     0x406f27  4      OPC=70     # LIVE IN = rax, rsi, dl, rcx
  addq $0x1, %rsi       #  9     0x406f2b  4      OPC=70     # LIVE IN = rax, rsi, dl, rcx
  leal -0x1(%rcx), %r8d
  movb %dl, (%r15, %r8, 1)  #  10    0x406f2f  3      OPC=1141   # LIVE IN = rax, rsi, dl, rcx
  leal (%rsi), %r8d
  movzbl (%r15, %r8, 1), %edx   #  11    0x406f32  3      OPC=1302   # LIVE IN = rax, rsi
  testb %dl, %dl        #  12    0x406f35  2      OPC=2440   # LIVE IN = rax, dl, [rsi, rcx]
  jne .L_406f21         #  13    0x406f37  6      OPC=963    # LIVE IN = rax, [dl, rsi, rcx]
  nop                   #  14    0x406f3d  1      OPC=1343  
  nop                   #  15    0x406f3e  1      OPC=1343  
.L_406f33:              #        0x406f3f  0      OPC=0     
  retq                  #  16    0x406f3f  1      OPC=1978  
                                                            
.size my_strcpy, .-my_strcpy

