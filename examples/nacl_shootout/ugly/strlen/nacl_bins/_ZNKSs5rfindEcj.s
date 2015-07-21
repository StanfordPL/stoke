  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0xea100
#! rip-offset  0xaa100
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs5rfindEcj:           #        0xaa100  0      OPC=0     
  movl %edi, %edi           #  1     0xaa100  2      OPC=1157  
  movl %edi, %edi           #  2     0xaa102  2      OPC=1157  
  movl (%r15,%rdi,1), %ecx  #  3     0xaa104  4      OPC=1156  
  leal -0xc(%rcx), %eax     #  4     0xaa108  3      OPC=1066  
  movl %eax, %eax           #  5     0xaa10b  2      OPC=1157  
  movl (%r15,%rax,1), %eax  #  6     0xaa10d  4      OPC=1156  
  testl %eax, %eax          #  7     0xaa111  2      OPC=2436  
  je .L_aa160               #  8     0xaa113  6      OPC=893   
  nop                       #  9     0xaa119  1      OPC=1343  
  nop                       #  10    0xaa11a  1      OPC=1343  
  subl $0x1, %eax           #  11    0xaa11b  3      OPC=2384  
  cmpl %eax, %edx           #  12    0xaa11e  2      OPC=472   
  cmoval %eax, %edx         #  13    0xaa120  3      OPC=272   
  leal 0x1(%rdx), %eax      #  14    0xaa123  3      OPC=1066  
  addl %ecx, %edx           #  15    0xaa126  2      OPC=67    
  nop                       #  16    0xaa128  1      OPC=1343  
  nop                       #  17    0xaa129  1      OPC=1343  
  nop                       #  18    0xaa12a  1      OPC=1343  
  nop                       #  19    0xaa12b  1      OPC=1343  
  nop                       #  20    0xaa12c  1      OPC=1343  
  nop                       #  21    0xaa12d  1      OPC=1343  
  nop                       #  22    0xaa12e  1      OPC=1343  
  nop                       #  23    0xaa12f  1      OPC=1343  
  nop                       #  24    0xaa130  1      OPC=1343  
  nop                       #  25    0xaa131  1      OPC=1343  
  nop                       #  26    0xaa132  1      OPC=1343  
  nop                       #  27    0xaa133  1      OPC=1343  
  nop                       #  28    0xaa134  1      OPC=1343  
  nop                       #  29    0xaa135  1      OPC=1343  
  nop                       #  30    0xaa136  1      OPC=1343  
  nop                       #  31    0xaa137  1      OPC=1343  
  nop                       #  32    0xaa138  1      OPC=1343  
  nop                       #  33    0xaa139  1      OPC=1343  
  nop                       #  34    0xaa13a  1      OPC=1343  
  nop                       #  35    0xaa13b  1      OPC=1343  
  nop                       #  36    0xaa13c  1      OPC=1343  
  nop                       #  37    0xaa13d  1      OPC=1343  
  nop                       #  38    0xaa13e  1      OPC=1343  
  nop                       #  39    0xaa13f  1      OPC=1343  
  nop                       #  40    0xaa140  1      OPC=1343  
  nop                       #  41    0xaa141  1      OPC=1343  
  nop                       #  42    0xaa142  1      OPC=1343  
  nop                       #  43    0xaa143  1      OPC=1343  
  nop                       #  44    0xaa144  1      OPC=1343  
  nop                       #  45    0xaa145  1      OPC=1343  
.L_aa140:                   #        0xaa146  0      OPC=0     
  testl %eax, %eax          #  46    0xaa146  2      OPC=2436  
  je .L_aa160               #  47    0xaa148  6      OPC=893   
  nop                       #  48    0xaa14e  1      OPC=1343  
  nop                       #  49    0xaa14f  1      OPC=1343  
  movl %edx, %ecx           #  50    0xaa150  2      OPC=1157  
  subl $0x1, %eax           #  51    0xaa152  3      OPC=2384  
  subl $0x1, %edx           #  52    0xaa155  3      OPC=2384  
  movl %ecx, %ecx           #  53    0xaa158  2      OPC=1157  
  cmpb (%r15,%rcx,1), %sil  #  54    0xaa15a  4      OPC=480   
  jne .L_aa140              #  55    0xaa15e  6      OPC=963   
  nop                       #  56    0xaa164  1      OPC=1343  
  nop                       #  57    0xaa165  1      OPC=1343  
  popq %r11                 #  58    0xaa166  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  59    0xaa168  7      OPC=131   
  nop                       #  60    0xaa16f  1      OPC=1343  
  nop                       #  61    0xaa170  1      OPC=1343  
  nop                       #  62    0xaa171  1      OPC=1343  
  nop                       #  63    0xaa172  1      OPC=1343  
  addq %r15, %r11           #  64    0xaa173  3      OPC=72    
  jmpq %r11                 #  65    0xaa176  3      OPC=928   
.L_aa160:                   #        0xaa179  0      OPC=0     
  movl $0xffffffff, %eax    #  66    0xaa179  6      OPC=1155  
  popq %r11                 #  67    0xaa17f  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  68    0xaa181  7      OPC=131   
  nop                       #  69    0xaa188  1      OPC=1343  
  nop                       #  70    0xaa189  1      OPC=1343  
  nop                       #  71    0xaa18a  1      OPC=1343  
  nop                       #  72    0xaa18b  1      OPC=1343  
  addq %r15, %r11           #  73    0xaa18c  3      OPC=72    
  jmpq %r11                 #  74    0xaa18f  3      OPC=928   
  nop                       #  75    0xaa192  1      OPC=1343  
  nop                       #  76    0xaa193  1      OPC=1343  
  nop                       #  77    0xaa194  1      OPC=1343  
  nop                       #  78    0xaa195  1      OPC=1343  
  nop                       #  79    0xaa196  1      OPC=1343  
  nop                       #  80    0xaa197  1      OPC=1343  
  nop                       #  81    0xaa198  1      OPC=1343  
  nop                       #  82    0xaa199  1      OPC=1343  
  nop                       #  83    0xaa19a  1      OPC=1343  
  nop                       #  84    0xaa19b  1      OPC=1343  
  nop                       #  85    0xaa19c  1      OPC=1343  
  nop                       #  86    0xaa19d  1      OPC=1343  
  nop                       #  87    0xaa19e  1      OPC=1343  
  nop                       #  88    0xaa19f  1      OPC=1343  
  nop                       #  89    0xaa1a0  1      OPC=1343  
                                                               
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj

