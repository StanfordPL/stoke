  .text
  .globl ExtractPlanFromConstraint
  .type ExtractPlanFromConstraint, @function

#! file-offset 0x687a0
#! rip-offset  0x287a0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.ExtractPlanFromConstraint:           #        0x287a0  0      OPC=<label>         
  pushq %rbx                          #  1     0x287a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0x287a1  2      OPC=movl_r32_r32    
  movl 0x1004899f(%rip), %eax         #  3     0x287a3  6      OPC=movl_r32_m32    
  testq %rax, %rax                    #  4     0x287a9  3      OPC=testq_r64_r64   
  je .L_28800                         #  5     0x287ac  2      OPC=je_label        
  nop                                 #  6     0x287ae  1      OPC=nop             
  nop                                 #  7     0x287af  1      OPC=nop             
  nop                                 #  8     0x287b0  1      OPC=nop             
  nop                                 #  9     0x287b1  1      OPC=nop             
  nop                                 #  10    0x287b2  1      OPC=nop             
  nop                                 #  11    0x287b3  1      OPC=nop             
  nop                                 #  12    0x287b4  1      OPC=nop             
  nop                                 #  13    0x287b5  1      OPC=nop             
  nop                                 #  14    0x287b6  1      OPC=nop             
  nop                                 #  15    0x287b7  1      OPC=nop             
  nop                                 #  16    0x287b8  1      OPC=nop             
  nop                                 #  17    0x287b9  1      OPC=nop             
  nop                                 #  18    0x287ba  1      OPC=nop             
  nop                                 #  19    0x287bb  1      OPC=nop             
  nop                                 #  20    0x287bc  1      OPC=nop             
  nop                                 #  21    0x287bd  1      OPC=nop             
  nop                                 #  22    0x287be  1      OPC=nop             
  nop                                 #  23    0x287bf  1      OPC=nop             
.L_287c0:                             #        0x287c0  0      OPC=<label>         
  movl %eax, %eax                     #  24    0x287c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)         #  25    0x287c2  9      OPC=movl_m32_imm32  
  movl %eax, %eax                     #  26    0x287cb  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0xc(%r15,%rax,1)  #  27    0x287cd  9      OPC=movl_m32_imm32  
  movl %ebx, %edi                     #  28    0x287d6  2      OPC=movl_r32_r32    
  nop                                 #  29    0x287d8  1      OPC=nop             
  nop                                 #  30    0x287d9  1      OPC=nop             
  nop                                 #  31    0x287da  1      OPC=nop             
  callq .AddIfSatisfiedInput          #  32    0x287db  5      OPC=callq_label     
  popq %rbx                           #  33    0x287e0  1      OPC=popq_r64_1      
  jmpq .MakePlan                      #  34    0x287e1  5      OPC=jmpq_label_1    
  nop                                 #  35    0x287e6  1      OPC=nop             
  nop                                 #  36    0x287e7  1      OPC=nop             
  nop                                 #  37    0x287e8  1      OPC=nop             
  nop                                 #  38    0x287e9  1      OPC=nop             
  nop                                 #  39    0x287ea  1      OPC=nop             
  nop                                 #  40    0x287eb  1      OPC=nop             
  nop                                 #  41    0x287ec  1      OPC=nop             
  nop                                 #  42    0x287ed  1      OPC=nop             
  nop                                 #  43    0x287ee  1      OPC=nop             
  nop                                 #  44    0x287ef  1      OPC=nop             
  nop                                 #  45    0x287f0  1      OPC=nop             
  nop                                 #  46    0x287f1  1      OPC=nop             
  nop                                 #  47    0x287f2  1      OPC=nop             
  nop                                 #  48    0x287f3  1      OPC=nop             
  nop                                 #  49    0x287f4  1      OPC=nop             
  nop                                 #  50    0x287f5  1      OPC=nop             
  nop                                 #  51    0x287f6  1      OPC=nop             
  nop                                 #  52    0x287f7  1      OPC=nop             
  nop                                 #  53    0x287f8  1      OPC=nop             
  nop                                 #  54    0x287f9  1      OPC=nop             
  nop                                 #  55    0x287fa  1      OPC=nop             
  nop                                 #  56    0x287fb  1      OPC=nop             
  nop                                 #  57    0x287fc  1      OPC=nop             
  nop                                 #  58    0x287fd  1      OPC=nop             
  nop                                 #  59    0x287fe  1      OPC=nop             
  nop                                 #  60    0x287ff  1      OPC=nop             
