  .text
  .globl iswalnum
  .type iswalnum, @function

#! file-offset 0x188520
#! rip-offset  0x148520
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswalnum:                 #        0x148520  0      OPC=0     
  pushq %rbx               #  1     0x148520  1      OPC=1861  
  movl %edi, %ebx          #  2     0x148521  2      OPC=1157  
  nop                      #  3     0x148523  1      OPC=1343  
  nop                      #  4     0x148524  1      OPC=1343  
  nop                      #  5     0x148525  1      OPC=1343  
  nop                      #  6     0x148526  1      OPC=1343  
  nop                      #  7     0x148527  1      OPC=1343  
  nop                      #  8     0x148528  1      OPC=1343  
  nop                      #  9     0x148529  1      OPC=1343  
  nop                      #  10    0x14852a  1      OPC=1343  
  nop                      #  11    0x14852b  1      OPC=1343  
  nop                      #  12    0x14852c  1      OPC=1343  
  nop                      #  13    0x14852d  1      OPC=1343  
  nop                      #  14    0x14852e  1      OPC=1343  
  nop                      #  15    0x14852f  1      OPC=1343  
  nop                      #  16    0x148530  1      OPC=1343  
  nop                      #  17    0x148531  1      OPC=1343  
  nop                      #  18    0x148532  1      OPC=1343  
  nop                      #  19    0x148533  1      OPC=1343  
  nop                      #  20    0x148534  1      OPC=1343  
  nop                      #  21    0x148535  1      OPC=1343  
  nop                      #  22    0x148536  1      OPC=1343  
  nop                      #  23    0x148537  1      OPC=1343  
  nop                      #  24    0x148538  1      OPC=1343  
  nop                      #  25    0x148539  1      OPC=1343  
  nop                      #  26    0x14853a  1      OPC=1343  
  callq .iswalpha          #  27    0x14853b  5      OPC=260   
  movl %eax, %edx          #  28    0x148540  2      OPC=1157  
  movl $0x1, %eax          #  29    0x148542  5      OPC=1154  
  testl %edx, %edx         #  30    0x148547  2      OPC=2436  
  jne .L_148580            #  31    0x148549  6      OPC=963   
  nop                      #  32    0x14854f  1      OPC=1343  
  nop                      #  33    0x148550  1      OPC=1343  
  movl %ebx, %edi          #  34    0x148551  2      OPC=1157  
  nop                      #  35    0x148553  1      OPC=1343  
  nop                      #  36    0x148554  1      OPC=1343  
  nop                      #  37    0x148555  1      OPC=1343  
  nop                      #  38    0x148556  1      OPC=1343  
  nop                      #  39    0x148557  1      OPC=1343  
  nop                      #  40    0x148558  1      OPC=1343  
  nop                      #  41    0x148559  1      OPC=1343  
  nop                      #  42    0x14855a  1      OPC=1343  
  nop                      #  43    0x14855b  1      OPC=1343  
  nop                      #  44    0x14855c  1      OPC=1343  
  nop                      #  45    0x14855d  1      OPC=1343  
  nop                      #  46    0x14855e  1      OPC=1343  
  nop                      #  47    0x14855f  1      OPC=1343  
  nop                      #  48    0x148560  1      OPC=1343  
  callq .iswdigit          #  49    0x148561  5      OPC=260   
  testl %eax, %eax         #  50    0x148566  2      OPC=2436  
  setne %al                #  51    0x148568  3      OPC=2208  
  movzbl %al, %eax         #  52    0x14856b  3      OPC=1304  
  nop                      #  53    0x14856e  1      OPC=1343  
  nop                      #  54    0x14856f  1      OPC=1343  
  nop                      #  55    0x148570  1      OPC=1343  
  nop                      #  56    0x148571  1      OPC=1343  
  nop                      #  57    0x148572  1      OPC=1343  
  nop                      #  58    0x148573  1      OPC=1343  
  nop                      #  59    0x148574  1      OPC=1343  
  nop                      #  60    0x148575  1      OPC=1343  
  nop                      #  61    0x148576  1      OPC=1343  
  nop                      #  62    0x148577  1      OPC=1343  
  nop                      #  63    0x148578  1      OPC=1343  
  nop                      #  64    0x148579  1      OPC=1343  
  nop                      #  65    0x14857a  1      OPC=1343  
  nop                      #  66    0x14857b  1      OPC=1343  
  nop                      #  67    0x14857c  1      OPC=1343  
  nop                      #  68    0x14857d  1      OPC=1343  
  nop                      #  69    0x14857e  1      OPC=1343  
  nop                      #  70    0x14857f  1      OPC=1343  
  nop                      #  71    0x148580  1      OPC=1343  
  nop                      #  72    0x148581  1      OPC=1343  
  nop                      #  73    0x148582  1      OPC=1343  
  nop                      #  74    0x148583  1      OPC=1343  
  nop                      #  75    0x148584  1      OPC=1343  
  nop                      #  76    0x148585  1      OPC=1343  
.L_148580:                 #        0x148586  0      OPC=0     
  popq %rbx                #  77    0x148586  1      OPC=1694  
  popq %r11                #  78    0x148587  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  79    0x148589  7      OPC=131   
  nop                      #  80    0x148590  1      OPC=1343  
  nop                      #  81    0x148591  1      OPC=1343  
  nop                      #  82    0x148592  1      OPC=1343  
  nop                      #  83    0x148593  1      OPC=1343  
  addq %r15, %r11          #  84    0x148594  3      OPC=72    
  jmpq %r11                #  85    0x148597  3      OPC=928   
  nop                      #  86    0x14859a  1      OPC=1343  
  nop                      #  87    0x14859b  1      OPC=1343  
  nop                      #  88    0x14859c  1      OPC=1343  
  nop                      #  89    0x14859d  1      OPC=1343  
  nop                      #  90    0x14859e  1      OPC=1343  
  nop                      #  91    0x14859f  1      OPC=1343  
  nop                      #  92    0x1485a0  1      OPC=1343  
  nop                      #  93    0x1485a1  1      OPC=1343  
  nop                      #  94    0x1485a2  1      OPC=1343  
  nop                      #  95    0x1485a3  1      OPC=1343  
  nop                      #  96    0x1485a4  1      OPC=1343  
  nop                      #  97    0x1485a5  1      OPC=1343  
  nop                      #  98    0x1485a6  1      OPC=1343  
  nop                      #  99    0x1485a7  1      OPC=1343  
  nop                      #  100   0x1485a8  1      OPC=1343  
  nop                      #  101   0x1485a9  1      OPC=1343  
  nop                      #  102   0x1485aa  1      OPC=1343  
  nop                      #  103   0x1485ab  1      OPC=1343  
  nop                      #  104   0x1485ac  1      OPC=1343  
                                                               
.size iswalnum, .-iswalnum

