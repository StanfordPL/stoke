  .text
  .globl __cxa_guard_acquire
  .type __cxa_guard_acquire, @function

#! file-offset 0x122900
#! rip-offset  0xe2900
#! capacity    192 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_guard_acquire:              #        0xe2900  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe2900  2      OPC=movl_r32_r32    
  subl $0x8, %esp                  #  2     0xe2902  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe2905  3      OPC=addq_r64_r64    
  movl %edi, %edi                  #  4     0xe2908  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx       #  5     0xe290a  5      OPC=movzbl_r32_m8   
  xorl %eax, %eax                  #  6     0xe290f  2      OPC=xorl_r32_r32    
  testb %dl, %dl                   #  7     0xe2911  2      OPC=testb_r8_r8     
  je .L_e2940                      #  8     0xe2913  2      OPC=je_label        
  nop                              #  9     0xe2915  1      OPC=nop             
  nop                              #  10    0xe2916  1      OPC=nop             
  nop                              #  11    0xe2917  1      OPC=nop             
  nop                              #  12    0xe2918  1      OPC=nop             
  nop                              #  13    0xe2919  1      OPC=nop             
  nop                              #  14    0xe291a  1      OPC=nop             
  nop                              #  15    0xe291b  1      OPC=nop             
  nop                              #  16    0xe291c  1      OPC=nop             
  nop                              #  17    0xe291d  1      OPC=nop             
  nop                              #  18    0xe291e  1      OPC=nop             
  nop                              #  19    0xe291f  1      OPC=nop             
.L_e2920:                          #        0xe2920  0      OPC=<label>         
  addl $0x8, %esp                  #  20    0xe2920  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  21    0xe2923  3      OPC=addq_r64_r64    
  popq %r11                        #  22    0xe2926  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  23    0xe2928  7      OPC=andl_r32_imm32  
  nop                              #  24    0xe292f  1      OPC=nop             
  nop                              #  25    0xe2930  1      OPC=nop             
  nop                              #  26    0xe2931  1      OPC=nop             
  nop                              #  27    0xe2932  1      OPC=nop             
  addq %r15, %r11                  #  28    0xe2933  3      OPC=addq_r64_r64    
  jmpq %r11                        #  29    0xe2936  3      OPC=jmpq_r64        
  nop                              #  30    0xe2939  1      OPC=nop             
  nop                              #  31    0xe293a  1      OPC=nop             
  nop                              #  32    0xe293b  1      OPC=nop             
  nop                              #  33    0xe293c  1      OPC=nop             
  nop                              #  34    0xe293d  1      OPC=nop             
  nop                              #  35    0xe293e  1      OPC=nop             
  nop                              #  36    0xe293f  1      OPC=nop             
  nop                              #  37    0xe2940  1      OPC=nop             
  nop                              #  38    0xe2941  1      OPC=nop             
  nop                              #  39    0xe2942  1      OPC=nop             
  nop                              #  40    0xe2943  1      OPC=nop             
  nop                              #  41    0xe2944  1      OPC=nop             
  nop                              #  42    0xe2945  1      OPC=nop             
  nop                              #  43    0xe2946  1      OPC=nop             
