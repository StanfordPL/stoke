  .text
  .globl fannkuchredux
  .type fannkuchredux, @function

#! file-offset 0x60490
#! rip-offset  0x20490
#! capacity    272 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.fannkuchredux:                 #        0x20490  0      OPC=0     
  movq %rbx, -0x30(%rbp)       
  movl %r9d, %edx               #  2     0x20494  3      OPC=1157  
  movl %r14d, %r12d             #  3     0x20497  3      OPC=1158  
  xorl %r13d, %r13d             #  4     0x2049a  3      OPC=3758  
  movsbl %dl, %eax              #  5     0x2049d  3      OPC=1282  
  movl %r10d, -0x24(%rbp)     
  jle .L_20560                  #  7     0x204a4  6      OPC=919   
  addl %r12d, %r9d              #  8     0x204aa  3      OPC=67    
  subl %eax, %r9d               #  9     0x204ad  3      OPC=2387  
  nop                           #  10    0x204b0  1      OPC=1343  
  nop                           #  11    0x204b1  1      OPC=1343  
  nop                           #  12    0x204b2  1      OPC=1343  
  nop                           #  13    0x204b3  1      OPC=1343  
  nop                           #  14    0x204b4  1      OPC=1343  
  nop                           #  15    0x204b5  1      OPC=1343  
  nop                           #  16    0x204b6  1      OPC=1343  
  nop                           #  17    0x204b7  1      OPC=1343  
  nop                           #  18    0x204b8  1      OPC=1343  
  nop                           #  19    0x204b9  1      OPC=1343  
  nop                           #  20    0x204ba  1      OPC=1343  
  nop                           #  21    0x204bb  1      OPC=1343  
  nop                           #  22    0x204bc  1      OPC=1343  
  nop                           #  23    0x204bd  1      OPC=1343  
  nop                           #  24    0x204be  1      OPC=1343  
  nop                           #  25    0x204bf  1      OPC=1343  
.L_204c0:                       #        0x204c0  0      OPC=0     
  nop                           #  26    0x204c0  1      OPC=1343  
  nop                           #  27    0x204c1  1      OPC=1343  
  nop                           #  28    0x204c2  1      OPC=1343  
  nop                           #  29    0x204c3  1      OPC=1343  
  nop                           #  30    0x204c4  1      OPC=1343  
  xorl %r9d, %eax               #  31    0x204c5  3      OPC=3759  
  nop                           #  32    0x204c8  1      OPC=1343  
  leal -0x4(%r14,%rdx,4), %edx  #  33    0x204c9  5      OPC=1066  
  nop                           #  34    0x204ce  1      OPC=1343  
  nop                           #  35    0x204cf  1      OPC=1343  
  nop                           #  36    0x204d0  1      OPC=1343  
  nop                           #  37    0x204d1  1      OPC=1343  
  nop                           #  38    0x204d2  1      OPC=1343  
  nop                           #  39    0x204d3  1      OPC=1343  
  nop                           #  40    0x204d4  1      OPC=1343  
  subl %eax, %eax               #  41    0x204d5  2      OPC=2387  
  nop                           #  42    0x204d7  1      OPC=1343  
  nop                           #  43    0x204d8  1      OPC=1343  
  nop                           #  44    0x204d9  1      OPC=1343  
  movl %r12d, %ecx              #  45    0x204da  3      OPC=1157  
  setl %bh                      #  46    0x204dd  3      OPC=2188  
.L_204e0:                       #        0x204e0  0      OPC=0     
  movl %ecx, %esi               #  47    0x204e0  2      OPC=1157  
  movq (%r15,%rsi,1), %r9       #  48    0x204e2  4      OPC=1161  
  addl $0x8, %ecx               #  49    0x204e6  3      OPC=65    
  movl %edx, %ebx               #  50    0x204e9  2      OPC=1157  
  movq (%r15,%rbx,1), %r8       #  51    0x204eb  4      OPC=1161  
  adcl $0x4, %eax               #  52    0x204ef  3      OPC=22    
  rolq $0x20, %r9               #  53    0x204f2  4      OPC=2001  
  movl %ebx, %ebx
  movq %r9, (%r15,%rbx,1)  
  rolq $0x20, %r8               #  56    0x204fc  4      OPC=2001  
  subl $0x8, %edx               #  57    0x20500  3      OPC=2384  
  incl %esi
  movq %r8, (%r15,%rsi,1)       #  59    0x20505  4      OPC=1138  
  cmpl %r10d, %eax              #  60    0x20509  3      OPC=472   
  jl .L_204e0                   #  61    0x2050c  6      OPC=913   
  nop
  nop
  nop
  nop
  nop
  nop                           #  67    0x20517  1      OPC=1343  
  nop                           #  68    0x20518  1      OPC=1343  
  addl $0x1, %r13d              #  69    0x20519  4      OPC=65    
  nop                           #  70    0x2051d  1      OPC=1343  
  nop                           #  71    0x2051e  1      OPC=1343  
  nop                           #  72    0x2051f  1      OPC=1343  
  nop                           #  73    0x20520  1      OPC=1343  
  nop                           #  74    0x20521  1      OPC=1343  
  nop                           #  75    0x20522  1      OPC=1343  
