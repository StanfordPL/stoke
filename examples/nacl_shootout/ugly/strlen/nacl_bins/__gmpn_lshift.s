  .text
  .globl __gmpn_lshift
  .type __gmpn_lshift, @function

#! file-offset 0x72460
#! rip-offset  0x32460
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.__gmpn_lshift:                 #        0x32460  0      OPC=0     
  pushq %r13                    #  1     0x32460  2      OPC=1861  
  leal (,%rdx,4), %eax          #  2     0x32462  7      OPC=1066  
  movl %edx, %r8d               #  3     0x32469  3      OPC=1157  
  pushq %r12                    #  4     0x3246c  2      OPC=1861  
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x3246e  4      OPC=1066  
  addl %eax, %edi               #  6     0x32472  2      OPC=67    
  movl %ecx, %r12d              #  7     0x32474  3      OPC=1157  
  pushq %rbx                    #  8     0x32477  1      OPC=1861  
  movl %esi, %esi               #  9     0x32478  2      OPC=1157  
  movl (%r15,%rsi,1), %eax      #  10    0x3247a  4      OPC=1156  
  xchgw %ax, %ax                #  11    0x3247e  2      OPC=3700  
  movl $0x20, %ebx              #  12    0x32480  5      OPC=1154  
  subl %ecx, %ebx               #  13    0x32485  2      OPC=2386  
  movl %eax, %r11d              #  14    0x32487  3      OPC=1157  
  shll %cl, %r11d               #  15    0x3248a  3      OPC=2268  
  subl $0x1, %r8d               #  16    0x3248d  4      OPC=2384  
  je .L_324e0                   #  17    0x32491  6      OPC=893   
  nop                           #  18    0x32497  1      OPC=1343  
  nop                           #  19    0x32498  1      OPC=1343  
  movq %rdi, %r9                #  20    0x32499  3      OPC=1162  
  nop                           #  21    0x3249c  1      OPC=1343  
  nop                           #  22    0x3249d  1      OPC=1343  
  nop                           #  23    0x3249e  1      OPC=1343  
  nop                           #  24    0x3249f  1      OPC=1343  
  nop                           #  25    0x324a0  1      OPC=1343  
  nop                           #  26    0x324a1  1      OPC=1343  
  nop                           #  27    0x324a2  1      OPC=1343  
  nop                           #  28    0x324a3  1      OPC=1343  
  nop                           #  29    0x324a4  1      OPC=1343  
  nop                           #  30    0x324a5  1      OPC=1343  
.L_324a0:                       #        0x324a6  0      OPC=0     
  subl $0x4, %esi               #  31    0x324a6  3      OPC=2384  
  movl %ebx, %ecx               #  32    0x324a9  2      OPC=1157  
  subl $0x4, %r9d               #  33    0x324ab  4      OPC=2384  
  movl %esi, %esi               #  34    0x324af  2      OPC=1157  
  movl (%r15,%rsi,1), %r10d     #  35    0x324b1  4      OPC=1156  
  movl %r10d, %r13d             #  36    0x324b5  3      OPC=1157  
  shrl %cl, %r13d               #  37    0x324b8  3      OPC=2311  
  movl %r12d, %ecx              #  38    0x324bb  3      OPC=1157  
  orl %r11d, %r13d              #  39    0x324be  3      OPC=1380  
  movl %r10d, %r11d             #  40    0x324c1  3      OPC=1157  
  xchgw %ax, %ax                #  41    0x324c4  2      OPC=3700  
  shll %cl, %r11d               #  42    0x324c6  3      OPC=2268  
  subl $0x1, %r8d               #  43    0x324c9  4      OPC=2384  
  movl %r9d, %r9d               #  44    0x324cd  3      OPC=1157  
  movl %r13d, (%r15,%r9,1)      #  45    0x324d0  4      OPC=1136  
  jne .L_324a0                  #  46    0x324d4  6      OPC=963   
  nop                           #  47    0x324da  1      OPC=1343  
  nop                           #  48    0x324db  1      OPC=1343  
  subl $0x2, %edx               #  49    0x324dc  3      OPC=2384  
  notl %edx                     #  50    0x324df  2      OPC=1353  
  leal (%rdi,%rdx,4), %edi      #  51    0x324e1  3      OPC=1066  
  nop                           #  52    0x324e4  1      OPC=1343  
  nop                           #  53    0x324e5  1      OPC=1343  
  nop                           #  54    0x324e6  1      OPC=1343  
  nop                           #  55    0x324e7  1      OPC=1343  
  nop                           #  56    0x324e8  1      OPC=1343  
  nop                           #  57    0x324e9  1      OPC=1343  
  nop                           #  58    0x324ea  1      OPC=1343  
  nop                           #  59    0x324eb  1      OPC=1343  
.L_324e0:                       #        0x324ec  0      OPC=0     
  subl $0x4, %edi               #  60    0x324ec  3      OPC=2384  
  movl %ebx, %ecx               #  61    0x324ef  2      OPC=1157  
  movl %edi, %edi               #  62    0x324f1  2      OPC=1157  
  movl %r11d, (%r15,%rdi,1)     #  63    0x324f3  4      OPC=1136  
  shrl %cl, %eax                #  64    0x324f7  2      OPC=2311  
  popq %rbx                     #  65    0x324f9  1      OPC=1694  
  popq %r12                     #  66    0x324fa  2      OPC=1694  
  popq %r13                     #  67    0x324fc  2      OPC=1694  
  popq %r11                     #  68    0x324fe  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  69    0x32500  7      OPC=131   
  nop                           #  70    0x32507  1      OPC=1343  
  nop                           #  71    0x32508  1      OPC=1343  
  nop                           #  72    0x32509  1      OPC=1343  
  nop                           #  73    0x3250a  1      OPC=1343  
  addq %r15, %r11               #  74    0x3250b  3      OPC=72    
  jmpq %r11                     #  75    0x3250e  3      OPC=928   
  nop                           #  76    0x32511  1      OPC=1343  
  nop                           #  77    0x32512  1      OPC=1343  
                                                                   
.size __gmpn_lshift, .-__gmpn_lshift

