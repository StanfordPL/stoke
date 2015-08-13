  .text
  .globl ExtractPlanFromConstraint
  .type ExtractPlanFromConstraint, @function

#! file-offset 0x68220
#! rip-offset  0x28220
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.ExtractPlanFromConstraint:           #        0x28220  0      OPC=<label>         
  pushq %rbx                          #  1     0x28220  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0x28221  2      OPC=movl_r32_r32    
  movl 0x10048f1f(%rip), %eax         #  3     0x28223  6      OPC=movl_r32_m32    
  testq %rax, %rax                    #  4     0x28229  3      OPC=testq_r64_r64   
  je .L_28280                         #  5     0x2822c  2      OPC=je_label        
  nop                                 #  6     0x2822e  1      OPC=nop             
  nop                                 #  7     0x2822f  1      OPC=nop             
  nop                                 #  8     0x28230  1      OPC=nop             
  nop                                 #  9     0x28231  1      OPC=nop             
  nop                                 #  10    0x28232  1      OPC=nop             
  nop                                 #  11    0x28233  1      OPC=nop             
  nop                                 #  12    0x28234  1      OPC=nop             
  nop                                 #  13    0x28235  1      OPC=nop             
  nop                                 #  14    0x28236  1      OPC=nop             
  nop                                 #  15    0x28237  1      OPC=nop             
  nop                                 #  16    0x28238  1      OPC=nop             
  nop                                 #  17    0x28239  1      OPC=nop             
  nop                                 #  18    0x2823a  1      OPC=nop             
  nop                                 #  19    0x2823b  1      OPC=nop             
  nop                                 #  20    0x2823c  1      OPC=nop             
  nop                                 #  21    0x2823d  1      OPC=nop             
  nop                                 #  22    0x2823e  1      OPC=nop             
  nop                                 #  23    0x2823f  1      OPC=nop             
.L_28240:                             #        0x28240  0      OPC=<label>         
  movl %eax, %eax                     #  24    0x28240  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)         #  25    0x28242  9      OPC=movl_m32_imm32  
  movl %eax, %eax                     #  26    0x2824b  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0xc(%r15,%rax,1)  #  27    0x2824d  9      OPC=movl_m32_imm32  
  movl %ebx, %edi                     #  28    0x28256  2      OPC=movl_r32_r32    
  nop                                 #  29    0x28258  1      OPC=nop             
  nop                                 #  30    0x28259  1      OPC=nop             
  nop                                 #  31    0x2825a  1      OPC=nop             
  callq .AddIfSatisfiedInput          #  32    0x2825b  5      OPC=callq_label     
  popq %rbx                           #  33    0x28260  1      OPC=popq_r64_1      
  jmpq .MakePlan                      #  34    0x28261  5      OPC=jmpq_label_1    
  nop                                 #  35    0x28266  1      OPC=nop             
  nop                                 #  36    0x28267  1      OPC=nop             
  nop                                 #  37    0x28268  1      OPC=nop             
  nop                                 #  38    0x28269  1      OPC=nop             
  nop                                 #  39    0x2826a  1      OPC=nop             
  nop                                 #  40    0x2826b  1      OPC=nop             
  nop                                 #  41    0x2826c  1      OPC=nop             
  nop                                 #  42    0x2826d  1      OPC=nop             
  nop                                 #  43    0x2826e  1      OPC=nop             
  nop                                 #  44    0x2826f  1      OPC=nop             
  nop                                 #  45    0x28270  1      OPC=nop             
  nop                                 #  46    0x28271  1      OPC=nop             
  nop                                 #  47    0x28272  1      OPC=nop             
  nop                                 #  48    0x28273  1      OPC=nop             
  nop                                 #  49    0x28274  1      OPC=nop             
  nop                                 #  50    0x28275  1      OPC=nop             
  nop                                 #  51    0x28276  1      OPC=nop             
  nop                                 #  52    0x28277  1      OPC=nop             
  nop                                 #  53    0x28278  1      OPC=nop             
  nop                                 #  54    0x28279  1      OPC=nop             
  nop                                 #  55    0x2827a  1      OPC=nop             
  nop                                 #  56    0x2827b  1      OPC=nop             
  nop                                 #  57    0x2827c  1      OPC=nop             
  nop                                 #  58    0x2827d  1      OPC=nop             
  nop                                 #  59    0x2827e  1      OPC=nop             
  nop                                 #  60    0x2827f  1      OPC=nop             
