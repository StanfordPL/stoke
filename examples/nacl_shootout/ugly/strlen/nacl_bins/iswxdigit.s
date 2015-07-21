  .text
  .globl iswxdigit
  .type iswxdigit, @function

#! file-offset 0x15f5a0
#! rip-offset  0x11f5a0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswxdigit:                #        0x11f5a0  0      OPC=0     
  leal -0x61(%rdi), %eax   #  1     0x11f5a0  3      OPC=1066  
  cmpl $0x5, %eax          #  2     0x11f5a3  3      OPC=470   
  ja .L_11f5e0             #  3     0x11f5a6  6      OPC=863   
  nop                      #  4     0x11f5ac  1      OPC=1343  
  nop                      #  5     0x11f5ad  1      OPC=1343  
  nop                      #  6     0x11f5ae  1      OPC=1343  
  nop                      #  7     0x11f5af  1      OPC=1343  
  nop                      #  8     0x11f5b0  1      OPC=1343  
  nop                      #  9     0x11f5b1  1      OPC=1343  
  nop                      #  10    0x11f5b2  1      OPC=1343  
  nop                      #  11    0x11f5b3  1      OPC=1343  
  nop                      #  12    0x11f5b4  1      OPC=1343  
  nop                      #  13    0x11f5b5  1      OPC=1343  
  nop                      #  14    0x11f5b6  1      OPC=1343  
  nop                      #  15    0x11f5b7  1      OPC=1343  
  nop                      #  16    0x11f5b8  1      OPC=1343  
  nop                      #  17    0x11f5b9  1      OPC=1343  
  nop                      #  18    0x11f5ba  1      OPC=1343  
  nop                      #  19    0x11f5bb  1      OPC=1343  
  nop                      #  20    0x11f5bc  1      OPC=1343  
  nop                      #  21    0x11f5bd  1      OPC=1343  
  nop                      #  22    0x11f5be  1      OPC=1343  
  nop                      #  23    0x11f5bf  1      OPC=1343  
  nop                      #  24    0x11f5c0  1      OPC=1343  
  nop                      #  25    0x11f5c1  1      OPC=1343  
  nop                      #  26    0x11f5c2  1      OPC=1343  
  nop                      #  27    0x11f5c3  1      OPC=1343  
  nop                      #  28    0x11f5c4  1      OPC=1343  
  nop                      #  29    0x11f5c5  1      OPC=1343  
.L_11f5c0:                 #        0x11f5c6  0      OPC=0     
  movl $0x1, %eax          #  30    0x11f5c6  5      OPC=1154  
  popq %r11                #  31    0x11f5cb  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  32    0x11f5cd  7      OPC=131   
  nop                      #  33    0x11f5d4  1      OPC=1343  
  nop                      #  34    0x11f5d5  1      OPC=1343  
  nop                      #  35    0x11f5d6  1      OPC=1343  
  nop                      #  36    0x11f5d7  1      OPC=1343  
  addq %r15, %r11          #  37    0x11f5d8  3      OPC=72    
  jmpq %r11                #  38    0x11f5db  3      OPC=928   
  nop                      #  39    0x11f5de  1      OPC=1343  
  nop                      #  40    0x11f5df  1      OPC=1343  
  nop                      #  41    0x11f5e0  1      OPC=1343  
  nop                      #  42    0x11f5e1  1      OPC=1343  
  nop                      #  43    0x11f5e2  1      OPC=1343  
  nop                      #  44    0x11f5e3  1      OPC=1343  
  nop                      #  45    0x11f5e4  1      OPC=1343  
  nop                      #  46    0x11f5e5  1      OPC=1343  
  nop                      #  47    0x11f5e6  1      OPC=1343  
  nop                      #  48    0x11f5e7  1      OPC=1343  
  nop                      #  49    0x11f5e8  1      OPC=1343  
  nop                      #  50    0x11f5e9  1      OPC=1343  
  nop                      #  51    0x11f5ea  1      OPC=1343  
  nop                      #  52    0x11f5eb  1      OPC=1343  
  nop                      #  53    0x11f5ec  1      OPC=1343  
.L_11f5e0:                 #        0x11f5ed  0      OPC=0     
  leal -0x30(%rdi), %eax   #  54    0x11f5ed  3      OPC=1066  
  cmpl $0x9, %eax          #  55    0x11f5f0  3      OPC=470   
  jbe .L_11f5c0            #  56    0x11f5f3  6      OPC=881   
  nop                      #  57    0x11f5f9  1      OPC=1343  
  nop                      #  58    0x11f5fa  1      OPC=1343  
  subl $0x41, %edi         #  59    0x11f5fb  3      OPC=2384  
  xorl %eax, %eax          #  60    0x11f5fe  2      OPC=3758  
  cmpl $0x5, %edi          #  61    0x11f600  3      OPC=470   
  setbe %al                #  62    0x11f603  3      OPC=2172  
  popq %r11                #  63    0x11f606  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  64    0x11f608  7      OPC=131   
  nop                      #  65    0x11f60f  1      OPC=1343  
  nop                      #  66    0x11f610  1      OPC=1343  
  nop                      #  67    0x11f611  1      OPC=1343  
  nop                      #  68    0x11f612  1      OPC=1343  
  addq %r15, %r11          #  69    0x11f613  3      OPC=72    
  jmpq %r11                #  70    0x11f616  3      OPC=928   
  nop                      #  71    0x11f619  1      OPC=1343  
                                                               
.size iswxdigit, .-iswxdigit