.L_e2940:                          #        0xe2947  0      OPC=<label>         
  movl %edi, %edi                  #  44    0xe2947  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rdi,1)         #  45    0xe2949  5      OPC=cmpb_m8_imm8    
  jne .L_e2920                     #  46    0xe294e  2      OPC=jne_label       
  addl $0x1, %edi                  #  47    0xe2950  3      OPC=addl_r32_imm8   
  movl %edi, %edi                  #  48    0xe2953  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rdi,1)         #  49    0xe2955  5      OPC=cmpb_m8_imm8    
  jne .L_e2980                     #  50    0xe295a  2      OPC=jne_label       
  movl %edi, %edi                  #  51    0xe295c  2      OPC=movl_r32_r32    
  movb $0x1, (%r15,%rdi,1)         #  52    0xe295e  5      OPC=movb_m8_imm8    
  nop                              #  53    0xe2963  1      OPC=nop             
  nop                              #  54    0xe2964  1      OPC=nop             
  nop                              #  55    0xe2965  1      OPC=nop             
  nop                              #  56    0xe2966  1      OPC=nop             
  addl $0x8, %esp                  #  57    0xe2967  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  58    0xe296a  3      OPC=addq_r64_r64    
  movl $0x1, %eax                  #  59    0xe296d  5      OPC=movl_r32_imm32  
  popq %r11                        #  60    0xe2972  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  61    0xe2974  7      OPC=andl_r32_imm32  
  nop                              #  62    0xe297b  1      OPC=nop             
  nop                              #  63    0xe297c  1      OPC=nop             
  nop                              #  64    0xe297d  1      OPC=nop             
  nop                              #  65    0xe297e  1      OPC=nop             
  addq %r15, %r11                  #  66    0xe297f  3      OPC=addq_r64_r64    
  jmpq %r11                        #  67    0xe2982  3      OPC=jmpq_r64        
  nop                              #  68    0xe2985  1      OPC=nop             
  nop                              #  69    0xe2986  1      OPC=nop             
  nop                              #  70    0xe2987  1      OPC=nop             
  nop                              #  71    0xe2988  1      OPC=nop             
  nop                              #  72    0xe2989  1      OPC=nop             
  nop                              #  73    0xe298a  1      OPC=nop             
  nop                              #  74    0xe298b  1      OPC=nop             
  nop                              #  75    0xe298c  1      OPC=nop             
  nop                              #  76    0xe298d  1      OPC=nop             
.L_e2980:                          #        0xe298e  0      OPC=<label>         
  movl $0x4, %edi                  #  77    0xe298e  5      OPC=movl_r32_imm32  
  nop                              #  78    0xe2993  1      OPC=nop             
  nop                              #  79    0xe2994  1      OPC=nop             
  nop                              #  80    0xe2995  1      OPC=nop             
  nop                              #  81    0xe2996  1      OPC=nop             
  nop                              #  82    0xe2997  1      OPC=nop             
  nop                              #  83    0xe2998  1      OPC=nop             
  nop                              #  84    0xe2999  1      OPC=nop             
  nop                              #  85    0xe299a  1      OPC=nop             
  nop                              #  86    0xe299b  1      OPC=nop             
  nop                              #  87    0xe299c  1      OPC=nop             
  nop                              #  88    0xe299d  1      OPC=nop             
  nop                              #  89    0xe299e  1      OPC=nop             
  nop                              #  90    0xe299f  1      OPC=nop             
  nop                              #  91    0xe29a0  1      OPC=nop             
  nop                              #  92    0xe29a1  1      OPC=nop             
  nop                              #  93    0xe29a2  1      OPC=nop             
  nop                              #  94    0xe29a3  1      OPC=nop             
  nop                              #  95    0xe29a4  1      OPC=nop             
  nop                              #  96    0xe29a5  1      OPC=nop             
  nop                              #  97    0xe29a6  1      OPC=nop             
  nop                              #  98    0xe29a7  1      OPC=nop             
  nop                              #  99    0xe29a8  1      OPC=nop             
  callq .__cxa_allocate_exception  #  100   0xe29a9  5      OPC=callq_label     
  movl %eax, %edi                  #  101   0xe29ae  2      OPC=movl_r32_r32    
  movl $0xe29c0, %edx              #  102   0xe29b0  5      OPC=movl_r32_imm32  
  movl $0x1003d1c4, %esi           #  103   0xe29b5  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  104   0xe29ba  2      OPC=movl_r32_r32    
  movl $0x1003d188, (%r15,%rdi,1)  #  105   0xe29bc  8      OPC=movl_m32_imm32  
  nop                              #  106   0xe29c4  1      OPC=nop             
  nop                              #  107   0xe29c5  1      OPC=nop             
  nop                              #  108   0xe29c6  1      OPC=nop             
  nop                              #  109   0xe29c7  1      OPC=nop             
  nop                              #  110   0xe29c8  1      OPC=nop             
  callq .__cxa_throw               #  111   0xe29c9  5      OPC=callq_label     
                                                                                
.size __cxa_guard_acquire, .-__cxa_guard_acquire