.L_28280:                             #        0x28280  0      OPC=<label>         
  movl $0x80, %edi                    #  61    0x28280  5      OPC=movl_r32_imm32  
  nop                                 #  62    0x28285  1      OPC=nop             
  nop                                 #  63    0x28286  1      OPC=nop             
  nop                                 #  64    0x28287  1      OPC=nop             
  nop                                 #  65    0x28288  1      OPC=nop             
  nop                                 #  66    0x28289  1      OPC=nop             
  nop                                 #  67    0x2828a  1      OPC=nop             
  nop                                 #  68    0x2828b  1      OPC=nop             
  nop                                 #  69    0x2828c  1      OPC=nop             
  nop                                 #  70    0x2828d  1      OPC=nop             
  nop                                 #  71    0x2828e  1      OPC=nop             
  nop                                 #  72    0x2828f  1      OPC=nop             
  nop                                 #  73    0x28290  1      OPC=nop             
  nop                                 #  74    0x28291  1      OPC=nop             
  nop                                 #  75    0x28292  1      OPC=nop             
  nop                                 #  76    0x28293  1      OPC=nop             
  nop                                 #  77    0x28294  1      OPC=nop             
  nop                                 #  78    0x28295  1      OPC=nop             
  nop                                 #  79    0x28296  1      OPC=nop             
  nop                                 #  80    0x28297  1      OPC=nop             
  nop                                 #  81    0x28298  1      OPC=nop             
  nop                                 #  82    0x28299  1      OPC=nop             
  nop                                 #  83    0x2829a  1      OPC=nop             
  callq .List_Create                  #  84    0x2829b  5      OPC=callq_label     
  movl %eax, %eax                     #  85    0x282a0  2      OPC=movl_r32_r32    
  movl %eax, 0x10048ea0(%rip)         #  86    0x282a2  6      OPC=movl_m32_r32    
  jmpq .L_28240                       #  87    0x282a8  2      OPC=jmpq_label      
  nop                                 #  88    0x282aa  1      OPC=nop             
  nop                                 #  89    0x282ab  1      OPC=nop             
  nop                                 #  90    0x282ac  1      OPC=nop             
  nop                                 #  91    0x282ad  1      OPC=nop             
  nop                                 #  92    0x282ae  1      OPC=nop             
  nop                                 #  93    0x282af  1      OPC=nop             
  nop                                 #  94    0x282b0  1      OPC=nop             
  nop                                 #  95    0x282b1  1      OPC=nop             
  nop                                 #  96    0x282b2  1      OPC=nop             
  nop                                 #  97    0x282b3  1      OPC=nop             
  nop                                 #  98    0x282b4  1      OPC=nop             
  nop                                 #  99    0x282b5  1      OPC=nop             
  nop                                 #  100   0x282b6  1      OPC=nop             
  nop                                 #  101   0x282b7  1      OPC=nop             
  nop                                 #  102   0x282b8  1      OPC=nop             
  nop                                 #  103   0x282b9  1      OPC=nop             
  nop                                 #  104   0x282ba  1      OPC=nop             
  nop                                 #  105   0x282bb  1      OPC=nop             
  nop                                 #  106   0x282bc  1      OPC=nop             
  nop                                 #  107   0x282bd  1      OPC=nop             
  nop                                 #  108   0x282be  1      OPC=nop             
  nop                                 #  109   0x282bf  1      OPC=nop             
                                                                                   
.size ExtractPlanFromConstraint, .-ExtractPlanFromConstraint

