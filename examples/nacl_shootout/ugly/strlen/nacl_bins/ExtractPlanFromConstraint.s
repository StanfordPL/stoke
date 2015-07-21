  .text
  .globl ExtractPlanFromConstraint
  .type ExtractPlanFromConstraint, @function

#! file-offset 0x68220
#! rip-offset  0x28220
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.ExtractPlanFromConstraint:           #        0x28220  0      OPC=0     
  pushq %rbx                          #  1     0x28220  1      OPC=1861  
  movl %edi, %ebx                     #  2     0x28221  2      OPC=1157  
  movl 0x10048f1f(%rip), %eax         #  3     0x28223  6      OPC=1156  
  testq %rax, %rax                    #  4     0x28229  3      OPC=2438  
  je .L_28280                         #  5     0x2822c  6      OPC=893   
  nop                                 #  6     0x28232  1      OPC=1343  
  nop                                 #  7     0x28233  1      OPC=1343  
  nop                                 #  8     0x28234  1      OPC=1343  
  nop                                 #  9     0x28235  1      OPC=1343  
  nop                                 #  10    0x28236  1      OPC=1343  
  nop                                 #  11    0x28237  1      OPC=1343  
  nop                                 #  12    0x28238  1      OPC=1343  
  nop                                 #  13    0x28239  1      OPC=1343  
  nop                                 #  14    0x2823a  1      OPC=1343  
  nop                                 #  15    0x2823b  1      OPC=1343  
  nop                                 #  16    0x2823c  1      OPC=1343  
  nop                                 #  17    0x2823d  1      OPC=1343  
  nop                                 #  18    0x2823e  1      OPC=1343  
  nop                                 #  19    0x2823f  1      OPC=1343  
  nop                                 #  20    0x28240  1      OPC=1343  
  nop                                 #  21    0x28241  1      OPC=1343  
  nop                                 #  22    0x28242  1      OPC=1343  
  nop                                 #  23    0x28243  1      OPC=1343  
  nop                                 #  24    0x28244  1      OPC=1343  
  nop                                 #  25    0x28245  1      OPC=1343  
.L_28240:                             #        0x28246  0      OPC=0     
  movl %eax, %eax                     #  26    0x28246  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rax,1)         #  27    0x28248  9      OPC=1135  
  movl %eax, %eax                     #  28    0x28251  2      OPC=1157  
  movl $0xffffffff, 0xc(%r15,%rax,1)  #  29    0x28253  9      OPC=1135  
  movl %ebx, %edi                     #  30    0x2825c  2      OPC=1157  
  nop                                 #  31    0x2825e  1      OPC=1343  
  nop                                 #  32    0x2825f  1      OPC=1343  
  nop                                 #  33    0x28260  1      OPC=1343  
  callq .AddIfSatisfiedInput          #  34    0x28261  5      OPC=260   
  popq %rbx                           #  35    0x28266  1      OPC=1694  
  jmpq .MakePlan                      #  36    0x28267  5      OPC=930   
  nop                                 #  37    0x2826c  1      OPC=1343  
  nop                                 #  38    0x2826d  1      OPC=1343  
  nop                                 #  39    0x2826e  1      OPC=1343  
  nop                                 #  40    0x2826f  1      OPC=1343  
  nop                                 #  41    0x28270  1      OPC=1343  
  nop                                 #  42    0x28271  1      OPC=1343  
  nop                                 #  43    0x28272  1      OPC=1343  
  nop                                 #  44    0x28273  1      OPC=1343  
  nop                                 #  45    0x28274  1      OPC=1343  
  nop                                 #  46    0x28275  1      OPC=1343  
  nop                                 #  47    0x28276  1      OPC=1343  
  nop                                 #  48    0x28277  1      OPC=1343  
  nop                                 #  49    0x28278  1      OPC=1343  
  nop                                 #  50    0x28279  1      OPC=1343  
  nop                                 #  51    0x2827a  1      OPC=1343  
  nop                                 #  52    0x2827b  1      OPC=1343  
  nop                                 #  53    0x2827c  1      OPC=1343  
  nop                                 #  54    0x2827d  1      OPC=1343  
  nop                                 #  55    0x2827e  1      OPC=1343  
  nop                                 #  56    0x2827f  1      OPC=1343  
  nop                                 #  57    0x28280  1      OPC=1343  
  nop                                 #  58    0x28281  1      OPC=1343  
  nop                                 #  59    0x28282  1      OPC=1343  
  nop                                 #  60    0x28283  1      OPC=1343  
  nop                                 #  61    0x28284  1      OPC=1343  
  nop                                 #  62    0x28285  1      OPC=1343  
