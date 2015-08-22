  .text
  .globl _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj
  .type _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj, @function

#! file-offset 0xf7140
#! rip-offset  0xb7140
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj:        #        0xb7140  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb7140  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb7141  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb7143  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb7145  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb7147  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb714a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0xb714d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb714f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0xb7151  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0xb7156  3      OPC=setne_r8        
  nop                                                  #  11    0xb7159  1      OPC=nop             
  nop                                                  #  12    0xb715a  1      OPC=nop             
  nop                                                  #  13    0xb715b  1      OPC=nop             
  nop                                                  #  14    0xb715c  1      OPC=nop             
  nop                                                  #  15    0xb715d  1      OPC=nop             
  nop                                                  #  16    0xb715e  1      OPC=nop             
  nop                                                  #  17    0xb715f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0xb7160  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  19    0xb7162  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0xb716a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0xb716c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0xb716e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0xb7173  1      OPC=nop             
  nop                                                  #  24    0xb7174  1      OPC=nop             
  nop                                                  #  25    0xb7175  1      OPC=nop             
  nop                                                  #  26    0xb7176  1      OPC=nop             
  nop                                                  #  27    0xb7177  1      OPC=nop             
  nop                                                  #  28    0xb7178  1      OPC=nop             
  nop                                                  #  29    0xb7179  1      OPC=nop             
  nop                                                  #  30    0xb717a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  31    0xb717b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0xb7180  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0xb7183  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0xb7186  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0xb7187  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0xb7189  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0xb7190  1      OPC=nop             
  nop                                                  #  38    0xb7191  1      OPC=nop             
  nop                                                  #  39    0xb7192  1      OPC=nop             
  nop                                                  #  40    0xb7193  1      OPC=nop             
  addq %r15, %r11                                      #  41    0xb7194  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0xb7197  3      OPC=jmpq_r64        
  nop                                                  #  43    0xb719a  1      OPC=nop             
  nop                                                  #  44    0xb719b  1      OPC=nop             
  nop                                                  #  45    0xb719c  1      OPC=nop             
  nop                                                  #  46    0xb719d  1      OPC=nop             
  nop                                                  #  47    0xb719e  1      OPC=nop             
  nop                                                  #  48    0xb719f  1      OPC=nop             
  nop                                                  #  49    0xb71a0  1      OPC=nop             
  nop                                                  #  50    0xb71a1  1      OPC=nop             
  nop                                                  #  51    0xb71a2  1      OPC=nop             
  nop                                                  #  52    0xb71a3  1      OPC=nop             
  nop                                                  #  53    0xb71a4  1      OPC=nop             
  nop                                                  #  54    0xb71a5  1      OPC=nop             
  nop                                                  #  55    0xb71a6  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0xb71a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0xb71a9  4      OPC=movl_m32_r32    
  nop                                                  #  58    0xb71ad  1      OPC=nop             
  nop                                                  #  59    0xb71ae  1      OPC=nop             
  nop                                                  #  60    0xb71af  1      OPC=nop             
  nop                                                  #  61    0xb71b0  1      OPC=nop             
  nop                                                  #  62    0xb71b1  1      OPC=nop             
  nop                                                  #  63    0xb71b2  1      OPC=nop             
  nop                                                  #  64    0xb71b3  1      OPC=nop             
  nop                                                  #  65    0xb71b4  1      OPC=nop             
  nop                                                  #  66    0xb71b5  1      OPC=nop             
  nop                                                  #  67    0xb71b6  1      OPC=nop             
  nop                                                  #  68    0xb71b7  1      OPC=nop             
  nop                                                  #  69    0xb71b8  1      OPC=nop             
  nop                                                  #  70    0xb71b9  1      OPC=nop             
  nop                                                  #  71    0xb71ba  1      OPC=nop             
  nop                                                  #  72    0xb71bb  1      OPC=nop             
  nop                                                  #  73    0xb71bc  1      OPC=nop             
  nop                                                  #  74    0xb71bd  1      OPC=nop             
  nop                                                  #  75    0xb71be  1      OPC=nop             
  nop                                                  #  76    0xb71bf  1      OPC=nop             
  nop                                                  #  77    0xb71c0  1      OPC=nop             
  nop                                                  #  78    0xb71c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0xb71c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0xb71c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0xb71cb  2      OPC=movl_r32_r32    
  nop                                                  #  82    0xb71cd  1      OPC=nop             
  nop                                                  #  83    0xb71ce  1      OPC=nop             
  nop                                                  #  84    0xb71cf  1      OPC=nop             
  nop                                                  #  85    0xb71d0  1      OPC=nop             
  nop                                                  #  86    0xb71d1  1      OPC=nop             
  nop                                                  #  87    0xb71d2  1      OPC=nop             
  nop                                                  #  88    0xb71d3  1      OPC=nop             
  nop                                                  #  89    0xb71d4  1      OPC=nop             
  nop                                                  #  90    0xb71d5  1      OPC=nop             
  nop                                                  #  91    0xb71d6  1      OPC=nop             
  nop                                                  #  92    0xb71d7  1      OPC=nop             
  nop                                                  #  93    0xb71d8  1      OPC=nop             
  nop                                                  #  94    0xb71d9  1      OPC=nop             
  nop                                                  #  95    0xb71da  1      OPC=nop             
  nop                                                  #  96    0xb71db  1      OPC=nop             
  nop                                                  #  97    0xb71dc  1      OPC=nop             
  nop                                                  #  98    0xb71dd  1      OPC=nop             
  nop                                                  #  99    0xb71de  1      OPC=nop             
  nop                                                  #  100   0xb71df  1      OPC=nop             
  nop                                                  #  101   0xb71e0  1      OPC=nop             
  nop                                                  #  102   0xb71e1  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0xb71e2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj, .-_ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj

