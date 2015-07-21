  .text
  .globl _ftell_r
  .type _ftell_r, @function

#! file-offset 0x15c400
#! rip-offset  0x11c400
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
._ftell_r:                 #        0x11c400  0      OPC=0     
  subl $0x8, %esp          #  1     0x11c400  3      OPC=2384  
  addq %r15, %rsp          #  2     0x11c403  3      OPC=72    
  movl %edi, %edi          #  3     0x11c406  2      OPC=1157  
  movl %esi, %esi          #  4     0x11c408  2      OPC=1157  
  xchgw %ax, %ax           #  5     0x11c40a  2      OPC=3700  
  nop                      #  6     0x11c40c  1      OPC=1343  
  nop                      #  7     0x11c40d  1      OPC=1343  
  nop                      #  8     0x11c40e  1      OPC=1343  
  nop                      #  9     0x11c40f  1      OPC=1343  
  nop                      #  10    0x11c410  1      OPC=1343  
  nop                      #  11    0x11c411  1      OPC=1343  
  nop                      #  12    0x11c412  1      OPC=1343  
  nop                      #  13    0x11c413  1      OPC=1343  
  nop                      #  14    0x11c414  1      OPC=1343  
  nop                      #  15    0x11c415  1      OPC=1343  
  nop                      #  16    0x11c416  1      OPC=1343  
  nop                      #  17    0x11c417  1      OPC=1343  
  nop                      #  18    0x11c418  1      OPC=1343  
  nop                      #  19    0x11c419  1      OPC=1343  
  nop                      #  20    0x11c41a  1      OPC=1343  
  callq ._ftello_r         #  21    0x11c41b  5      OPC=260   
  addl $0x8, %esp          #  22    0x11c420  3      OPC=65    
  addq %r15, %rsp          #  23    0x11c423  3      OPC=72    
  popq %r11                #  24    0x11c426  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  25    0x11c428  7      OPC=131   
  nop                      #  26    0x11c42f  1      OPC=1343  
  nop                      #  27    0x11c430  1      OPC=1343  
  nop                      #  28    0x11c431  1      OPC=1343  
  nop                      #  29    0x11c432  1      OPC=1343  
  addq %r15, %r11          #  30    0x11c433  3      OPC=72    
  jmpq %r11                #  31    0x11c436  3      OPC=928   
  nop                      #  32    0x11c439  1      OPC=1343  
  nop                      #  33    0x11c43a  1      OPC=1343  
  nop                      #  34    0x11c43b  1      OPC=1343  
  nop                      #  35    0x11c43c  1      OPC=1343  
  nop                      #  36    0x11c43d  1      OPC=1343  
  nop                      #  37    0x11c43e  1      OPC=1343  
  nop                      #  38    0x11c43f  1      OPC=1343  
  nop                      #  39    0x11c440  1      OPC=1343  
  nop                      #  40    0x11c441  1      OPC=1343  
  nop                      #  41    0x11c442  1      OPC=1343  
  nop                      #  42    0x11c443  1      OPC=1343  
  nop                      #  43    0x11c444  1      OPC=1343  
  nop                      #  44    0x11c445  1      OPC=1343  
  nop                      #  45    0x11c446  1      OPC=1343  
                                                               
.size _ftell_r, .-_ftell_r

