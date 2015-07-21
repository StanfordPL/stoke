  .text
  .globl __gmpn_submul_1
  .type __gmpn_submul_1, @function

#! file-offset 0x72380
#! rip-offset  0x32380
#! capacity    224 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.__gmpn_submul_1:           #        0x32380  0      OPC=0     
  pushq %r12                #  1     0x32380  2      OPC=1861  
  movl %esi, %esi           #  2     0x32382  2      OPC=1157  
  movl %edi, %edi           #  3     0x32384  2      OPC=1157  
  xorl %eax, %eax           #  4     0x32386  2      OPC=3758  
  pushq %rbx                #  5     0x32388  1      OPC=1861  
  movzwl %cx, %ebx          #  6     0x32389  3      OPC=1303  
  movl %esi, %esi           #  7     0x3238c  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d  #  8     0x3238e  4      OPC=1156  
  shrl $0x10, %ecx          #  9     0x32392  3      OPC=2312  
  jmpq .L_323c0             #  10    0x32395  5      OPC=930   
  nop                       #  11    0x3239a  1      OPC=1343  
  nop                       #  12    0x3239b  1      OPC=1343  
  nop                       #  13    0x3239c  1      OPC=1343  
  nop                       #  14    0x3239d  1      OPC=1343  
  nop                       #  15    0x3239e  1      OPC=1343  
  nop                       #  16    0x3239f  1      OPC=1343  
  nop                       #  17    0x323a0  1      OPC=1343  
  nop                       #  18    0x323a1  1      OPC=1343  
  nop                       #  19    0x323a2  1      OPC=1343  
  nop                       #  20    0x323a3  1      OPC=1343  
  nop                       #  21    0x323a4  1      OPC=1343  
.L_323a0:                   #        0x323a5  0      OPC=0     
  addl $0x4, %esi           #  22    0x323a5  3      OPC=65    
  addl $0x4, %edi           #  23    0x323a8  3      OPC=65    
  movl %esi, %esi           #  24    0x323ab  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d  #  25    0x323ad  4      OPC=1156  
  nop                       #  26    0x323b1  1      OPC=1343  
  nop                       #  27    0x323b2  1      OPC=1343  
  nop                       #  28    0x323b3  1      OPC=1343  
  nop                       #  29    0x323b4  1      OPC=1343  
  nop                       #  30    0x323b5  1      OPC=1343  
  nop                       #  31    0x323b6  1      OPC=1343  
  nop                       #  32    0x323b7  1      OPC=1343  
  nop                       #  33    0x323b8  1      OPC=1343  
  nop                       #  34    0x323b9  1      OPC=1343  
  nop                       #  35    0x323ba  1      OPC=1343  
  nop                       #  36    0x323bb  1      OPC=1343  
  nop                       #  37    0x323bc  1      OPC=1343  
  nop                       #  38    0x323bd  1      OPC=1343  
  nop                       #  39    0x323be  1      OPC=1343  
  nop                       #  40    0x323bf  1      OPC=1343  
  nop                       #  41    0x323c0  1      OPC=1343  
  nop                       #  42    0x323c1  1      OPC=1343  
  nop                       #  43    0x323c2  1      OPC=1343  
  nop                       #  44    0x323c3  1      OPC=1343  
  nop                       #  45    0x323c4  1      OPC=1343  
