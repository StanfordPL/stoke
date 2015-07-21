  .text
  .globl __gmp_tmp_reentrant_free
  .type __gmp_tmp_reentrant_free, @function

#! file-offset 0x777c0
#! rip-offset  0x377c0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__gmp_tmp_reentrant_free:     #        0x377c0  0      OPC=0     
  movl %edi, %edi              #  1     0x377c0  2      OPC=1157  
  pushq %rbx                   #  2     0x377c2  1      OPC=1861  
  testq %rdi, %rdi             #  3     0x377c3  3      OPC=2438  
  je .L_37820                  #  4     0x377c6  6      OPC=893   
  nop                          #  5     0x377cc  1      OPC=1343  
  nop                          #  6     0x377cd  1      OPC=1343  
  nop                          #  7     0x377ce  1      OPC=1343  
  nop                          #  8     0x377cf  1      OPC=1343  
  nop                          #  9     0x377d0  1      OPC=1343  
  nop                          #  10    0x377d1  1      OPC=1343  
  nop                          #  11    0x377d2  1      OPC=1343  
  nop                          #  12    0x377d3  1      OPC=1343  
  nop                          #  13    0x377d4  1      OPC=1343  
  nop                          #  14    0x377d5  1      OPC=1343  
  nop                          #  15    0x377d6  1      OPC=1343  
  nop                          #  16    0x377d7  1      OPC=1343  
  nop                          #  17    0x377d8  1      OPC=1343  
  nop                          #  18    0x377d9  1      OPC=1343  
  nop                          #  19    0x377da  1      OPC=1343  
  nop                          #  20    0x377db  1      OPC=1343  
  nop                          #  21    0x377dc  1      OPC=1343  
  nop                          #  22    0x377dd  1      OPC=1343  
  nop                          #  23    0x377de  1      OPC=1343  
  nop                          #  24    0x377df  1      OPC=1343  
  nop                          #  25    0x377e0  1      OPC=1343  
  nop                          #  26    0x377e1  1      OPC=1343  
  nop                          #  27    0x377e2  1      OPC=1343  
  nop                          #  28    0x377e3  1      OPC=1343  
  nop                          #  29    0x377e4  1      OPC=1343  
  nop                          #  30    0x377e5  1      OPC=1343  
.L_377e0:                      #        0x377e6  0      OPC=0     
  movl %edi, %edi              #  31    0x377e6  2      OPC=1157  
  movl (%r15,%rdi,1), %ebx     #  32    0x377e8  4      OPC=1156  
  movl 0x10039068(%rip), %eax  #  33    0x377ec  6      OPC=1156  
  movl %edi, %edi              #  34    0x377f2  2      OPC=1157  
  movl 0x4(%r15,%rdi,1), %esi  #  35    0x377f4  5      OPC=1156  
  nop                          #  36    0x377f9  1      OPC=1343  
  nop                          #  37    0x377fa  1      OPC=1343  
  nop                          #  38    0x377fb  1      OPC=1343  
  nop                          #  39    0x377fc  1      OPC=1343  
  nop                          #  40    0x377fd  1      OPC=1343  
  andl $0xffffffe0, %eax       #  41    0x377fe  6      OPC=131   
  nop                          #  42    0x37804  1      OPC=1343  
  nop                          #  43    0x37805  1      OPC=1343  
  nop                          #  44    0x37806  1      OPC=1343  
  addq %r15, %rax              #  45    0x37807  3      OPC=72    
  callq %rax                   #  46    0x3780a  2      OPC=258   
  testq %rbx, %rbx             #  47    0x3780c  3      OPC=2438  
  movq %rbx, %rdi              #  48    0x3780f  3      OPC=1162  
  jne .L_377e0                 #  49    0x37812  6      OPC=963   
  nop                          #  50    0x37818  1      OPC=1343  
  nop                          #  51    0x37819  1      OPC=1343  
  nop                          #  52    0x3781a  1      OPC=1343  
  nop                          #  53    0x3781b  1      OPC=1343  
  nop                          #  54    0x3781c  1      OPC=1343  
  nop                          #  55    0x3781d  1      OPC=1343  
  nop                          #  56    0x3781e  1      OPC=1343  
  nop                          #  57    0x3781f  1      OPC=1343  
  nop                          #  58    0x37820  1      OPC=1343  
  nop                          #  59    0x37821  1      OPC=1343  
  nop                          #  60    0x37822  1      OPC=1343  
  nop                          #  61    0x37823  1      OPC=1343  
  nop                          #  62    0x37824  1      OPC=1343  
  nop                          #  63    0x37825  1      OPC=1343  
  nop                          #  64    0x37826  1      OPC=1343  
  nop                          #  65    0x37827  1      OPC=1343  
  nop                          #  66    0x37828  1      OPC=1343  
  nop                          #  67    0x37829  1      OPC=1343  
  nop                          #  68    0x3782a  1      OPC=1343  
  nop                          #  69    0x3782b  1      OPC=1343  
  nop                          #  70    0x3782c  1      OPC=1343  
  nop                          #  71    0x3782d  1      OPC=1343  
  nop                          #  72    0x3782e  1      OPC=1343  
  nop                          #  73    0x3782f  1      OPC=1343  
  nop                          #  74    0x37830  1      OPC=1343  
  nop                          #  75    0x37831  1      OPC=1343  
.L_37820:                      #        0x37832  0      OPC=0     
  popq %rbx                    #  76    0x37832  1      OPC=1694  
  popq %r11                    #  77    0x37833  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  78    0x37835  7      OPC=131   
  nop                          #  79    0x3783c  1      OPC=1343  
  nop                          #  80    0x3783d  1      OPC=1343  
  nop                          #  81    0x3783e  1      OPC=1343  
  nop                          #  82    0x3783f  1      OPC=1343  
  addq %r15, %r11              #  83    0x37840  3      OPC=72    
  jmpq %r11                    #  84    0x37843  3      OPC=928   
  nop                          #  85    0x37846  1      OPC=1343  
  nop                          #  86    0x37847  1      OPC=1343  
  nop                          #  87    0x37848  1      OPC=1343  
  nop                          #  88    0x37849  1      OPC=1343  
  nop                          #  89    0x3784a  1      OPC=1343  
  nop                          #  90    0x3784b  1      OPC=1343  
  nop                          #  91    0x3784c  1      OPC=1343  
  nop                          #  92    0x3784d  1      OPC=1343  
  nop                          #  93    0x3784e  1      OPC=1343  
  nop                          #  94    0x3784f  1      OPC=1343  
  nop                          #  95    0x37850  1      OPC=1343  
  nop                          #  96    0x37851  1      OPC=1343  
  nop                          #  97    0x37852  1      OPC=1343  
  nop                          #  98    0x37853  1      OPC=1343  
  nop                          #  99    0x37854  1      OPC=1343  
  nop                          #  100   0x37855  1      OPC=1343  
  nop                          #  101   0x37856  1      OPC=1343  
  nop                          #  102   0x37857  1      OPC=1343  
  nop                          #  103   0x37858  1      OPC=1343  
                                                                  
.size __gmp_tmp_reentrant_free, .-__gmp_tmp_reentrant_free

