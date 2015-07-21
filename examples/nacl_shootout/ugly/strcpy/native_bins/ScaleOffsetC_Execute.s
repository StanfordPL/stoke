  .text
  .globl ScaleOffsetC_Execute
  .type ScaleOffsetC_Execute, @function

#! file-offset 0x57f3
#! rip-offset  0x4057f3
#! capacity    74 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.ScaleOffsetC_Execute:     #        0x4057f3  0      OPC=0     
  movzbl 0x10(%rdi), %eax  #  1     0x4057f3  4      OPC=1302  
  testb %al, %al           #  2     0x4057f7  2      OPC=2440  
  je .L_40581f             #  3     0x4057f9  6      OPC=893   
  nop                      #  4     0x4057ff  1      OPC=1343  
  nop                      #  5     0x405800  1      OPC=1343  
  cmpb $0x1, %al           #  6     0x405801  2      OPC=449   
  jne .L_40581e            #  7     0x405803  6      OPC=963   
  nop                      #  8     0x405809  1      OPC=1343  
  nop                      #  9     0x40580a  1      OPC=1343  
  movq 0x20(%rdi), %rcx    #  10    0x40580b  4      OPC=1161  
  movq 0x38(%rdi), %rax    #  11    0x40580f  4      OPC=1161  
  movq 0x30(%rdi), %rdx    #  12    0x405813  4      OPC=1161  
  movq (%rax), %rax        #  13    0x405817  3      OPC=1161  
  subq (%rdx), %rax        #  14    0x40581a  3      OPC=2390  
  movq 0x28(%rdi), %rsi    #  15    0x40581d  4      OPC=1161  
  cqto                     #  16    0x405821  2      OPC=527   
  idivq (%rsi)             #  17    0x405823  3      OPC=799   
  movq %rax, (%rcx)        #  18    0x405826  3      OPC=1138  
  retq                     #  19    0x405829  1      OPC=1978  
.L_40581e:                 #        0x40582a  0      OPC=0     
  retq                     #  20    0x40582a  1      OPC=1978  
.L_40581f:                 #        0x40582b  0      OPC=0     
  movq 0x38(%rdi), %rdx    #  21    0x40582b  4      OPC=1161  
  movq 0x20(%rdi), %rax    #  22    0x40582f  4      OPC=1161  
  movq 0x28(%rdi), %rcx    #  23    0x405833  4      OPC=1161  
  movq (%rax), %rax        #  24    0x405837  3      OPC=1161  
  imulq (%rcx), %rax       #  25    0x40583a  4      OPC=825   
  movq 0x30(%rdi), %rcx    #  26    0x40583e  4      OPC=1161  
  addq (%rcx), %rax        #  27    0x405842  3      OPC=71    
  movq %rax, (%rdx)        #  28    0x405845  3      OPC=1138  
  retq                     #  29    0x405848  1      OPC=1978  
                                                               
.size ScaleOffsetC_Execute, .-ScaleOffsetC_Execute

