  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x15a200
#! rip-offset  0x11a200
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.__sfmoreglue:                  #        0x11a200  0      OPC=0     
  pushq %r12                    #  1     0x11a200  2      OPC=1861  
  movl %esi, %r12d              #  2     0x11a202  3      OPC=1157  
  shll $0x7, %esi               #  3     0x11a205  3      OPC=2269  
  addl $0x10, %esi              #  4     0x11a208  3      OPC=65    
  movl %edi, %edi               #  5     0x11a20b  2      OPC=1157  
  pushq %rbx                    #  6     0x11a20d  1      OPC=1861  
  subl $0x8, %esp               #  7     0x11a20e  3      OPC=2384  
  addq %r15, %rsp               #  8     0x11a211  3      OPC=72    
  nop                           #  9     0x11a214  1      OPC=1343  
  nop                           #  10    0x11a215  1      OPC=1343  
  nop                           #  11    0x11a216  1      OPC=1343  
  nop                           #  12    0x11a217  1      OPC=1343  
  nop                           #  13    0x11a218  1      OPC=1343  
  nop                           #  14    0x11a219  1      OPC=1343  
  nop                           #  15    0x11a21a  1      OPC=1343  
  callq ._malloc_r              #  16    0x11a21b  5      OPC=260   
  movl %eax, %ebx               #  17    0x11a220  2      OPC=1157  
  xorl %eax, %eax               #  18    0x11a222  2      OPC=3758  
  testq %rbx, %rbx              #  19    0x11a224  3      OPC=2438  
  je .L_11a280                  #  20    0x11a227  6      OPC=893   
  nop                           #  21    0x11a22d  1      OPC=1343  
  nop                           #  22    0x11a22e  1      OPC=1343  
  leal 0x10(%rbx), %edi         #  23    0x11a22f  3      OPC=1066  
  movl %r12d, %edx              #  24    0x11a232  3      OPC=1157  
  movl %ebx, %ebx               #  25    0x11a235  2      OPC=1157  
  movl $0x0, (%r15,%rbx,1)      #  26    0x11a237  8      OPC=1135  
  movl %ebx, %ebx               #  27    0x11a23f  2      OPC=1157  
  movl %r12d, 0x4(%r15,%rbx,1)  #  28    0x11a241  5      OPC=1136  
  shll $0x7, %edx               #  29    0x11a246  3      OPC=2269  
  xorl %esi, %esi               #  30    0x11a249  2      OPC=3758  
  movl %ebx, %ebx               #  31    0x11a24b  2      OPC=1157  
  movl %edi, 0x8(%r15,%rbx,1)   #  32    0x11a24d  5      OPC=1136  
  nop                           #  33    0x11a252  1      OPC=1343  
  nop                           #  34    0x11a253  1      OPC=1343  
  nop                           #  35    0x11a254  1      OPC=1343  
  nop                           #  36    0x11a255  1      OPC=1343  
  nop                           #  37    0x11a256  1      OPC=1343  
  nop                           #  38    0x11a257  1      OPC=1343  
  nop                           #  39    0x11a258  1      OPC=1343  
  nop                           #  40    0x11a259  1      OPC=1343  
  nop                           #  41    0x11a25a  1      OPC=1343  
  nop                           #  42    0x11a25b  1      OPC=1343  
  nop                           #  43    0x11a25c  1      OPC=1343  
  nop                           #  44    0x11a25d  1      OPC=1343  
  nop                           #  45    0x11a25e  1      OPC=1343  
  nop                           #  46    0x11a25f  1      OPC=1343  
  nop                           #  47    0x11a260  1      OPC=1343  
  callq .memset                 #  48    0x11a261  5      OPC=260   
  movq %rbx, %rax               #  49    0x11a266  3      OPC=1162  
  nop                           #  50    0x11a269  1      OPC=1343  
  nop                           #  51    0x11a26a  1      OPC=1343  
  nop                           #  52    0x11a26b  1      OPC=1343  
  nop                           #  53    0x11a26c  1      OPC=1343  
  nop                           #  54    0x11a26d  1      OPC=1343  
  nop                           #  55    0x11a26e  1      OPC=1343  
  nop                           #  56    0x11a26f  1      OPC=1343  
  nop                           #  57    0x11a270  1      OPC=1343  
  nop                           #  58    0x11a271  1      OPC=1343  
  nop                           #  59    0x11a272  1      OPC=1343  
  nop                           #  60    0x11a273  1      OPC=1343  
  nop                           #  61    0x11a274  1      OPC=1343  
  nop                           #  62    0x11a275  1      OPC=1343  
  nop                           #  63    0x11a276  1      OPC=1343  
  nop                           #  64    0x11a277  1      OPC=1343  
  nop                           #  65    0x11a278  1      OPC=1343  
  nop                           #  66    0x11a279  1      OPC=1343  
  nop                           #  67    0x11a27a  1      OPC=1343  
  nop                           #  68    0x11a27b  1      OPC=1343  
  nop                           #  69    0x11a27c  1      OPC=1343  
  nop                           #  70    0x11a27d  1      OPC=1343  
  nop                           #  71    0x11a27e  1      OPC=1343  
  nop                           #  72    0x11a27f  1      OPC=1343  
  nop                           #  73    0x11a280  1      OPC=1343  
  nop                           #  74    0x11a281  1      OPC=1343  
  nop                           #  75    0x11a282  1      OPC=1343  
  nop                           #  76    0x11a283  1      OPC=1343  
  nop                           #  77    0x11a284  1      OPC=1343  
  nop                           #  78    0x11a285  1      OPC=1343  
.L_11a280:                      #        0x11a286  0      OPC=0     
  addl $0x8, %esp               #  79    0x11a286  3      OPC=65    
  addq %r15, %rsp               #  80    0x11a289  3      OPC=72    
  popq %rbx                     #  81    0x11a28c  1      OPC=1694  
  popq %r12                     #  82    0x11a28d  2      OPC=1694  
  popq %r11                     #  83    0x11a28f  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  84    0x11a291  7      OPC=131   
  nop                           #  85    0x11a298  1      OPC=1343  
  nop                           #  86    0x11a299  1      OPC=1343  
  nop                           #  87    0x11a29a  1      OPC=1343  
  nop                           #  88    0x11a29b  1      OPC=1343  
  addq %r15, %r11               #  89    0x11a29c  3      OPC=72    
  jmpq %r11                     #  90    0x11a29f  3      OPC=928   
  nop                           #  91    0x11a2a2  1      OPC=1343  
  nop                           #  92    0x11a2a3  1      OPC=1343  
  nop                           #  93    0x11a2a4  1      OPC=1343  
  nop                           #  94    0x11a2a5  1      OPC=1343  
  nop                           #  95    0x11a2a6  1      OPC=1343  
  nop                           #  96    0x11a2a7  1      OPC=1343  
  nop                           #  97    0x11a2a8  1      OPC=1343  
  nop                           #  98    0x11a2a9  1      OPC=1343  
  nop                           #  99    0x11a2aa  1      OPC=1343  
  nop                           #  100   0x11a2ab  1      OPC=1343  
  nop                           #  101   0x11a2ac  1      OPC=1343  
                                                                    
.size __sfmoreglue, .-__sfmoreglue

