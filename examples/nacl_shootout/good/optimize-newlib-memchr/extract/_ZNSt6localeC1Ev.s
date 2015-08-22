  .text
  .globl _ZNSt6localeC1Ev
  .type _ZNSt6localeC1Ev, @function

#! file-offset 0xa32c0
#! rip-offset  0x632c0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC1Ev:                              #        0x632c0  0      OPC=<label>         
  pushq %rbx                                    #  1     0x632c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                               #  2     0x632c1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  3     0x632c3  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)                      #  4     0x632c5  8      OPC=movl_m32_imm32  
  nop                                           #  5     0x632cd  1      OPC=nop             
  nop                                           #  6     0x632ce  1      OPC=nop             
  nop                                           #  7     0x632cf  1      OPC=nop             
  nop                                           #  8     0x632d0  1      OPC=nop             
  nop                                           #  9     0x632d1  1      OPC=nop             
  nop                                           #  10    0x632d2  1      OPC=nop             
  nop                                           #  11    0x632d3  1      OPC=nop             
  nop                                           #  12    0x632d4  1      OPC=nop             
  nop                                           #  13    0x632d5  1      OPC=nop             
  nop                                           #  14    0x632d6  1      OPC=nop             
  nop                                           #  15    0x632d7  1      OPC=nop             
  nop                                           #  16    0x632d8  1      OPC=nop             
  nop                                           #  17    0x632d9  1      OPC=nop             
  nop                                           #  18    0x632da  1      OPC=nop             
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x632db  5      OPC=callq_label     
  nop                                           #  20    0x632e0  1      OPC=nop             
  nop                                           #  21    0x632e1  1      OPC=nop             
  nop                                           #  22    0x632e2  1      OPC=nop             
  nop                                           #  23    0x632e3  1      OPC=nop             
  nop                                           #  24    0x632e4  1      OPC=nop             
  nop                                           #  25    0x632e5  1      OPC=nop             
  nop                                           #  26    0x632e6  1      OPC=nop             
  nop                                           #  27    0x632e7  1      OPC=nop             
  nop                                           #  28    0x632e8  1      OPC=nop             
  nop                                           #  29    0x632e9  1      OPC=nop             
  nop                                           #  30    0x632ea  1      OPC=nop             
  nop                                           #  31    0x632eb  1      OPC=nop             
  nop                                           #  32    0x632ec  1      OPC=nop             
  nop                                           #  33    0x632ed  1      OPC=nop             
  nop                                           #  34    0x632ee  1      OPC=nop             
  nop                                           #  35    0x632ef  1      OPC=nop             
  nop                                           #  36    0x632f0  1      OPC=nop             
  nop                                           #  37    0x632f1  1      OPC=nop             
  nop                                           #  38    0x632f2  1      OPC=nop             
  nop                                           #  39    0x632f3  1      OPC=nop             
  nop                                           #  40    0x632f4  1      OPC=nop             
  nop                                           #  41    0x632f5  1      OPC=nop             
  nop                                           #  42    0x632f6  1      OPC=nop             
  nop                                           #  43    0x632f7  1      OPC=nop             
  nop                                           #  44    0x632f8  1      OPC=nop             
  nop                                           #  45    0x632f9  1      OPC=nop             
  nop                                           #  46    0x632fa  1      OPC=nop             
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x632fb  5      OPC=callq_label     
  movl 0x1000f322(%rip), %eax                   #  48    0x63300  6      OPC=movl_r32_m32    
  movl %eax, %eax                               #  49    0x63306  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)                      #  50    0x63308  5      OPC=addl_m32_imm8   
  movl %ebx, %ebx                               #  51    0x6330d  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                      #  52    0x6330f  4      OPC=movl_m32_r32    
  popq %rbx                                     #  53    0x63313  1      OPC=popq_r64_1      
  popq %r11                                     #  54    0x63314  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  55    0x63316  7      OPC=andl_r32_imm32  
  nop                                           #  56    0x6331d  1      OPC=nop             
  nop                                           #  57    0x6331e  1      OPC=nop             
  nop                                           #  58    0x6331f  1      OPC=nop             
  nop                                           #  59    0x63320  1      OPC=nop             
  addq %r15, %r11                               #  60    0x63321  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  61    0x63324  3      OPC=jmpq_r64        
  cmpq $0xff, %rdx                              #  62    0x63327  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                               #  63    0x6332b  2      OPC=movl_r32_r32    
  je .L_63340                                   #  64    0x6332d  2      OPC=je_label        
  nop                                           #  65    0x6332f  1      OPC=nop             
  nop                                           #  66    0x63330  1      OPC=nop             
  nop                                           #  67    0x63331  1      OPC=nop             
  nop                                           #  68    0x63332  1      OPC=nop             
  nop                                           #  69    0x63333  1      OPC=nop             
  nop                                           #  70    0x63334  1      OPC=nop             
  nop                                           #  71    0x63335  1      OPC=nop             
  nop                                           #  72    0x63336  1      OPC=nop             
  nop                                           #  73    0x63337  1      OPC=nop             
  nop                                           #  74    0x63338  1      OPC=nop             
  nop                                           #  75    0x63339  1      OPC=nop             
  nop                                           #  76    0x6333a  1      OPC=nop             
  nop                                           #  77    0x6333b  1      OPC=nop             
  nop                                           #  78    0x6333c  1      OPC=nop             
  nop                                           #  79    0x6333d  1      OPC=nop             
  nop                                           #  80    0x6333e  1      OPC=nop             
  nop                                           #  81    0x6333f  1      OPC=nop             
  nop                                           #  82    0x63340  1      OPC=nop             
  nop                                           #  83    0x63341  1      OPC=nop             
  callq ._Unwind_Resume                         #  84    0x63342  5      OPC=callq_label     
