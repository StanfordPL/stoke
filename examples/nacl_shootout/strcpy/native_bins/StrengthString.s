  .text
  .globl StrengthString
  .type StrengthString, @function

#! file-offset 0x5cd2
#! rip-offset  0x405cd2
#! capacity    100 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.StrengthString:            #        0x405cd2  0      OPC=0     
  cmpl $0x6, %edi           #  1     0x405cd2  3      OPC=470   
  ja .L_405d0a              #  2     0x405cd5  6      OPC=863   
  nop                       #  3     0x405cdb  1      OPC=1343  
  nop                       #  4     0x405cdc  1      OPC=1343  
  movl %edi, %edi           #  5     0x405cdd  2      OPC=1157  
  jmpq 0x408c90(,%rdi,8)    #  6     0x405cdf  7      OPC=927   
  movl $0x408ad2, %eax      #  7     0x405ce6  5      OPC=1154  
  retq                      #  8     0x405ceb  1      OPC=1978  
  movl $0x408ae2, %eax      #  9     0x405cec  5      OPC=1154  
  retq                      #  10    0x405cf1  1      OPC=1978  
  movl $0x408aec, %eax      #  11    0x405cf2  5      OPC=1154  
  retq                      #  12    0x405cf7  1      OPC=1978  
  movl $0x408afa, %eax      #  13    0x405cf8  5      OPC=1154  
  retq                      #  14    0x405cfd  1      OPC=1978  
  movl $0x408b02, %eax      #  15    0x405cfe  5      OPC=1154  
  retq                      #  16    0x405d03  1      OPC=1978  
  movl $0x408b0e, %eax      #  17    0x405d04  5      OPC=1154  
  retq                      #  18    0x405d09  1      OPC=1978  
  movl $0x408ac9, %eax      #  19    0x405d0a  5      OPC=1154  
  retq                      #  20    0x405d0f  1      OPC=1978  
.L_405d0a:                  #        0x405d10  0      OPC=0     
  subq $0x8, %rsp           #  21    0x405d10  4      OPC=2389  
  movl %edi, %r8d           #  22    0x405d14  3      OPC=1157  
  movl $0x408b16, %ecx      #  23    0x405d17  5      OPC=1154  
  movl $0x14, %edx          #  24    0x405d1c  5      OPC=1154  
  movl $0x1, %esi           #  25    0x405d21  5      OPC=1154  
  movl $0x625460, %edi      #  26    0x405d26  5      OPC=1154  
  xorl %eax, %eax           #  27    0x405d2b  2      OPC=3758  
  callq .__sprintf_chk_plt  #  28    0x405d2d  5      OPC=260   
  movl $0x625460, %eax      #  29    0x405d32  5      OPC=1154  
  addq $0x8, %rsp           #  30    0x405d37  4      OPC=70    
  retq                      #  31    0x405d3b  1      OPC=1978  
                                                                
.size StrengthString, .-StrengthString

