  .text
  .globl InitDeltaBlue
  .type InitDeltaBlue, @function

#! file-offset 0x68900
#! rip-offset  0x28900
#! capacity    288 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.InitDeltaBlue:                       #        0x28900  0      OPC=<label>         
  subl $0x8, %esp                     #  1     0x28900  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  2     0x28903  3      OPC=addq_r64_r64    
  movl 0x10048834(%rip), %eax         #  3     0x28906  6      OPC=movl_r32_m32    
  testq %rax, %rax                    #  4     0x2890c  3      OPC=testq_r64_r64   
  je .L_289e0                         #  5     0x2890f  6      OPC=je_label_1      
  nop                                 #  6     0x28915  1      OPC=nop             
  nop                                 #  7     0x28916  1      OPC=nop             
  nop                                 #  8     0x28917  1      OPC=nop             
  nop                                 #  9     0x28918  1      OPC=nop             
  nop                                 #  10    0x28919  1      OPC=nop             
  nop                                 #  11    0x2891a  1      OPC=nop             
  nop                                 #  12    0x2891b  1      OPC=nop             
  nop                                 #  13    0x2891c  1      OPC=nop             
  nop                                 #  14    0x2891d  1      OPC=nop             
  nop                                 #  15    0x2891e  1      OPC=nop             
  nop                                 #  16    0x2891f  1      OPC=nop             
.L_28920:                             #        0x28920  0      OPC=<label>         
  movl %eax, %eax                     #  17    0x28920  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx         #  18    0x28922  5      OPC=movl_r32_m32    
  movl %eax, %eax                     #  19    0x28927  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rax,1)         #  20    0x28929  5      OPC=cmpl_m32_r32    
  jge .L_28980                        #  21    0x2892e  2      OPC=jge_label       
  nop                                 #  22    0x28930  1      OPC=nop             
  nop                                 #  23    0x28931  1      OPC=nop             
  nop                                 #  24    0x28932  1      OPC=nop             
  nop                                 #  25    0x28933  1      OPC=nop             
  nop                                 #  26    0x28934  1      OPC=nop             
  nop                                 #  27    0x28935  1      OPC=nop             
  nop                                 #  28    0x28936  1      OPC=nop             
  nop                                 #  29    0x28937  1      OPC=nop             
  nop                                 #  30    0x28938  1      OPC=nop             
  nop                                 #  31    0x28939  1      OPC=nop             
  nop                                 #  32    0x2893a  1      OPC=nop             
  nop                                 #  33    0x2893b  1      OPC=nop             
  nop                                 #  34    0x2893c  1      OPC=nop             
  nop                                 #  35    0x2893d  1      OPC=nop             
  nop                                 #  36    0x2893e  1      OPC=nop             
  nop                                 #  37    0x2893f  1      OPC=nop             
.L_28940:                             #        0x28940  0      OPC=<label>         
  movl %eax, %eax                     #  38    0x28940  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)         #  39    0x28942  9      OPC=movl_m32_imm32  
  movl %eax, %eax                     #  40    0x2894b  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0xc(%r15,%rax,1)  #  41    0x2894d  9      OPC=movl_m32_imm32  
  movl $0x0, 0x100487e4(%rip)         #  42    0x28956  10     OPC=movl_m32_imm32  
  addl $0x8, %esp                     #  43    0x28960  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  44    0x28963  3      OPC=addq_r64_r64    
  popq %r11                           #  45    0x28966  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  46    0x28968  7      OPC=andl_r32_imm32  
  nop                                 #  47    0x2896f  1      OPC=nop             
  nop                                 #  48    0x28970  1      OPC=nop             
  nop                                 #  49    0x28971  1      OPC=nop             
  nop                                 #  50    0x28972  1      OPC=nop             
  addq %r15, %r11                     #  51    0x28973  3      OPC=addq_r64_r64    
  jmpq %r11                           #  52    0x28976  3      OPC=jmpq_r64        
  nop                                 #  53    0x28979  1      OPC=nop             
  nop                                 #  54    0x2897a  1      OPC=nop             
  nop                                 #  55    0x2897b  1      OPC=nop             
  nop                                 #  56    0x2897c  1      OPC=nop             
  nop                                 #  57    0x2897d  1      OPC=nop             
  nop                                 #  58    0x2897e  1      OPC=nop             
  nop                                 #  59    0x2897f  1      OPC=nop             
  nop                                 #  60    0x28980  1      OPC=nop             
  nop                                 #  61    0x28981  1      OPC=nop             
  nop                                 #  62    0x28982  1      OPC=nop             
  nop                                 #  63    0x28983  1      OPC=nop             
  nop                                 #  64    0x28984  1      OPC=nop             
  nop                                 #  65    0x28985  1      OPC=nop             
  nop                                 #  66    0x28986  1      OPC=nop             