.L_63340:                                       #        0x63347  0      OPC=<label>         
  nop                                           #  85    0x63347  1      OPC=nop             
  nop                                           #  86    0x63348  1      OPC=nop             
  nop                                           #  87    0x63349  1      OPC=nop             
  nop                                           #  88    0x6334a  1      OPC=nop             
  nop                                           #  89    0x6334b  1      OPC=nop             
  nop                                           #  90    0x6334c  1      OPC=nop             
  nop                                           #  91    0x6334d  1      OPC=nop             
  nop                                           #  92    0x6334e  1      OPC=nop             
  nop                                           #  93    0x6334f  1      OPC=nop             
  nop                                           #  94    0x63350  1      OPC=nop             
  nop                                           #  95    0x63351  1      OPC=nop             
  nop                                           #  96    0x63352  1      OPC=nop             
  nop                                           #  97    0x63353  1      OPC=nop             
  nop                                           #  98    0x63354  1      OPC=nop             
  nop                                           #  99    0x63355  1      OPC=nop             
  nop                                           #  100   0x63356  1      OPC=nop             
  nop                                           #  101   0x63357  1      OPC=nop             
  nop                                           #  102   0x63358  1      OPC=nop             
  nop                                           #  103   0x63359  1      OPC=nop             
  nop                                           #  104   0x6335a  1      OPC=nop             
  nop                                           #  105   0x6335b  1      OPC=nop             
  nop                                           #  106   0x6335c  1      OPC=nop             
  nop                                           #  107   0x6335d  1      OPC=nop             
  nop                                           #  108   0x6335e  1      OPC=nop             
  nop                                           #  109   0x6335f  1      OPC=nop             
  nop                                           #  110   0x63360  1      OPC=nop             
  nop                                           #  111   0x63361  1      OPC=nop             
  callq .__cxa_call_unexpected                  #  112   0x63362  5      OPC=callq_label     
                                                                                             
.size _ZNSt6localeC1Ev, .-_ZNSt6localeC1Ev