.L_323c0:                   #        0x323c5  0      OPC=0     
  movzwl %r8w, %r11d        #  46    0x323c5  4      OPC=1303  
  shrl $0x10, %r8d          #  47    0x323c9  4      OPC=2312  
  movl %r11d, %r10d         #  48    0x323cd  3      OPC=1157  
  movl %r8d, %r9d           #  49    0x323d0  3      OPC=1157  
  imull %ebx, %r10d         #  50    0x323d3  4      OPC=821   
  imull %ebx, %r9d          #  51    0x323d7  4      OPC=821   
  movl %r10d, %r12d         #  52    0x323db  3      OPC=1157  
  imull %ecx, %r11d         #  53    0x323de  4      OPC=821   
  nop                       #  54    0x323e2  1      OPC=1343  
  nop                       #  55    0x323e3  1      OPC=1343  
  nop                       #  56    0x323e4  1      OPC=1343  
  shrl $0x10, %r12d         #  57    0x323e5  4      OPC=2312  
  imull %ecx, %r8d          #  58    0x323e9  4      OPC=821   
  leal (%r9,%r11,1), %r11d  #  59    0x323ed  4      OPC=1066  
  addl %r12d, %r11d         #  60    0x323f1  3      OPC=67    
  leal 0x10000(%r8), %r12d  #  61    0x323f4  7      OPC=1066  
  cmpl %r11d, %r9d          #  62    0x323fb  3      OPC=472   
  movl %r11d, %r9d          #  63    0x323fe  3      OPC=1157  
  cmoval %r12d, %r8d        #  64    0x32401  4      OPC=272   
  andl $0xffff, %r10d       #  65    0x32405  7      OPC=131   
  shll $0x10, %r9d          #  66    0x3240c  4      OPC=2269  
  addl %eax, %r10d          #  67    0x32410  3      OPC=67    
  addl %r9d, %r10d          #  68    0x32413  3      OPC=67    
  movl %edi, %edi           #  69    0x32416  2      OPC=1157  
  movl (%r15,%rdi,1), %r9d  #  70    0x32418  4      OPC=1156  
  cmpl %eax, %r10d          #  71    0x3241c  3      OPC=472   
  setb %al                  #  72    0x3241f  3      OPC=2169  
  nop                       #  73    0x32422  1      OPC=1343  
  nop                       #  74    0x32423  1      OPC=1343  
  nop                       #  75    0x32424  1      OPC=1343  
  shrl $0x10, %r11d         #  76    0x32425  4      OPC=2312  
  movzbl %al, %eax          #  77    0x32429  3      OPC=1304  
  addl %r11d, %eax          #  78    0x3242c  3      OPC=67    
  subl %r10d, %r9d          #  79    0x3242f  3      OPC=2386  
  setb %r10b                #  80    0x32432  4      OPC=2169  
  movl %edi, %edi           #  81    0x32436  2      OPC=1157  
  movl %r9d, (%r15,%rdi,1)  #  82    0x32438  4      OPC=1136  
  movzbl %r10b, %r10d       #  83    0x3243c  4      OPC=1304  
  addl %r10d, %eax          #  84    0x32440  3      OPC=67    
  xchgw %ax, %ax            #  85    0x32443  2      OPC=3700  
  addl %r8d, %eax           #  86    0x32445  3      OPC=67    
  subl $0x1, %edx           #  87    0x32448  3      OPC=2384  
  jne .L_323a0              #  88    0x3244b  6      OPC=963   
  popq %rbx                 #  89    0x32451  1      OPC=1694  
  popq %r12                 #  90    0x32452  2      OPC=1694  
  popq %r11                 #  91    0x32454  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  92    0x32456  7      OPC=131   
  nop                       #  93    0x3245d  1      OPC=1343  
  nop                       #  94    0x3245e  1      OPC=1343  
  nop                       #  95    0x3245f  1      OPC=1343  
  nop                       #  96    0x32460  1      OPC=1343  
  addq %r15, %r11           #  97    0x32461  3      OPC=72    
  jmpq %r11                 #  98    0x32464  3      OPC=928   
  nop                       #  99    0x32467  1      OPC=1343  
  nop                       #  100   0x32468  1      OPC=1343  
  nop                       #  101   0x32469  1      OPC=1343  
  nop                       #  102   0x3246a  1      OPC=1343  
  nop                       #  103   0x3246b  1      OPC=1343  
                                                               
.size __gmpn_submul_1, .-__gmpn_submul_1

