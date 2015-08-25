  .text
  .globl run_wcscmp
  .type run_wcscmp, @function

#! file-offset 0x6a240
#! rip-offset  0x2a240
#! capacity    288 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.run_wcscmp:                 #        0x2a240  0      OPC=<label>         
  pushq %r14                 #  1     0x2a240  2      OPC=pushq_r64_1     
  pushq %r13                 #  2     0x2a242  2      OPC=pushq_r64_1     
  pushq %r12                 #  3     0x2a244  2      OPC=pushq_r64_1     
  pushq %rbx                 #  4     0x2a246  1      OPC=pushq_r64_1     
  subl $0x2018, %esp         #  5     0x2a247  6      OPC=subl_r32_imm32  
  addq %r15, %rsp            #  6     0x2a24d  3      OPC=addq_r64_r64    
  movl %edi, %r14d           #  7     0x2a250  3      OPC=movl_r32_r32    
  leal 0x1010(%rsp), %r13d   #  8     0x2a253  8      OPC=leal_r32_m16    
  movl %r13d, %eax           #  9     0x2a25b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax             #  10    0x2a25e  2      OPC=xchgw_ax_r16    
  leal 0x10(%rsp), %edx      #  11    0x2a260  4      OPC=leal_r32_m16    
  movq %rdx, 0x8(%rsp)       #  12    0x2a264  5      OPC=movq_m64_r64    
  movl 0x8(%rsp), %edx       #  13    0x2a269  4      OPC=movl_r32_m32    
  leal 0x1000(%r13), %ebx    #  14    0x2a26d  7      OPC=leal_r32_m16    
  nop                        #  15    0x2a274  1      OPC=nop             
  nop                        #  16    0x2a275  1      OPC=nop             
  nop                        #  17    0x2a276  1      OPC=nop             
  nop                        #  18    0x2a277  1      OPC=nop             
  nop                        #  19    0x2a278  1      OPC=nop             
  nop                        #  20    0x2a279  1      OPC=nop             
  nop                        #  21    0x2a27a  1      OPC=nop             
  nop                        #  22    0x2a27b  1      OPC=nop             
  nop                        #  23    0x2a27c  1      OPC=nop             
  nop                        #  24    0x2a27d  1      OPC=nop             
  nop                        #  25    0x2a27e  1      OPC=nop             
  nop                        #  26    0x2a27f  1      OPC=nop             
.L_2a280:                    #        0x2a280  0      OPC=<label>         
  movl %eax, %ecx            #  27    0x2a280  2      OPC=movl_r32_r32    
  movl %ecx, %ecx            #  28    0x2a282  2      OPC=movl_r32_r32    
  movl $0x61, (%r15,%rcx,1)  #  29    0x2a284  8      OPC=movl_m32_imm32  
  movl %edx, %ecx            #  30    0x2a28c  2      OPC=movl_r32_r32    
  movl %ecx, %ecx            #  31    0x2a28e  2      OPC=movl_r32_r32    
  movl $0x61, (%r15,%rcx,1)  #  32    0x2a290  8      OPC=movl_m32_imm32  
  addl $0x4, %eax            #  33    0x2a298  3      OPC=addl_r32_imm8   
  addl $0x4, %edx            #  34    0x2a29b  3      OPC=addl_r32_imm8   
  cmpl %ebx, %eax            #  35    0x2a29e  2      OPC=cmpl_r32_r32    
  jne .L_2a280               #  36    0x2a2a0  2      OPC=jne_label       
  testl %r14d, %r14d         #  37    0x2a2a2  3      OPC=testl_r32_r32   
  je .L_2a340                #  38    0x2a2a5  6      OPC=je_label_1      
  movl $0x0, 0x200c(%rsp)    #  39    0x2a2ab  11     OPC=movl_m32_imm32  
  nop                        #  40    0x2a2b6  1      OPC=nop             
  nop                        #  41    0x2a2b7  1      OPC=nop             
  nop                        #  42    0x2a2b8  1      OPC=nop             
  nop                        #  43    0x2a2b9  1      OPC=nop             
  nop                        #  44    0x2a2ba  1      OPC=nop             
  nop                        #  45    0x2a2bb  1      OPC=nop             
  nop                        #  46    0x2a2bc  1      OPC=nop             
  nop                        #  47    0x2a2bd  1      OPC=nop             
  nop                        #  48    0x2a2be  1      OPC=nop             
  nop                        #  49    0x2a2bf  1      OPC=nop             
  movl $0x0, 0x100c(%rsp)    #  50    0x2a2c0  11     OPC=movl_m32_imm32  
  xorl %r12d, %r12d          #  51    0x2a2cb  3      OPC=xorl_r32_r32    
  xorl %ebx, %ebx            #  52    0x2a2ce  2      OPC=xorl_r32_r32    
  nop                        #  53    0x2a2d0  1      OPC=nop             
  nop                        #  54    0x2a2d1  1      OPC=nop             
  nop                        #  55    0x2a2d2  1      OPC=nop             
  nop                        #  56    0x2a2d3  1      OPC=nop             
  nop                        #  57    0x2a2d4  1      OPC=nop             
  nop                        #  58    0x2a2d5  1      OPC=nop             
  nop                        #  59    0x2a2d6  1      OPC=nop             
  nop                        #  60    0x2a2d7  1      OPC=nop             
  nop                        #  61    0x2a2d8  1      OPC=nop             
  nop                        #  62    0x2a2d9  1      OPC=nop             
  nop                        #  63    0x2a2da  1      OPC=nop             
  nop                        #  64    0x2a2db  1      OPC=nop             
  nop                        #  65    0x2a2dc  1      OPC=nop             
  nop                        #  66    0x2a2dd  1      OPC=nop             
  nop                        #  67    0x2a2de  1      OPC=nop             
  nop                        #  68    0x2a2df  1      OPC=nop             
