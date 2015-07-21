  .text
  .globl __gmpn_rshift
  .type __gmpn_rshift, @function

#! file-offset 0x77840
#! rip-offset  0x37840
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.__gmpn_rshift:                 #        0x37840  0      OPC=0     
  pushq %r13                    #  1     0x37840  2      OPC=1861  
  movl %esi, %esi               #  2     0x37842  2      OPC=1157  
  movl $0x20, %eax              #  3     0x37844  5      OPC=1154  
  movl %edx, %r8d               #  4     0x37849  3      OPC=1157  
  subl %ecx, %eax               #  5     0x3784c  2      OPC=2386  
  movl %edi, %edi               #  6     0x3784e  2      OPC=1157  
  pushq %r12                    #  7     0x37850  2      OPC=1861  
  pushq %rbx                    #  8     0x37852  1      OPC=1861  
  movl %esi, %esi               #  9     0x37853  2      OPC=1157  
  movl (%r15,%rsi,1), %r12d     #  10    0x37855  4      OPC=1156  
  movl %ecx, %ebx               #  11    0x37859  2      OPC=1157  
  movl %r12d, %r11d             #  12    0x3785b  3      OPC=1157  
  xchgw %ax, %ax                #  13    0x3785e  2      OPC=3700  
  shrl %cl, %r11d               #  14    0x37860  3      OPC=2311  
  subl $0x1, %r8d               #  15    0x37863  4      OPC=2384  
  je .L_378c0                   #  16    0x37867  6      OPC=893   
  nop                           #  17    0x3786d  1      OPC=1343  
  nop                           #  18    0x3786e  1      OPC=1343  
  addl $0x4, %esi               #  19    0x3786f  3      OPC=65    
  movq %rdi, %r9                #  20    0x37872  3      OPC=1162  
  xchgw %ax, %ax                #  21    0x37875  2      OPC=3700  
  nop                           #  22    0x37877  1      OPC=1343  
  nop                           #  23    0x37878  1      OPC=1343  
  nop                           #  24    0x37879  1      OPC=1343  
  nop                           #  25    0x3787a  1      OPC=1343  
  nop                           #  26    0x3787b  1      OPC=1343  
  nop                           #  27    0x3787c  1      OPC=1343  
  nop                           #  28    0x3787d  1      OPC=1343  
  nop                           #  29    0x3787e  1      OPC=1343  
  nop                           #  30    0x3787f  1      OPC=1343  
  nop                           #  31    0x37880  1      OPC=1343  
  nop                           #  32    0x37881  1      OPC=1343  
  nop                           #  33    0x37882  1      OPC=1343  
  nop                           #  34    0x37883  1      OPC=1343  
  nop                           #  35    0x37884  1      OPC=1343  
  nop                           #  36    0x37885  1      OPC=1343  
.L_37880:                       #        0x37886  0      OPC=0     
  movl %esi, %esi               #  37    0x37886  2      OPC=1157  
  movl (%r15,%rsi,1), %r10d     #  38    0x37888  4      OPC=1156  
  movl %eax, %ecx               #  39    0x3788c  2      OPC=1157  
  addl $0x4, %esi               #  40    0x3788e  3      OPC=65    
  movl %r10d, %r13d             #  41    0x37891  3      OPC=1157  
  shll %cl, %r13d               #  42    0x37894  3      OPC=2268  
  movl %ebx, %ecx               #  43    0x37897  2      OPC=1157  
  orl %r11d, %r13d              #  44    0x37899  3      OPC=1380  
  movl %r10d, %r11d             #  45    0x3789c  3      OPC=1157  
  movl %r9d, %r9d               #  46    0x3789f  3      OPC=1157  
  movl %r13d, (%r15,%r9,1)      #  47    0x378a2  4      OPC=1136  
  shrl %cl, %r11d               #  48    0x378a6  3      OPC=2311  
  addl $0x4, %r9d               #  49    0x378a9  4      OPC=65    
  subl $0x1, %r8d               #  50    0x378ad  4      OPC=2384  
  jne .L_37880                  #  51    0x378b1  6      OPC=963   
  nop                           #  52    0x378b7  1      OPC=1343  
  nop                           #  53    0x378b8  1      OPC=1343  
  leal -0x4(%rdi,%rdx,4), %edi  #  54    0x378b9  4      OPC=1066  
  nop                           #  55    0x378bd  1      OPC=1343  
  nop                           #  56    0x378be  1      OPC=1343  
  nop                           #  57    0x378bf  1      OPC=1343  
  nop                           #  58    0x378c0  1      OPC=1343  
  nop                           #  59    0x378c1  1      OPC=1343  
  nop                           #  60    0x378c2  1      OPC=1343  
  nop                           #  61    0x378c3  1      OPC=1343  
  nop                           #  62    0x378c4  1      OPC=1343  
  nop                           #  63    0x378c5  1      OPC=1343  
  nop                           #  64    0x378c6  1      OPC=1343  
  nop                           #  65    0x378c7  1      OPC=1343  
  nop                           #  66    0x378c8  1      OPC=1343  
  nop                           #  67    0x378c9  1      OPC=1343  
  nop                           #  68    0x378ca  1      OPC=1343  
  nop                           #  69    0x378cb  1      OPC=1343  
.L_378c0:                       #        0x378cc  0      OPC=0     
  movl %eax, %ecx               #  70    0x378cc  2      OPC=1157  
  movl %edi, %edi               #  71    0x378ce  2      OPC=1157  
  movl %r11d, (%r15,%rdi,1)     #  72    0x378d0  4      OPC=1136  
  shll %cl, %r12d               #  73    0x378d4  3      OPC=2268  
  popq %rbx                     #  74    0x378d7  1      OPC=1694  
  movl %r12d, %eax              #  75    0x378d8  3      OPC=1157  
  popq %r12                     #  76    0x378db  2      OPC=1694  
  popq %r13                     #  77    0x378dd  2      OPC=1694  
  popq %r11                     #  78    0x378df  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  79    0x378e1  7      OPC=131   
  nop                           #  80    0x378e8  1      OPC=1343  
  nop                           #  81    0x378e9  1      OPC=1343  
  nop                           #  82    0x378ea  1      OPC=1343  
  nop                           #  83    0x378eb  1      OPC=1343  
  addq %r15, %r11               #  84    0x378ec  3      OPC=72    
  jmpq %r11                     #  85    0x378ef  3      OPC=928   
  nop                           #  86    0x378f2  1      OPC=1343  
                                                                   
.size __gmpn_rshift, .-__gmpn_rshift