.L_28800:                             #        0x28800  0      OPC=<label>         
  movl $0x80, %edi                    #  61    0x28800  5      OPC=movl_r32_imm32  
  nop                                 #  62    0x28805  1      OPC=nop             
  nop                                 #  63    0x28806  1      OPC=nop             
  nop                                 #  64    0x28807  1      OPC=nop             
  nop                                 #  65    0x28808  1      OPC=nop             
  nop                                 #  66    0x28809  1      OPC=nop             
  nop                                 #  67    0x2880a  1      OPC=nop             
  nop                                 #  68    0x2880b  1      OPC=nop             
  nop                                 #  69    0x2880c  1      OPC=nop             
  nop                                 #  70    0x2880d  1      OPC=nop             
  nop                                 #  71    0x2880e  1      OPC=nop             
  nop                                 #  72    0x2880f  1      OPC=nop             
  nop                                 #  73    0x28810  1      OPC=nop             
  nop                                 #  74    0x28811  1      OPC=nop             
  nop                                 #  75    0x28812  1      OPC=nop             
  nop                                 #  76    0x28813  1      OPC=nop             
  nop                                 #  77    0x28814  1      OPC=nop             
  nop                                 #  78    0x28815  1      OPC=nop             
  nop                                 #  79    0x28816  1      OPC=nop             
  nop                                 #  80    0x28817  1      OPC=nop             
  nop                                 #  81    0x28818  1      OPC=nop             
  nop                                 #  82    0x28819  1      OPC=nop             
  nop                                 #  83    0x2881a  1      OPC=nop             
  callq .List_Create                  #  84    0x2881b  5      OPC=callq_label     
  movl %eax, %eax                     #  85    0x28820  2      OPC=movl_r32_r32    
  movl %eax, 0x10048920(%rip)         #  86    0x28822  6      OPC=movl_m32_r32    
  jmpq .L_287c0                       #  87    0x28828  2      OPC=jmpq_label      
  nop                                 #  88    0x2882a  1      OPC=nop             
  nop                                 #  89    0x2882b  1      OPC=nop             
  nop                                 #  90    0x2882c  1      OPC=nop             
  nop                                 #  91    0x2882d  1      OPC=nop             
  nop                                 #  92    0x2882e  1      OPC=nop             
  nop                                 #  93    0x2882f  1      OPC=nop             
  nop                                 #  94    0x28830  1      OPC=nop             
  nop                                 #  95    0x28831  1      OPC=nop             
  nop                                 #  96    0x28832  1      OPC=nop             
  nop                                 #  97    0x28833  1      OPC=nop             
  nop                                 #  98    0x28834  1      OPC=nop             
  nop                                 #  99    0x28835  1      OPC=nop             
  nop                                 #  100   0x28836  1      OPC=nop             
  nop                                 #  101   0x28837  1      OPC=nop             
  nop                                 #  102   0x28838  1      OPC=nop             
  nop                                 #  103   0x28839  1      OPC=nop             
  nop                                 #  104   0x2883a  1      OPC=nop             
  nop                                 #  105   0x2883b  1      OPC=nop             
  nop                                 #  106   0x2883c  1      OPC=nop             
  nop                                 #  107   0x2883d  1      OPC=nop             
  nop                                 #  108   0x2883e  1      OPC=nop             
  nop                                 #  109   0x2883f  1      OPC=nop             
                                                                                   
.size ExtractPlanFromConstraint, .-ExtractPlanFromConstraint