.L_2a2e0:                    #        0x2a2e0  0      OPC=<label>         
  movl 0x8(%rsp), %esi       #  69    0x2a2e0  4      OPC=movl_r32_m32    
  movl %r13d, %edi           #  70    0x2a2e4  3      OPC=movl_r32_r32    
  xorl %eax, %eax            #  71    0x2a2e7  2      OPC=xorl_r32_r32    
  nop                        #  72    0x2a2e9  1      OPC=nop             
  nop                        #  73    0x2a2ea  1      OPC=nop             
  nop                        #  74    0x2a2eb  1      OPC=nop             
  nop                        #  75    0x2a2ec  1      OPC=nop             
  nop                        #  76    0x2a2ed  1      OPC=nop             
  nop                        #  77    0x2a2ee  1      OPC=nop             
  nop                        #  78    0x2a2ef  1      OPC=nop             
  nop                        #  79    0x2a2f0  1      OPC=nop             
  nop                        #  80    0x2a2f1  1      OPC=nop             
  nop                        #  81    0x2a2f2  1      OPC=nop             
  nop                        #  82    0x2a2f3  1      OPC=nop             
  nop                        #  83    0x2a2f4  1      OPC=nop             
  nop                        #  84    0x2a2f5  1      OPC=nop             
  nop                        #  85    0x2a2f6  1      OPC=nop             
  nop                        #  86    0x2a2f7  1      OPC=nop             
  nop                        #  87    0x2a2f8  1      OPC=nop             
  nop                        #  88    0x2a2f9  1      OPC=nop             
  nop                        #  89    0x2a2fa  1      OPC=nop             
  callq .wcscmp              #  90    0x2a2fb  5      OPC=callq_label     
  addl %eax, %r12d           #  91    0x2a300  3      OPC=addl_r32_r32    
  addl $0x1, %ebx            #  92    0x2a303  3      OPC=addl_r32_imm8   
  cmpl %r14d, %ebx           #  93    0x2a306  3      OPC=cmpl_r32_r32    
  jb .L_2a2e0                #  94    0x2a309  2      OPC=jb_label        
  nop                        #  95    0x2a30b  1      OPC=nop             
  nop                        #  96    0x2a30c  1      OPC=nop             
  nop                        #  97    0x2a30d  1      OPC=nop             
  nop                        #  98    0x2a30e  1      OPC=nop             
  nop                        #  99    0x2a30f  1      OPC=nop             
  nop                        #  100   0x2a310  1      OPC=nop             
  nop                        #  101   0x2a311  1      OPC=nop             
  nop                        #  102   0x2a312  1      OPC=nop             
  nop                        #  103   0x2a313  1      OPC=nop             
  nop                        #  104   0x2a314  1      OPC=nop             
  nop                        #  105   0x2a315  1      OPC=nop             
  nop                        #  106   0x2a316  1      OPC=nop             
  nop                        #  107   0x2a317  1      OPC=nop             
  nop                        #  108   0x2a318  1      OPC=nop             
  nop                        #  109   0x2a319  1      OPC=nop             
  nop                        #  110   0x2a31a  1      OPC=nop             
  nop                        #  111   0x2a31b  1      OPC=nop             
  nop                        #  112   0x2a31c  1      OPC=nop             
  nop                        #  113   0x2a31d  1      OPC=nop             
  nop                        #  114   0x2a31e  1      OPC=nop             
  nop                        #  115   0x2a31f  1      OPC=nop             
