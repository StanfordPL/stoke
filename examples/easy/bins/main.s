  .text
  .globl main
  .type main, @function

#! file-offset 0x470
#! rip-offset  0x400470
#! capacity    51 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.main:                     #        0x400470  0      OPC=0     
  pushq %rbx               #  1     0x400470  1      OPC=1861  
  xorl %ebx, %ebx          #  2     0x400471  2      OPC=3758  
  nop                      #  3     0x400473  1      OPC=1343  
  nop                      #  4     0x400474  1      OPC=1343  
  nop                      #  5     0x400475  1      OPC=1343  
  nop                      #  6     0x400476  1      OPC=1343  
  nop                      #  7     0x400477  1      OPC=1343  
.L_400478:                 #        0x400478  0      OPC=0     
  movl %ebx, %edi          #  8     0x400478  2      OPC=1157  
  callq .calc              #  9     0x40047a  5      OPC=260   
  movl %ebx, %edx          #  10    0x40047f  2      OPC=1157  
  movl %eax, %ecx          #  11    0x400481  2      OPC=1157  
  movl $0x400634, %esi     #  12    0x400483  5      OPC=1154  
  xorl %eax, %eax          #  13    0x400488  2      OPC=3758  
  movl $0x1, %edi          #  14    0x40048a  5      OPC=1154  
  addl $0x1, %ebx          #  15    0x40048f  3      OPC=65    
  callq .__printf_chk_plt  #  16    0x400492  5      OPC=260   
  cmpl $0x3e8, %ebx        #  17    0x400497  6      OPC=469   
  jne .L_400478            #  18    0x40049d  6      OPC=963   
  nop                      #  19    0x4004a3  1      OPC=1343  
  nop                      #  20    0x4004a4  1      OPC=1343  
  xorl %eax, %eax          #  21    0x4004a5  2      OPC=3758  
  popq %rbx                #  22    0x4004a7  1      OPC=1694  
  retq                     #  23    0x4004a8  1      OPC=1978  
                                                               
.size main, .-main

