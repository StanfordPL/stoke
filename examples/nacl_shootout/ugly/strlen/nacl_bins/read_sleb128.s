  .text
  .globl read_sleb128
  .type read_sleb128, @function

#! file-offset 0x1493c0
#! rip-offset  0x1093c0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.read_sleb128:                #        0x1093c0  0      OPC=0     
  movl %edi, %eax             #  1     0x1093c0  2      OPC=1157  
  movl %esi, %esi             #  2     0x1093c2  2      OPC=1157  
  xorl %r8d, %r8d             #  3     0x1093c4  3      OPC=3758  
  xorl %ecx, %ecx             #  4     0x1093c7  2      OPC=3758  
  nop                         #  5     0x1093c9  1      OPC=1343  
  nop                         #  6     0x1093ca  1      OPC=1343  
  nop                         #  7     0x1093cb  1      OPC=1343  
  nop                         #  8     0x1093cc  1      OPC=1343  
  nop                         #  9     0x1093cd  1      OPC=1343  
  nop                         #  10    0x1093ce  1      OPC=1343  
  nop                         #  11    0x1093cf  1      OPC=1343  
  nop                         #  12    0x1093d0  1      OPC=1343  
  nop                         #  13    0x1093d1  1      OPC=1343  
  nop                         #  14    0x1093d2  1      OPC=1343  
  nop                         #  15    0x1093d3  1      OPC=1343  
  nop                         #  16    0x1093d4  1      OPC=1343  
  nop                         #  17    0x1093d5  1      OPC=1343  
  nop                         #  18    0x1093d6  1      OPC=1343  
  nop                         #  19    0x1093d7  1      OPC=1343  
  nop                         #  20    0x1093d8  1      OPC=1343  
  nop                         #  21    0x1093d9  1      OPC=1343  
  nop                         #  22    0x1093da  1      OPC=1343  
  nop                         #  23    0x1093db  1      OPC=1343  
  nop                         #  24    0x1093dc  1      OPC=1343  
  nop                         #  25    0x1093dd  1      OPC=1343  
  nop                         #  26    0x1093de  1      OPC=1343  
  nop                         #  27    0x1093df  1      OPC=1343  
.L_1093e0:                    #        0x1093e0  0      OPC=0     
  movl %eax, %eax             #  28    0x1093e0  2      OPC=1157  
  movzbl (%r15,%rax,1), %edi  #  29    0x1093e2  5      OPC=1302  
  addl $0x1, %eax             #  30    0x1093e7  3      OPC=65    
  movzbl %dil, %r9d           #  31    0x1093ea  4      OPC=1304  
  movl %r9d, %edx             #  32    0x1093ee  3      OPC=1157  
  andl $0x7f, %edx            #  33    0x1093f1  3      OPC=132   
  shll %cl, %edx              #  34    0x1093f4  2      OPC=2268  
  addl $0x7, %ecx             #  35    0x1093f6  3      OPC=65    
  orl %edx, %r8d              #  36    0x1093f9  3      OPC=1380  
  testb %dil, %dil            #  37    0x1093fc  3      OPC=2440  
  nop                         #  38    0x1093ff  1      OPC=1343  
  js .L_1093e0                #  39    0x109400  6      OPC=1043  
  nop                         #  40    0x109406  1      OPC=1343  
  nop                         #  41    0x109407  1      OPC=1343  
  cmpl $0x1f, %ecx            #  42    0x109408  3      OPC=470   
  ja .L_109420                #  43    0x10940b  6      OPC=863   
  nop                         #  44    0x109411  1      OPC=1343  
  nop                         #  45    0x109412  1      OPC=1343  
  andl $0x40, %r9d            #  46    0x109413  4      OPC=132   
  je .L_109420                #  47    0x109417  6      OPC=893   
  nop                         #  48    0x10941d  1      OPC=1343  
  nop                         #  49    0x10941e  1      OPC=1343  
  movl $0xffffffff, %edx      #  50    0x10941f  6      OPC=1155  
  shll %cl, %edx              #  51    0x109425  2      OPC=2268  
  orl %edx, %r8d              #  52    0x109427  3      OPC=1380  
  nop                         #  53    0x10942a  1      OPC=1343  
  nop                         #  54    0x10942b  1      OPC=1343  
  nop                         #  55    0x10942c  1      OPC=1343  
  nop                         #  56    0x10942d  1      OPC=1343  
  nop                         #  57    0x10942e  1      OPC=1343  
  nop                         #  58    0x10942f  1      OPC=1343  
  nop                         #  59    0x109430  1      OPC=1343  
  nop                         #  60    0x109431  1      OPC=1343  
  nop                         #  61    0x109432  1      OPC=1343  
.L_109420:                    #        0x109433  0      OPC=0     
  popq %r11                   #  62    0x109433  2      OPC=1694  
  movl %esi, %esi             #  63    0x109435  2      OPC=1157  
  movl %r8d, (%r15,%rsi,1)    #  64    0x109437  4      OPC=1136  
  andl $0xffffffe0, %r11d     #  65    0x10943b  7      OPC=131   
  nop                         #  66    0x109442  1      OPC=1343  
  nop                         #  67    0x109443  1      OPC=1343  
  nop                         #  68    0x109444  1      OPC=1343  
  nop                         #  69    0x109445  1      OPC=1343  
  addq %r15, %r11             #  70    0x109446  3      OPC=72    
  jmpq %r11                   #  71    0x109449  3      OPC=928   
  nop                         #  72    0x10944c  1      OPC=1343  
  nop                         #  73    0x10944d  1      OPC=1343  
  nop                         #  74    0x10944e  1      OPC=1343  
  nop                         #  75    0x10944f  1      OPC=1343  
  nop                         #  76    0x109450  1      OPC=1343  
  nop                         #  77    0x109451  1      OPC=1343  
  nop                         #  78    0x109452  1      OPC=1343  
  nop                         #  79    0x109453  1      OPC=1343  
  nop                         #  80    0x109454  1      OPC=1343  
  nop                         #  81    0x109455  1      OPC=1343  
  nop                         #  82    0x109456  1      OPC=1343  
  nop                         #  83    0x109457  1      OPC=1343  
  nop                         #  84    0x109458  1      OPC=1343  
  nop                         #  85    0x109459  1      OPC=1343  
                                                                  
.size read_sleb128, .-read_sleb128