.L_20520:                       #        0x20523  0      OPC=0     
  movl %r12d, %r14d             #  76    0x20523  3      OPC=1157  
  movl (%r15,%r14,1), %edx      #  77    0x20526  4      OPC=1156  
  nop                           #  78    0x2052a  1      OPC=1343  
  testl %edx, %edx              #  79    0x2052b  2      OPC=2436  
  je .L_20580                   #  80    0x2052d  6      OPC=893   
  nop                           #  81    0x20533  1      OPC=1343  
  nop                           #  82    0x20534  1      OPC=1343  
  nop                           #  83    0x20535  1      OPC=1343  
  nop                           #  84    0x20536  1      OPC=1343  
  nop                           #  85    0x20537  1      OPC=1343  
  nop                           #  86    0x20538  1      OPC=1343  
  nop                           #  87    0x20539  1      OPC=1343  
  nop                           #  88    0x2053a  1      OPC=1343  
  nop                           #  89    0x2053b  1      OPC=1343  
  nop                           #  90    0x2053c  1      OPC=1343  
  nop                           #  91    0x2053d  1      OPC=1343  
  nop                           #  92    0x2053e  1      OPC=1343  
  nop                           #  93    0x2053f  1      OPC=1343  
.L_20540:                       #        0x20540  0      OPC=0     
  nop                           #  94    0x20540  1      OPC=1343  
  movl %edx, %r9d               #  95    0x20541  3      OPC=1158  
  movl %r9d, %r10d            
  jg .L_204c0                   #  97    0x20547  6      OPC=901   
  nop                           #  98    0x2054d  1      OPC=1343  
  nop                           #  99    0x2054e  1      OPC=1343  
  nop                           #  100   0x2054f  1      OPC=1343  
  nop                           #  101   0x20550  1      OPC=1343  
  nop                           #  102   0x20551  1      OPC=1343  
  nop                           #  103   0x20552  1      OPC=1343  
  nop                           #  104   0x20553  1      OPC=1343  
  nop                           #  105   0x20554  1      OPC=1343  
  andl %r9d, %ebx               #  106   0x20555  3      OPC=135   
  nop                           #  107   0x20558  1      OPC=1343  
  nop                           #  108   0x20559  1      OPC=1343  
  nop                           #  109   0x2055a  1      OPC=1343  
  nop                           #  110   0x2055b  1      OPC=1343  
  nop                           #  111   0x2055c  1      OPC=1343  
  nop                           #  112   0x2055d  1      OPC=1343  
  nop                           #  113   0x2055e  1      OPC=1343  
  nop                           #  114   0x2055f  1      OPC=1343  
.L_20560:                       #        0x20560  0      OPC=0     
  nop                           #  115   0x20560  1      OPC=1343  
  nop                           #  116   0x20561  1      OPC=1343  
  orl %edx, %edx                #  117   0x20562  2      OPC=1380  
  jne .L_20540                  #  118   0x20564  6      OPC=963   
  testl %r13d, %r13d            #  119   0x2056a  3      OPC=2436  
  nop                           #  120   0x2056d  1      OPC=1343  
  nop                           #  121   0x2056e  1      OPC=1343  
  nop                           #  122   0x2056f  1      OPC=1343  
  nop                           #  123   0x20570  1      OPC=1343  
  nop                           #  124   0x20571  1      OPC=1343  
  nop                           #  125   0x20572  1      OPC=1343  
  nop                           #  126   0x20573  1      OPC=1343  
  nop                           #  127   0x20574  1      OPC=1343  
  nop                           #  128   0x20575  1      OPC=1343  
  nop                           #  129   0x20576  1      OPC=1343  
  nop                           #  130   0x20577  1      OPC=1343  
  nop                           #  131   0x20578  1      OPC=1343  
  nop                           #  132   0x20579  1      OPC=1343  
  nop                           #  133   0x2057a  1      OPC=1343  
  adcl $0x1, %r13d              #  134   0x2057b  4      OPC=22    
  nop                           #  135   0x2057f  1      OPC=1343  
.L_20580:                       #        0x20580  0      OPC=0     
  nop                           #  136   0x20580  1      OPC=1343  
  nop                           #  137   0x20581  1      OPC=1343  
  nop                           #  138   0x20582  1      OPC=1343  
  nop                           #  139   0x20583  1      OPC=1343  
  nop                           #  140   0x20584  1      OPC=1343  
  nop                           #  141   0x20585  1      OPC=1343  
  nop                           #  142   0x20586  1      OPC=1343  
  nop                           #  143   0x20587  1      OPC=1343  
  nop                           #  144   0x20588  1      OPC=1343  
  nop                           #  145   0x20589  1      OPC=1343  
  nop                           #  146   0x2058a  1      OPC=1343  
  nop                           #  147   0x2058b  1      OPC=1343  
  nop                           #  148   0x2058c  1      OPC=1343  
  nop                           #  149   0x2058d  1      OPC=1343  
  nop                           #  150   0x2058e  1      OPC=1343  
  nop                           #  151   0x2058f  1      OPC=1343  
  movl -0x24(%rbp), %r10d       #  152   0x20590  4      OPC=1156  
  nop                           #  153   0x20594  1      OPC=1343  
  nop                           #  154   0x20595  1      OPC=1343  
  nop                           #  155   0x20596  1      OPC=1343  
  nop                           #  156   0x20597  1      OPC=1343  
  nop                           #  157   0x20598  1      OPC=1343  
  nop                           #  158   0x20599  1      OPC=1343  
  nop                           #  159   0x2059a  1      OPC=1343  
  movq -0x30(%rbp), %rbx        #  160   0x2059b  4      OPC=1161  
                                                                   
.size fannkuchredux, .-fannkuchredux