.L_28980:                             #        0x28987  0      OPC=<label>         
  leal (,%rdx,4), %ecx                #  67    0x28987  7      OPC=leal_r32_m16    
  movl %eax, %eax                     #  68    0x2898e  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %ecx            #  69    0x28990  4      OPC=addl_r32_m32    
  movl %ecx, %ecx                     #  70    0x28994  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edi            #  71    0x28996  4      OPC=movl_r32_m32    
  addl $0x1, %edx                     #  72    0x2899a  3      OPC=addl_r32_imm8   
  movl %eax, %eax                     #  73    0x2899d  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rax,1)         #  74    0x2899f  5      OPC=movl_m32_r32    
  testq %rdi, %rdi                    #  75    0x289a4  3      OPC=testq_r64_r64   
  je .L_28940                         #  76    0x289a7  2      OPC=je_label        
  nop                                 #  77    0x289a9  1      OPC=nop             
  nop                                 #  78    0x289aa  1      OPC=nop             
  nop                                 #  79    0x289ab  1      OPC=nop             
  nop                                 #  80    0x289ac  1      OPC=nop             
  nop                                 #  81    0x289ad  1      OPC=nop             
  nop                                 #  82    0x289ae  1      OPC=nop             
  nop                                 #  83    0x289af  1      OPC=nop             
  nop                                 #  84    0x289b0  1      OPC=nop             
  nop                                 #  85    0x289b1  1      OPC=nop             
  nop                                 #  86    0x289b2  1      OPC=nop             
  nop                                 #  87    0x289b3  1      OPC=nop             
  nop                                 #  88    0x289b4  1      OPC=nop             
  nop                                 #  89    0x289b5  1      OPC=nop             
  nop                                 #  90    0x289b6  1      OPC=nop             
  nop                                 #  91    0x289b7  1      OPC=nop             
  nop                                 #  92    0x289b8  1      OPC=nop             
  nop                                 #  93    0x289b9  1      OPC=nop             
  nop                                 #  94    0x289ba  1      OPC=nop             
  nop                                 #  95    0x289bb  1      OPC=nop             
  nop                                 #  96    0x289bc  1      OPC=nop             
  nop                                 #  97    0x289bd  1      OPC=nop             
  nop                                 #  98    0x289be  1      OPC=nop             
  nop                                 #  99    0x289bf  1      OPC=nop             
  nop                                 #  100   0x289c0  1      OPC=nop             
  nop                                 #  101   0x289c1  1      OPC=nop             
  callq .FreeVariable                 #  102   0x289c2  5      OPC=callq_label     
  movl 0x1004877a(%rip), %eax         #  103   0x289c7  6      OPC=movl_r32_m32    
  jmpq .L_28920                       #  104   0x289cd  5      OPC=jmpq_label_1    
  nop                                 #  105   0x289d2  1      OPC=nop             
  nop                                 #  106   0x289d3  1      OPC=nop             
  nop                                 #  107   0x289d4  1      OPC=nop             
  nop                                 #  108   0x289d5  1      OPC=nop             
  nop                                 #  109   0x289d6  1      OPC=nop             
  nop                                 #  110   0x289d7  1      OPC=nop             
  nop                                 #  111   0x289d8  1      OPC=nop             
  nop                                 #  112   0x289d9  1      OPC=nop             
  nop                                 #  113   0x289da  1      OPC=nop             
  nop                                 #  114   0x289db  1      OPC=nop             
  nop                                 #  115   0x289dc  1      OPC=nop             
  nop                                 #  116   0x289dd  1      OPC=nop             
  nop                                 #  117   0x289de  1      OPC=nop             
  nop                                 #  118   0x289df  1      OPC=nop             
  nop                                 #  119   0x289e0  1      OPC=nop             
  nop                                 #  120   0x289e1  1      OPC=nop             
  nop                                 #  121   0x289e2  1      OPC=nop             
  nop                                 #  122   0x289e3  1      OPC=nop             
  nop                                 #  123   0x289e4  1      OPC=nop             
  nop                                 #  124   0x289e5  1      OPC=nop             
  nop                                 #  125   0x289e6  1      OPC=nop             