.L_28280:                             #        0x28286  0      OPC=0     
  movl $0x80, %edi                    #  63    0x28286  5      OPC=1154  
  nop                                 #  64    0x2828b  1      OPC=1343  
  nop                                 #  65    0x2828c  1      OPC=1343  
  nop                                 #  66    0x2828d  1      OPC=1343  
  nop                                 #  67    0x2828e  1      OPC=1343  
  nop                                 #  68    0x2828f  1      OPC=1343  
  nop                                 #  69    0x28290  1      OPC=1343  
  nop                                 #  70    0x28291  1      OPC=1343  
  nop                                 #  71    0x28292  1      OPC=1343  
  nop                                 #  72    0x28293  1      OPC=1343  
  nop                                 #  73    0x28294  1      OPC=1343  
  nop                                 #  74    0x28295  1      OPC=1343  
  nop                                 #  75    0x28296  1      OPC=1343  
  nop                                 #  76    0x28297  1      OPC=1343  
  nop                                 #  77    0x28298  1      OPC=1343  
  nop                                 #  78    0x28299  1      OPC=1343  
  nop                                 #  79    0x2829a  1      OPC=1343  
  nop                                 #  80    0x2829b  1      OPC=1343  
  nop                                 #  81    0x2829c  1      OPC=1343  
  nop                                 #  82    0x2829d  1      OPC=1343  
  nop                                 #  83    0x2829e  1      OPC=1343  
  nop                                 #  84    0x2829f  1      OPC=1343  
  nop                                 #  85    0x282a0  1      OPC=1343  
  callq .List_Create                  #  86    0x282a1  5      OPC=260   
  movl %eax, %eax                     #  87    0x282a6  2      OPC=1157  
  movl %eax, 0x10048ea0(%rip)         #  88    0x282a8  6      OPC=1136  
  jmpq .L_28240                       #  89    0x282ae  5      OPC=930   
  nop                                 #  90    0x282b3  1      OPC=1343  
  nop                                 #  91    0x282b4  1      OPC=1343  
  nop                                 #  92    0x282b5  1      OPC=1343  
  nop                                 #  93    0x282b6  1      OPC=1343  
  nop                                 #  94    0x282b7  1      OPC=1343  
  nop                                 #  95    0x282b8  1      OPC=1343  
  nop                                 #  96    0x282b9  1      OPC=1343  
  nop                                 #  97    0x282ba  1      OPC=1343  
  nop                                 #  98    0x282bb  1      OPC=1343  
  nop                                 #  99    0x282bc  1      OPC=1343  
  nop                                 #  100   0x282bd  1      OPC=1343  
  nop                                 #  101   0x282be  1      OPC=1343  
  nop                                 #  102   0x282bf  1      OPC=1343  
  nop                                 #  103   0x282c0  1      OPC=1343  
  nop                                 #  104   0x282c1  1      OPC=1343  
  nop                                 #  105   0x282c2  1      OPC=1343  
  nop                                 #  106   0x282c3  1      OPC=1343  
  nop                                 #  107   0x282c4  1      OPC=1343  
  nop                                 #  108   0x282c5  1      OPC=1343  
  nop                                 #  109   0x282c6  1      OPC=1343  
  nop                                 #  110   0x282c7  1      OPC=1343  
  nop                                 #  111   0x282c8  1      OPC=1343  
  nop                                 #  112   0x282c9  1      OPC=1343  
  nop                                 #  113   0x282ca  1      OPC=1343  
                                                                         
.size ExtractPlanFromConstraint, .-ExtractPlanFromConstraint

