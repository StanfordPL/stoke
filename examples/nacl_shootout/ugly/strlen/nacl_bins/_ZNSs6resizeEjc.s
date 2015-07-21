  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0xeef60
#! rip-offset  0xaef60
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs6resizeEjc:                       #        0xaef60  0      OPC=0     
  movl %edi, %edi                       #  1     0xaef60  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xaef62  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xaef65  3      OPC=72    
  movl %edi, %edi                       #  4     0xaef68  2      OPC=1157  
  movl (%r15,%rdi,1), %eax              #  5     0xaef6a  4      OPC=1156  
  subl $0xc, %eax                       #  6     0xaef6e  3      OPC=2384  
  cmpl $0x3ffffffc, %esi                #  7     0xaef71  6      OPC=469   
  movl %eax, %eax                       #  8     0xaef77  2      OPC=1157  
  movl (%r15,%rax,1), %eax              #  9     0xaef79  4      OPC=1156  
  nop                                   #  10    0xaef7d  1      OPC=1343  
  nop                                   #  11    0xaef7e  1      OPC=1343  
  nop                                   #  12    0xaef7f  1      OPC=1343  
  ja .L_aefe0                           #  13    0xaef80  6      OPC=863   
  nop                                   #  14    0xaef86  1      OPC=1343  
  nop                                   #  15    0xaef87  1      OPC=1343  
  cmpl %eax, %esi                       #  16    0xaef88  2      OPC=472   
  ja .L_aefc0                           #  17    0xaef8a  6      OPC=863   
  nop                                   #  18    0xaef90  1      OPC=1343  
  nop                                   #  19    0xaef91  1      OPC=1343  
  jb .L_aefa0                           #  20    0xaef92  6      OPC=875   
  nop                                   #  21    0xaef98  1      OPC=1343  
  nop                                   #  22    0xaef99  1      OPC=1343  
  addl $0x8, %esp                       #  23    0xaef9a  3      OPC=65    
  addq %r15, %rsp                       #  24    0xaef9d  3      OPC=72    
  popq %r11                             #  25    0xaefa0  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  26    0xaefa2  7      OPC=131   
  nop                                   #  27    0xaefa9  1      OPC=1343  
  nop                                   #  28    0xaefaa  1      OPC=1343  
  nop                                   #  29    0xaefab  1      OPC=1343  
  nop                                   #  30    0xaefac  1      OPC=1343  
  addq %r15, %r11                       #  31    0xaefad  3      OPC=72    
  jmpq %r11                             #  32    0xaefb0  3      OPC=928   
  nop                                   #  33    0xaefb3  1      OPC=1343  
  nop                                   #  34    0xaefb4  1      OPC=1343  
  nop                                   #  35    0xaefb5  1      OPC=1343  
  nop                                   #  36    0xaefb6  1      OPC=1343  
  nop                                   #  37    0xaefb7  1      OPC=1343  
  nop                                   #  38    0xaefb8  1      OPC=1343  
.L_aefa0:                               #        0xaefb9  0      OPC=0     
  movl %eax, %edx                       #  39    0xaefb9  2      OPC=1157  
  xorl %ecx, %ecx                       #  40    0xaefbb  2      OPC=3758  
  addl $0x8, %esp                       #  41    0xaefbd  3      OPC=65    
  addq %r15, %rsp                       #  42    0xaefc0  3      OPC=72    
  subl %esi, %edx                       #  43    0xaefc3  2      OPC=2386  
  jmpq ._ZNSs9_M_mutateEjjj             #  44    0xaefc5  5      OPC=930   
  nop                                   #  45    0xaefca  1      OPC=1343  
  nop                                   #  46    0xaefcb  1      OPC=1343  
  nop                                   #  47    0xaefcc  1      OPC=1343  
  nop                                   #  48    0xaefcd  1      OPC=1343  
  nop                                   #  49    0xaefce  1      OPC=1343  
  nop                                   #  50    0xaefcf  1      OPC=1343  
  nop                                   #  51    0xaefd0  1      OPC=1343  
  nop                                   #  52    0xaefd1  1      OPC=1343  
  nop                                   #  53    0xaefd2  1      OPC=1343  
  nop                                   #  54    0xaefd3  1      OPC=1343  
  nop                                   #  55    0xaefd4  1      OPC=1343  
  nop                                   #  56    0xaefd5  1      OPC=1343  
  nop                                   #  57    0xaefd6  1      OPC=1343  
  nop                                   #  58    0xaefd7  1      OPC=1343  
  nop                                   #  59    0xaefd8  1      OPC=1343  
.L_aefc0:                               #        0xaefd9  0      OPC=0     
  movsbl %dl, %edx                      #  60    0xaefd9  3      OPC=1282  
  subl %eax, %esi                       #  61    0xaefdc  2      OPC=2386  
  addl $0x8, %esp                       #  62    0xaefde  3      OPC=65    
  addq %r15, %rsp                       #  63    0xaefe1  3      OPC=72    
  jmpq ._ZNSs6appendEjc                 #  64    0xaefe4  5      OPC=930   
  nop                                   #  65    0xaefe9  1      OPC=1343  
  nop                                   #  66    0xaefea  1      OPC=1343  
  nop                                   #  67    0xaefeb  1      OPC=1343  
  nop                                   #  68    0xaefec  1      OPC=1343  
  nop                                   #  69    0xaefed  1      OPC=1343  
  nop                                   #  70    0xaefee  1      OPC=1343  
  nop                                   #  71    0xaefef  1      OPC=1343  
  nop                                   #  72    0xaeff0  1      OPC=1343  
  nop                                   #  73    0xaeff1  1      OPC=1343  
  nop                                   #  74    0xaeff2  1      OPC=1343  
  nop                                   #  75    0xaeff3  1      OPC=1343  
  nop                                   #  76    0xaeff4  1      OPC=1343  
  nop                                   #  77    0xaeff5  1      OPC=1343  
  nop                                   #  78    0xaeff6  1      OPC=1343  
  nop                                   #  79    0xaeff7  1      OPC=1343  
  nop                                   #  80    0xaeff8  1      OPC=1343  
.L_aefe0:                               #        0xaeff9  0      OPC=0     
  movl $0x1003bb88, %edi                #  81    0xaeff9  5      OPC=1154  
  nop                                   #  82    0xaeffe  1      OPC=1343  
  nop                                   #  83    0xaefff  1      OPC=1343  
  nop                                   #  84    0xaf000  1      OPC=1343  
  nop                                   #  85    0xaf001  1      OPC=1343  
  nop                                   #  86    0xaf002  1      OPC=1343  
  nop                                   #  87    0xaf003  1      OPC=1343  
  nop                                   #  88    0xaf004  1      OPC=1343  
  nop                                   #  89    0xaf005  1      OPC=1343  
  nop                                   #  90    0xaf006  1      OPC=1343  
  nop                                   #  91    0xaf007  1      OPC=1343  
  nop                                   #  92    0xaf008  1      OPC=1343  
  nop                                   #  93    0xaf009  1      OPC=1343  
  nop                                   #  94    0xaf00a  1      OPC=1343  
  nop                                   #  95    0xaf00b  1      OPC=1343  
  nop                                   #  96    0xaf00c  1      OPC=1343  
  nop                                   #  97    0xaf00d  1      OPC=1343  
  nop                                   #  98    0xaf00e  1      OPC=1343  
  nop                                   #  99    0xaf00f  1      OPC=1343  
  nop                                   #  100   0xaf010  1      OPC=1343  
  nop                                   #  101   0xaf011  1      OPC=1343  
  nop                                   #  102   0xaf012  1      OPC=1343  
  nop                                   #  103   0xaf013  1      OPC=1343  
  callq ._ZSt20__throw_length_errorPKc  #  104   0xaf014  5      OPC=260   
                                                                           
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

