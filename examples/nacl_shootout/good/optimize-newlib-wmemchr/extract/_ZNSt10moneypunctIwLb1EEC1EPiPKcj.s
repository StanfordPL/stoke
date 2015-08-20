  .text
  .globl _ZNSt10moneypunctIwLb1EEC1EPiPKcj
  .type _ZNSt10moneypunctIwLb1EEC1EPiPKcj, @function

#! file-offset 0xf7200
#! rip-offset  0xb7200
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1EPiPKcj:                                #        0xb7200  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7200  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7201  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7203  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb7205  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb7207  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb7209  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb720b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb720e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb7211  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb7213  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  11    0xb7215  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb721d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7220  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7222  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb722b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb722d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7232  1      OPC=nop             
  nop                                                              #  18    0xb7233  1      OPC=nop             
  nop                                                              #  19    0xb7234  1      OPC=nop             
  nop                                                              #  20    0xb7235  1      OPC=nop             
  nop                                                              #  21    0xb7236  1      OPC=nop             
  nop                                                              #  22    0xb7237  1      OPC=nop             
  nop                                                              #  23    0xb7238  1      OPC=nop             
  nop                                                              #  24    0xb7239  1      OPC=nop             
  nop                                                              #  25    0xb723a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb723b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7240  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7243  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7246  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7247  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7249  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7250  1      OPC=nop             
  nop                                                              #  33    0xb7251  1      OPC=nop             
  nop                                                              #  34    0xb7252  1      OPC=nop             
  nop                                                              #  35    0xb7253  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7254  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7257  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb725a  1      OPC=nop             
  nop                                                              #  39    0xb725b  1      OPC=nop             
  nop                                                              #  40    0xb725c  1      OPC=nop             
  nop                                                              #  41    0xb725d  1      OPC=nop             
  nop                                                              #  42    0xb725e  1      OPC=nop             
  nop                                                              #  43    0xb725f  1      OPC=nop             
  nop                                                              #  44    0xb7260  1      OPC=nop             
  nop                                                              #  45    0xb7261  1      OPC=nop             
  nop                                                              #  46    0xb7262  1      OPC=nop             
  nop                                                              #  47    0xb7263  1      OPC=nop             
  nop                                                              #  48    0xb7264  1      OPC=nop             
  nop                                                              #  49    0xb7265  1      OPC=nop             
  nop                                                              #  50    0xb7266  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7267  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7269  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb726d  1      OPC=nop             
  nop                                                              #  54    0xb726e  1      OPC=nop             
  nop                                                              #  55    0xb726f  1      OPC=nop             
  nop                                                              #  56    0xb7270  1      OPC=nop             
  nop                                                              #  57    0xb7271  1      OPC=nop             
  nop                                                              #  58    0xb7272  1      OPC=nop             
  nop                                                              #  59    0xb7273  1      OPC=nop             
  nop                                                              #  60    0xb7274  1      OPC=nop             
  nop                                                              #  61    0xb7275  1      OPC=nop             
  nop                                                              #  62    0xb7276  1      OPC=nop             
  nop                                                              #  63    0xb7277  1      OPC=nop             
  nop                                                              #  64    0xb7278  1      OPC=nop             
  nop                                                              #  65    0xb7279  1      OPC=nop             
  nop                                                              #  66    0xb727a  1      OPC=nop             
  nop                                                              #  67    0xb727b  1      OPC=nop             
  nop                                                              #  68    0xb727c  1      OPC=nop             
  nop                                                              #  69    0xb727d  1      OPC=nop             
  nop                                                              #  70    0xb727e  1      OPC=nop             
  nop                                                              #  71    0xb727f  1      OPC=nop             
  nop                                                              #  72    0xb7280  1      OPC=nop             
  nop                                                              #  73    0xb7281  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7282  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7287  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb728b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb728d  1      OPC=nop             
  nop                                                              #  78    0xb728e  1      OPC=nop             
  nop                                                              #  79    0xb728f  1      OPC=nop             
  nop                                                              #  80    0xb7290  1      OPC=nop             
  nop                                                              #  81    0xb7291  1      OPC=nop             
  nop                                                              #  82    0xb7292  1      OPC=nop             
  nop                                                              #  83    0xb7293  1      OPC=nop             
  nop                                                              #  84    0xb7294  1      OPC=nop             
  nop                                                              #  85    0xb7295  1      OPC=nop             
  nop                                                              #  86    0xb7296  1      OPC=nop             
  nop                                                              #  87    0xb7297  1      OPC=nop             
  nop                                                              #  88    0xb7298  1      OPC=nop             
  nop                                                              #  89    0xb7299  1      OPC=nop             
  nop                                                              #  90    0xb729a  1      OPC=nop             
  nop                                                              #  91    0xb729b  1      OPC=nop             
  nop                                                              #  92    0xb729c  1      OPC=nop             
  nop                                                              #  93    0xb729d  1      OPC=nop             
  nop                                                              #  94    0xb729e  1      OPC=nop             
  nop                                                              #  95    0xb729f  1      OPC=nop             
  nop                                                              #  96    0xb72a0  1      OPC=nop             
  nop                                                              #  97    0xb72a1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb72a2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1EPiPKcj, .-_ZNSt10moneypunctIwLb1EEC1EPiPKcj