.L_2a320:                    #        0x2a320  0      OPC=<label>         
  movl %r12d, %eax           #  116   0x2a320  3      OPC=movl_r32_r32    
  addl $0x2018, %esp         #  117   0x2a323  6      OPC=addl_r32_imm32  
  addq %r15, %rsp            #  118   0x2a329  3      OPC=addq_r64_r64    
  popq %rbx                  #  119   0x2a32c  1      OPC=popq_r64_1      
  popq %r12                  #  120   0x2a32d  2      OPC=popq_r64_1      
  popq %r13                  #  121   0x2a32f  2      OPC=popq_r64_1      
  popq %r14                  #  122   0x2a331  2      OPC=popq_r64_1      
  popq %r11                  #  123   0x2a333  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  124   0x2a335  7      OPC=andl_r32_imm32  
  nop                        #  125   0x2a33c  1      OPC=nop             
  nop                        #  126   0x2a33d  1      OPC=nop             
  nop                        #  127   0x2a33e  1      OPC=nop             
  nop                        #  128   0x2a33f  1      OPC=nop             
  addq %r15, %r11            #  129   0x2a340  3      OPC=addq_r64_r64    
  jmpq %r11                  #  130   0x2a343  3      OPC=jmpq_r64        
  nop                        #  131   0x2a346  1      OPC=nop             
.L_2a340:                    #        0x2a347  0      OPC=<label>         
  xorl %r12d, %r12d          #  132   0x2a347  3      OPC=xorl_r32_r32    
  jmpq .L_2a320              #  133   0x2a34a  2      OPC=jmpq_label      
  nop                        #  134   0x2a34c  1      OPC=nop             
  nop                        #  135   0x2a34d  1      OPC=nop             
  nop                        #  136   0x2a34e  1      OPC=nop             
  nop                        #  137   0x2a34f  1      OPC=nop             
  nop                        #  138   0x2a350  1      OPC=nop             
  nop                        #  139   0x2a351  1      OPC=nop             
  nop                        #  140   0x2a352  1      OPC=nop             
  nop                        #  141   0x2a353  1      OPC=nop             
  nop                        #  142   0x2a354  1      OPC=nop             
  nop                        #  143   0x2a355  1      OPC=nop             
  nop                        #  144   0x2a356  1      OPC=nop             
  nop                        #  145   0x2a357  1      OPC=nop             
  nop                        #  146   0x2a358  1      OPC=nop             
  nop                        #  147   0x2a359  1      OPC=nop             
  nop                        #  148   0x2a35a  1      OPC=nop             
  nop                        #  149   0x2a35b  1      OPC=nop             
  nop                        #  150   0x2a35c  1      OPC=nop             
  nop                        #  151   0x2a35d  1      OPC=nop             
  nop                        #  152   0x2a35e  1      OPC=nop             
  nop                        #  153   0x2a35f  1      OPC=nop             
  nop                        #  154   0x2a360  1      OPC=nop             
  nop                        #  155   0x2a361  1      OPC=nop             
  nop                        #  156   0x2a362  1      OPC=nop             
  nop                        #  157   0x2a363  1      OPC=nop             
  nop                        #  158   0x2a364  1      OPC=nop             
  nop                        #  159   0x2a365  1      OPC=nop             
  nop                        #  160   0x2a366  1      OPC=nop             
                                                                          
.size run_wcscmp, .-run_wcscmp
