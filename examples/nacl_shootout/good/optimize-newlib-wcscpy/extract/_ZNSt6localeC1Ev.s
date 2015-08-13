  .text
  .globl _ZNSt6localeC1Ev
  .type _ZNSt6localeC1Ev, @function

#! file-offset 0xa28a0
#! rip-offset  0x628a0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC1Ev:                              #        0x628a0  0      OPC=<label>         
  pushq %rbx                                    #  1     0x628a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                               #  2     0x628a1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  3     0x628a3  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)                      #  4     0x628a5  8      OPC=movl_m32_imm32  
  nop                                           #  5     0x628ad  1      OPC=nop             
  nop                                           #  6     0x628ae  1      OPC=nop             
  nop                                           #  7     0x628af  1      OPC=nop             
  nop                                           #  8     0x628b0  1      OPC=nop             
  nop                                           #  9     0x628b1  1      OPC=nop             
  nop                                           #  10    0x628b2  1      OPC=nop             
  nop                                           #  11    0x628b3  1      OPC=nop             
  nop                                           #  12    0x628b4  1      OPC=nop             
  nop                                           #  13    0x628b5  1      OPC=nop             
  nop                                           #  14    0x628b6  1      OPC=nop             
  nop                                           #  15    0x628b7  1      OPC=nop             
  nop                                           #  16    0x628b8  1      OPC=nop             
  nop                                           #  17    0x628b9  1      OPC=nop             
  nop                                           #  18    0x628ba  1      OPC=nop             
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x628bb  5      OPC=callq_label     
  nop                                           #  20    0x628c0  1      OPC=nop             
  nop                                           #  21    0x628c1  1      OPC=nop             
  nop                                           #  22    0x628c2  1      OPC=nop             
  nop                                           #  23    0x628c3  1      OPC=nop             
  nop                                           #  24    0x628c4  1      OPC=nop             
  nop                                           #  25    0x628c5  1      OPC=nop             
  nop                                           #  26    0x628c6  1      OPC=nop             
  nop                                           #  27    0x628c7  1      OPC=nop             
  nop                                           #  28    0x628c8  1      OPC=nop             
  nop                                           #  29    0x628c9  1      OPC=nop             
  nop                                           #  30    0x628ca  1      OPC=nop             
  nop                                           #  31    0x628cb  1      OPC=nop             
  nop                                           #  32    0x628cc  1      OPC=nop             
  nop                                           #  33    0x628cd  1      OPC=nop             
  nop                                           #  34    0x628ce  1      OPC=nop             
  nop                                           #  35    0x628cf  1      OPC=nop             
  nop                                           #  36    0x628d0  1      OPC=nop             
  nop                                           #  37    0x628d1  1      OPC=nop             
  nop                                           #  38    0x628d2  1      OPC=nop             
  nop                                           #  39    0x628d3  1      OPC=nop             
  nop                                           #  40    0x628d4  1      OPC=nop             
  nop                                           #  41    0x628d5  1      OPC=nop             
  nop                                           #  42    0x628d6  1      OPC=nop             
  nop                                           #  43    0x628d7  1      OPC=nop             
  nop                                           #  44    0x628d8  1      OPC=nop             
  nop                                           #  45    0x628d9  1      OPC=nop             
  nop                                           #  46    0x628da  1      OPC=nop             
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x628db  5      OPC=callq_label     
  movl 0x1000fd42(%rip), %eax                   #  48    0x628e0  6      OPC=movl_r32_m32    
  movl %eax, %eax                               #  49    0x628e6  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)                      #  50    0x628e8  5      OPC=addl_m32_imm8   
  movl %ebx, %ebx                               #  51    0x628ed  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                      #  52    0x628ef  4      OPC=movl_m32_r32    
  popq %rbx                                     #  53    0x628f3  1      OPC=popq_r64_1      
  popq %r11                                     #  54    0x628f4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  55    0x628f6  7      OPC=andl_r32_imm32  
  nop                                           #  56    0x628fd  1      OPC=nop             
  nop                                           #  57    0x628fe  1      OPC=nop             
  nop                                           #  58    0x628ff  1      OPC=nop             
  nop                                           #  59    0x62900  1      OPC=nop             
  addq %r15, %r11                               #  60    0x62901  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  61    0x62904  3      OPC=jmpq_r64        
  cmpq $0xff, %rdx                              #  62    0x62907  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                               #  63    0x6290b  2      OPC=movl_r32_r32    
  je .L_62920                                   #  64    0x6290d  2      OPC=je_label        
  nop                                           #  65    0x6290f  1      OPC=nop             
  nop                                           #  66    0x62910  1      OPC=nop             
  nop                                           #  67    0x62911  1      OPC=nop             
  nop                                           #  68    0x62912  1      OPC=nop             
  nop                                           #  69    0x62913  1      OPC=nop             
  nop                                           #  70    0x62914  1      OPC=nop             
  nop                                           #  71    0x62915  1      OPC=nop             
  nop                                           #  72    0x62916  1      OPC=nop             
  nop                                           #  73    0x62917  1      OPC=nop             
  nop                                           #  74    0x62918  1      OPC=nop             
  nop                                           #  75    0x62919  1      OPC=nop             
  nop                                           #  76    0x6291a  1      OPC=nop             
  nop                                           #  77    0x6291b  1      OPC=nop             
  nop                                           #  78    0x6291c  1      OPC=nop             
  nop                                           #  79    0x6291d  1      OPC=nop             
  nop                                           #  80    0x6291e  1      OPC=nop             
  nop                                           #  81    0x6291f  1      OPC=nop             
  nop                                           #  82    0x62920  1      OPC=nop             
  nop                                           #  83    0x62921  1      OPC=nop             
  callq ._Unwind_Resume                         #  84    0x62922  5      OPC=callq_label     
