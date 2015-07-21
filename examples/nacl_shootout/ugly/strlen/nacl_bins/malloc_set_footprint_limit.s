  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x150de0
#! rip-offset  0x110de0
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.malloc_set_footprint_limit:    #        0x110de0  0      OPC=0     
  xorl %eax, %eax               #  1     0x110de0  2      OPC=3758  
  cmpl $0xffffffff, %edi        #  2     0x110de2  6      OPC=469   
  nop                           #  3     0x110de8  1      OPC=1343  
  nop                           #  4     0x110de9  1      OPC=1343  
  nop                           #  5     0x110dea  1      OPC=1343  
  je .L_110e00                  #  6     0x110deb  6      OPC=893   
  nop                           #  7     0x110df1  1      OPC=1343  
  nop                           #  8     0x110df2  1      OPC=1343  
  movl 0xff67d6b(%rip), %edx    #  9     0x110df3  6      OPC=1156  
  leal -0x1(%rdx,%rdi,1), %eax  #  10    0x110df9  4      OPC=1066  
  negl %edx                     #  11    0x110dfd  2      OPC=1339  
  andl %edx, %eax               #  12    0x110dff  2      OPC=134   
  nop                           #  13    0x110e01  1      OPC=1343  
  nop                           #  14    0x110e02  1      OPC=1343  
  nop                           #  15    0x110e03  1      OPC=1343  
  nop                           #  16    0x110e04  1      OPC=1343  
  nop                           #  17    0x110e05  1      OPC=1343  
  nop                           #  18    0x110e06  1      OPC=1343  
  nop                           #  19    0x110e07  1      OPC=1343  
  nop                           #  20    0x110e08  1      OPC=1343  
  nop                           #  21    0x110e09  1      OPC=1343  
  nop                           #  22    0x110e0a  1      OPC=1343  
  nop                           #  23    0x110e0b  1      OPC=1343  
.L_110e00:                      #        0x110e0c  0      OPC=0     
  popq %r11                     #  24    0x110e0c  2      OPC=1694  
  movl %eax, 0xff67f30(%rip)    #  25    0x110e0e  6      OPC=1136  
  andl $0xffffffe0, %r11d       #  26    0x110e14  7      OPC=131   
  nop                           #  27    0x110e1b  1      OPC=1343  
  nop                           #  28    0x110e1c  1      OPC=1343  
  nop                           #  29    0x110e1d  1      OPC=1343  
  nop                           #  30    0x110e1e  1      OPC=1343  
  addq %r15, %r11               #  31    0x110e1f  3      OPC=72    
  jmpq %r11                     #  32    0x110e22  3      OPC=928   
  nop                           #  33    0x110e25  1      OPC=1343  
  nop                           #  34    0x110e26  1      OPC=1343  
  nop                           #  35    0x110e27  1      OPC=1343  
  nop                           #  36    0x110e28  1      OPC=1343  
  nop                           #  37    0x110e29  1      OPC=1343  
  nop                           #  38    0x110e2a  1      OPC=1343  
  nop                           #  39    0x110e2b  1      OPC=1343  
  nop                           #  40    0x110e2c  1      OPC=1343  
  nop                           #  41    0x110e2d  1      OPC=1343  
  nop                           #  42    0x110e2e  1      OPC=1343  
  nop                           #  43    0x110e2f  1      OPC=1343  
  nop                           #  44    0x110e30  1      OPC=1343  
  nop                           #  45    0x110e31  1      OPC=1343  
  nop                           #  46    0x110e32  1      OPC=1343  
                                                                    
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