.L_289e0:                             #        0x289e7  0      OPC=<label>         
  movl $0x80, %edi                    #  126   0x289e7  5      OPC=movl_r32_imm32  
  nop                                 #  127   0x289ec  1      OPC=nop             
  nop                                 #  128   0x289ed  1      OPC=nop             
  nop                                 #  129   0x289ee  1      OPC=nop             
  nop                                 #  130   0x289ef  1      OPC=nop             
  nop                                 #  131   0x289f0  1      OPC=nop             
  nop                                 #  132   0x289f1  1      OPC=nop             
  nop                                 #  133   0x289f2  1      OPC=nop             
  nop                                 #  134   0x289f3  1      OPC=nop             
  nop                                 #  135   0x289f4  1      OPC=nop             
  nop                                 #  136   0x289f5  1      OPC=nop             
  nop                                 #  137   0x289f6  1      OPC=nop             
  nop                                 #  138   0x289f7  1      OPC=nop             
  nop                                 #  139   0x289f8  1      OPC=nop             
  nop                                 #  140   0x289f9  1      OPC=nop             
  nop                                 #  141   0x289fa  1      OPC=nop             
  nop                                 #  142   0x289fb  1      OPC=nop             
  nop                                 #  143   0x289fc  1      OPC=nop             
  nop                                 #  144   0x289fd  1      OPC=nop             
  nop                                 #  145   0x289fe  1      OPC=nop             
  nop                                 #  146   0x289ff  1      OPC=nop             
  nop                                 #  147   0x28a00  1      OPC=nop             
  nop                                 #  148   0x28a01  1      OPC=nop             
  callq .List_Create                  #  149   0x28a02  5      OPC=callq_label     
  movl %eax, %eax                     #  150   0x28a07  2      OPC=movl_r32_r32    
  movl %eax, 0x10048738(%rip)         #  151   0x28a09  6      OPC=movl_m32_r32    
  jmpq .L_28920                       #  152   0x28a0f  5      OPC=jmpq_label_1    
  nop                                 #  153   0x28a14  1      OPC=nop             
  nop                                 #  154   0x28a15  1      OPC=nop             
  nop                                 #  155   0x28a16  1      OPC=nop             
  nop                                 #  156   0x28a17  1      OPC=nop             
  nop                                 #  157   0x28a18  1      OPC=nop             
  nop                                 #  158   0x28a19  1      OPC=nop             
  nop                                 #  159   0x28a1a  1      OPC=nop             
  nop                                 #  160   0x28a1b  1      OPC=nop             
  nop                                 #  161   0x28a1c  1      OPC=nop             
  nop                                 #  162   0x28a1d  1      OPC=nop             
  nop                                 #  163   0x28a1e  1      OPC=nop             
  nop                                 #  164   0x28a1f  1      OPC=nop             
  nop                                 #  165   0x28a20  1      OPC=nop             
  nop                                 #  166   0x28a21  1      OPC=nop             
  nop                                 #  167   0x28a22  1      OPC=nop             
  nop                                 #  168   0x28a23  1      OPC=nop             
  nop                                 #  169   0x28a24  1      OPC=nop             
  nop                                 #  170   0x28a25  1      OPC=nop             
  nop                                 #  171   0x28a26  1      OPC=nop             
                                                                                   
.size InitDeltaBlue, .-InitDeltaBlue