.L_62920:                                       #        0x62927  0      OPC=<label>         
  nop                                           #  85    0x62927  1      OPC=nop             
  nop                                           #  86    0x62928  1      OPC=nop             
  nop                                           #  87    0x62929  1      OPC=nop             
  nop                                           #  88    0x6292a  1      OPC=nop             
  nop                                           #  89    0x6292b  1      OPC=nop             
  nop                                           #  90    0x6292c  1      OPC=nop             
  nop                                           #  91    0x6292d  1      OPC=nop             
  nop                                           #  92    0x6292e  1      OPC=nop             
  nop                                           #  93    0x6292f  1      OPC=nop             
  nop                                           #  94    0x62930  1      OPC=nop             
  nop                                           #  95    0x62931  1      OPC=nop             
  nop                                           #  96    0x62932  1      OPC=nop             
  nop                                           #  97    0x62933  1      OPC=nop             
  nop                                           #  98    0x62934  1      OPC=nop             
  nop                                           #  99    0x62935  1      OPC=nop             
  nop                                           #  100   0x62936  1      OPC=nop             
  nop                                           #  101   0x62937  1      OPC=nop             
  nop                                           #  102   0x62938  1      OPC=nop             
  nop                                           #  103   0x62939  1      OPC=nop             
  nop                                           #  104   0x6293a  1      OPC=nop             
  nop                                           #  105   0x6293b  1      OPC=nop             
  nop                                           #  106   0x6293c  1      OPC=nop             
  nop                                           #  107   0x6293d  1      OPC=nop             
  nop                                           #  108   0x6293e  1      OPC=nop             
  nop                                           #  109   0x6293f  1      OPC=nop             
  nop                                           #  110   0x62940  1      OPC=nop             
  nop                                           #  111   0x62941  1      OPC=nop             
  callq .__cxa_call_unexpected                  #  112   0x62942  5      OPC=callq_label     
                                                                                             
.size _ZNSt6localeC1Ev, .-_ZNSt6localeC1Ev

