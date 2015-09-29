  .text
  .globl _ZNSt8numpunctIwEC1Ej
  .type _ZNSt8numpunctIwEC1Ej, @function

#! file-offset 0xf71e0
#! rip-offset  0xb71e0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1Ej:                                #        0xb71e0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb71e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb71e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb71e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb71e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb71e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb71ea  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0xb71ed  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb71ef  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb71f1  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0xb71f9  3      OPC=setne_r8        
  nop                                                  #  11    0xb71fc  1      OPC=nop             
  nop                                                  #  12    0xb71fd  1      OPC=nop             
  nop                                                  #  13    0xb71fe  1      OPC=nop             
  nop                                                  #  14    0xb71ff  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0xb7200  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb7202  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0xb720b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0xb720d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb720f  5      OPC=movl_m32_r32    
  nop                                                  #  20    0xb7214  1      OPC=nop             
  nop                                                  #  21    0xb7215  1      OPC=nop             
  nop                                                  #  22    0xb7216  1      OPC=nop             
  nop                                                  #  23    0xb7217  1      OPC=nop             
  nop                                                  #  24    0xb7218  1      OPC=nop             
  nop                                                  #  25    0xb7219  1      OPC=nop             
  nop                                                  #  26    0xb721a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb721b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0xb7220  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0xb7223  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0xb7226  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0xb7227  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0xb7229  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0xb7230  1      OPC=nop             
  nop                                                  #  34    0xb7231  1      OPC=nop             
  nop                                                  #  35    0xb7232  1      OPC=nop             
  nop                                                  #  36    0xb7233  1      OPC=nop             
  addq %r15, %r11                                      #  37    0xb7234  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0xb7237  3      OPC=jmpq_r64        
  nop                                                  #  39    0xb723a  1      OPC=nop             
  nop                                                  #  40    0xb723b  1      OPC=nop             
  nop                                                  #  41    0xb723c  1      OPC=nop             
  nop                                                  #  42    0xb723d  1      OPC=nop             
  nop                                                  #  43    0xb723e  1      OPC=nop             
  nop                                                  #  44    0xb723f  1      OPC=nop             
  nop                                                  #  45    0xb7240  1      OPC=nop             
  nop                                                  #  46    0xb7241  1      OPC=nop             
  nop                                                  #  47    0xb7242  1      OPC=nop             
  nop                                                  #  48    0xb7243  1      OPC=nop             
  nop                                                  #  49    0xb7244  1      OPC=nop             
  nop                                                  #  50    0xb7245  1      OPC=nop             
  nop                                                  #  51    0xb7246  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0xb7247  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0xb7249  4      OPC=movl_m32_r32    
  nop                                                  #  54    0xb724d  1      OPC=nop             
  nop                                                  #  55    0xb724e  1      OPC=nop             
  nop                                                  #  56    0xb724f  1      OPC=nop             
  nop                                                  #  57    0xb7250  1      OPC=nop             
  nop                                                  #  58    0xb7251  1      OPC=nop             
  nop                                                  #  59    0xb7252  1      OPC=nop             
  nop                                                  #  60    0xb7253  1      OPC=nop             
  nop                                                  #  61    0xb7254  1      OPC=nop             
  nop                                                  #  62    0xb7255  1      OPC=nop             
  nop                                                  #  63    0xb7256  1      OPC=nop             
  nop                                                  #  64    0xb7257  1      OPC=nop             
  nop                                                  #  65    0xb7258  1      OPC=nop             
  nop                                                  #  66    0xb7259  1      OPC=nop             
  nop                                                  #  67    0xb725a  1      OPC=nop             
  nop                                                  #  68    0xb725b  1      OPC=nop             
  nop                                                  #  69    0xb725c  1      OPC=nop             
  nop                                                  #  70    0xb725d  1      OPC=nop             
  nop                                                  #  71    0xb725e  1      OPC=nop             
  nop                                                  #  72    0xb725f  1      OPC=nop             
  nop                                                  #  73    0xb7260  1      OPC=nop             
  nop                                                  #  74    0xb7261  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb7262  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0xb7267  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0xb726b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0xb726d  1      OPC=nop             
  nop                                                  #  79    0xb726e  1      OPC=nop             
  nop                                                  #  80    0xb726f  1      OPC=nop             
  nop                                                  #  81    0xb7270  1      OPC=nop             
  nop                                                  #  82    0xb7271  1      OPC=nop             
  nop                                                  #  83    0xb7272  1      OPC=nop             
  nop                                                  #  84    0xb7273  1      OPC=nop             
  nop                                                  #  85    0xb7274  1      OPC=nop             
  nop                                                  #  86    0xb7275  1      OPC=nop             
  nop                                                  #  87    0xb7276  1      OPC=nop             
  nop                                                  #  88    0xb7277  1      OPC=nop             
  nop                                                  #  89    0xb7278  1      OPC=nop             
  nop                                                  #  90    0xb7279  1      OPC=nop             
  nop                                                  #  91    0xb727a  1      OPC=nop             
  nop                                                  #  92    0xb727b  1      OPC=nop             
  nop                                                  #  93    0xb727c  1      OPC=nop             
  nop                                                  #  94    0xb727d  1      OPC=nop             
  nop                                                  #  95    0xb727e  1      OPC=nop             
  nop                                                  #  96    0xb727f  1      OPC=nop             
  nop                                                  #  97    0xb7280  1      OPC=nop             
  nop                                                  #  98    0xb7281  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0xb7282  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1Ej, .-_ZNSt8numpunctIwEC1Ej

