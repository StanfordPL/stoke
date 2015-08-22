  .text
  .globl _ZNSt6localeC2Ev
  .type _ZNSt6localeC2Ev, @function

#! file-offset 0xa3360
#! rip-offset  0x63360
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC2Ev:                              #        0x63360  0      OPC=<label>         
  pushq %rbx                                    #  1     0x63360  1      OPC=pushq_r64_1     
  movl %edi, %ebx                               #  2     0x63361  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  3     0x63363  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)                      #  4     0x63365  8      OPC=movl_m32_imm32  
  nop                                           #  5     0x6336d  1      OPC=nop             
  nop                                           #  6     0x6336e  1      OPC=nop             
  nop                                           #  7     0x6336f  1      OPC=nop             
  nop                                           #  8     0x63370  1      OPC=nop             
  nop                                           #  9     0x63371  1      OPC=nop             
  nop                                           #  10    0x63372  1      OPC=nop             
  nop                                           #  11    0x63373  1      OPC=nop             
  nop                                           #  12    0x63374  1      OPC=nop             
  nop                                           #  13    0x63375  1      OPC=nop             
  nop                                           #  14    0x63376  1      OPC=nop             
  nop                                           #  15    0x63377  1      OPC=nop             
  nop                                           #  16    0x63378  1      OPC=nop             
  nop                                           #  17    0x63379  1      OPC=nop             
  nop                                           #  18    0x6337a  1      OPC=nop             
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x6337b  5      OPC=callq_label     
  nop                                           #  20    0x63380  1      OPC=nop             
  nop                                           #  21    0x63381  1      OPC=nop             
  nop                                           #  22    0x63382  1      OPC=nop             
  nop                                           #  23    0x63383  1      OPC=nop             
  nop                                           #  24    0x63384  1      OPC=nop             
  nop                                           #  25    0x63385  1      OPC=nop             
  nop                                           #  26    0x63386  1      OPC=nop             
  nop                                           #  27    0x63387  1      OPC=nop             
  nop                                           #  28    0x63388  1      OPC=nop             
  nop                                           #  29    0x63389  1      OPC=nop             
  nop                                           #  30    0x6338a  1      OPC=nop             
  nop                                           #  31    0x6338b  1      OPC=nop             
  nop                                           #  32    0x6338c  1      OPC=nop             
  nop                                           #  33    0x6338d  1      OPC=nop             
  nop                                           #  34    0x6338e  1      OPC=nop             
  nop                                           #  35    0x6338f  1      OPC=nop             
  nop                                           #  36    0x63390  1      OPC=nop             
  nop                                           #  37    0x63391  1      OPC=nop             
  nop                                           #  38    0x63392  1      OPC=nop             
  nop                                           #  39    0x63393  1      OPC=nop             
  nop                                           #  40    0x63394  1      OPC=nop             
  nop                                           #  41    0x63395  1      OPC=nop             
  nop                                           #  42    0x63396  1      OPC=nop             
  nop                                           #  43    0x63397  1      OPC=nop             
  nop                                           #  44    0x63398  1      OPC=nop             
  nop                                           #  45    0x63399  1      OPC=nop             
  nop                                           #  46    0x6339a  1      OPC=nop             
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x6339b  5      OPC=callq_label     
  movl 0x1000f282(%rip), %eax                   #  48    0x633a0  6      OPC=movl_r32_m32    
  movl %eax, %eax                               #  49    0x633a6  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)                      #  50    0x633a8  5      OPC=addl_m32_imm8   
  movl %ebx, %ebx                               #  51    0x633ad  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                      #  52    0x633af  4      OPC=movl_m32_r32    
  popq %rbx                                     #  53    0x633b3  1      OPC=popq_r64_1      
  popq %r11                                     #  54    0x633b4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  55    0x633b6  7      OPC=andl_r32_imm32  
  nop                                           #  56    0x633bd  1      OPC=nop             
  nop                                           #  57    0x633be  1      OPC=nop             
  nop                                           #  58    0x633bf  1      OPC=nop             
  nop                                           #  59    0x633c0  1      OPC=nop             
  addq %r15, %r11                               #  60    0x633c1  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  61    0x633c4  3      OPC=jmpq_r64        
  cmpq $0xff, %rdx                              #  62    0x633c7  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                               #  63    0x633cb  2      OPC=movl_r32_r32    
  je .L_633e0                                   #  64    0x633cd  2      OPC=je_label        
  nop                                           #  65    0x633cf  1      OPC=nop             
  nop                                           #  66    0x633d0  1      OPC=nop             
  nop                                           #  67    0x633d1  1      OPC=nop             
  nop                                           #  68    0x633d2  1      OPC=nop             
  nop                                           #  69    0x633d3  1      OPC=nop             
  nop                                           #  70    0x633d4  1      OPC=nop             
  nop                                           #  71    0x633d5  1      OPC=nop             
  nop                                           #  72    0x633d6  1      OPC=nop             
  nop                                           #  73    0x633d7  1      OPC=nop             
  nop                                           #  74    0x633d8  1      OPC=nop             
  nop                                           #  75    0x633d9  1      OPC=nop             
  nop                                           #  76    0x633da  1      OPC=nop             
  nop                                           #  77    0x633db  1      OPC=nop             
  nop                                           #  78    0x633dc  1      OPC=nop             
  nop                                           #  79    0x633dd  1      OPC=nop             
  nop                                           #  80    0x633de  1      OPC=nop             
  nop                                           #  81    0x633df  1      OPC=nop             
  nop                                           #  82    0x633e0  1      OPC=nop             
  nop                                           #  83    0x633e1  1      OPC=nop             
  callq ._Unwind_Resume                         #  84    0x633e2  5      OPC=callq_label     
.L_633e0:                                       #        0x633e7  0      OPC=<label>         
  nop                                           #  85    0x633e7  1      OPC=nop             
  nop                                           #  86    0x633e8  1      OPC=nop             
  nop                                           #  87    0x633e9  1      OPC=nop             
  nop                                           #  88    0x633ea  1      OPC=nop             
  nop                                           #  89    0x633eb  1      OPC=nop             
  nop                                           #  90    0x633ec  1      OPC=nop             
  nop                                           #  91    0x633ed  1      OPC=nop             
  nop                                           #  92    0x633ee  1      OPC=nop             
  nop                                           #  93    0x633ef  1      OPC=nop             
  nop                                           #  94    0x633f0  1      OPC=nop             
  nop                                           #  95    0x633f1  1      OPC=nop             
  nop                                           #  96    0x633f2  1      OPC=nop             
  nop                                           #  97    0x633f3  1      OPC=nop             
  nop                                           #  98    0x633f4  1      OPC=nop             
  nop                                           #  99    0x633f5  1      OPC=nop             
  nop                                           #  100   0x633f6  1      OPC=nop             
  nop                                           #  101   0x633f7  1      OPC=nop             
  nop                                           #  102   0x633f8  1      OPC=nop             
  nop                                           #  103   0x633f9  1      OPC=nop             
  nop                                           #  104   0x633fa  1      OPC=nop             
  nop                                           #  105   0x633fb  1      OPC=nop             
  nop                                           #  106   0x633fc  1      OPC=nop             
  nop                                           #  107   0x633fd  1      OPC=nop             
  nop                                           #  108   0x633fe  1      OPC=nop             
  nop                                           #  109   0x633ff  1      OPC=nop             
  nop                                           #  110   0x63400  1      OPC=nop             
  nop                                           #  111   0x63401  1      OPC=nop             
  callq .__cxa_call_unexpected                  #  112   0x63402  5      OPC=callq_label     
                                                                                             
.size _ZNSt6localeC2Ev, .-_ZNSt6localeC2Ev

