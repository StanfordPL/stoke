  .text
  .globl _ZNSt16__numpunct_cacheIcED1Ev
  .type _ZNSt16__numpunct_cacheIcED1Ev, @function

#! file-offset 0xbc420
#! rip-offset  0x7c420
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcED1Ev:   #        0x7c420  0      OPC=<label>         
  pushq %rbx                       #  1     0x7c420  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x7c421  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0x7c423  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7c425  6      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0x7c42b  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7c42d  8      OPC=movl_m32_imm32  
  je .L_7c4a0                      #  7     0x7c435  2      OPC=je_label        
  movl %ebx, %ebx                  #  8     0x7c437  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  9     0x7c439  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                   #  10    0x7c43e  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                 #  11    0x7c440  3      OPC=testq_r64_r64   
  je .L_7c460                      #  12    0x7c443  2      OPC=je_label        
  nop                              #  13    0x7c445  1      OPC=nop             
  nop                              #  14    0x7c446  1      OPC=nop             
  nop                              #  15    0x7c447  1      OPC=nop             
  nop                              #  16    0x7c448  1      OPC=nop             
  nop                              #  17    0x7c449  1      OPC=nop             
  nop                              #  18    0x7c44a  1      OPC=nop             
  nop                              #  19    0x7c44b  1      OPC=nop             
  nop                              #  20    0x7c44c  1      OPC=nop             
  nop                              #  21    0x7c44d  1      OPC=nop             
  nop                              #  22    0x7c44e  1      OPC=nop             
  nop                              #  23    0x7c44f  1      OPC=nop             
  nop                              #  24    0x7c450  1      OPC=nop             
  nop                              #  25    0x7c451  1      OPC=nop             
  nop                              #  26    0x7c452  1      OPC=nop             
  nop                              #  27    0x7c453  1      OPC=nop             
  nop                              #  28    0x7c454  1      OPC=nop             
  nop                              #  29    0x7c455  1      OPC=nop             
  nop                              #  30    0x7c456  1      OPC=nop             
  nop                              #  31    0x7c457  1      OPC=nop             
  nop                              #  32    0x7c458  1      OPC=nop             
  nop                              #  33    0x7c459  1      OPC=nop             
  nop                              #  34    0x7c45a  1      OPC=nop             
  callq ._ZdaPv                    #  35    0x7c45b  5      OPC=callq_label     
.L_7c460:                          #        0x7c460  0      OPC=<label>         
  movl %ebx, %ebx                  #  36    0x7c460  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  37    0x7c462  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  38    0x7c467  3      OPC=testq_r64_r64   
  je .L_7c480                      #  39    0x7c46a  2      OPC=je_label        
  nop                              #  40    0x7c46c  1      OPC=nop             
  nop                              #  41    0x7c46d  1      OPC=nop             
  nop                              #  42    0x7c46e  1      OPC=nop             
  nop                              #  43    0x7c46f  1      OPC=nop             
  nop                              #  44    0x7c470  1      OPC=nop             
  nop                              #  45    0x7c471  1      OPC=nop             
  nop                              #  46    0x7c472  1      OPC=nop             
  nop                              #  47    0x7c473  1      OPC=nop             
  nop                              #  48    0x7c474  1      OPC=nop             
  nop                              #  49    0x7c475  1      OPC=nop             
  nop                              #  50    0x7c476  1      OPC=nop             
  nop                              #  51    0x7c477  1      OPC=nop             
  nop                              #  52    0x7c478  1      OPC=nop             
  nop                              #  53    0x7c479  1      OPC=nop             
  nop                              #  54    0x7c47a  1      OPC=nop             
  callq ._ZdaPv                    #  55    0x7c47b  5      OPC=callq_label     
.L_7c480:                          #        0x7c480  0      OPC=<label>         
  movl %ebx, %ebx                  #  56    0x7c480  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  57    0x7c482  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  58    0x7c487  3      OPC=testq_r64_r64   
  je .L_7c4a0                      #  59    0x7c48a  2      OPC=je_label        
  nop                              #  60    0x7c48c  1      OPC=nop             
  nop                              #  61    0x7c48d  1      OPC=nop             
  nop                              #  62    0x7c48e  1      OPC=nop             
  nop                              #  63    0x7c48f  1      OPC=nop             
  nop                              #  64    0x7c490  1      OPC=nop             
  nop                              #  65    0x7c491  1      OPC=nop             
  nop                              #  66    0x7c492  1      OPC=nop             
  nop                              #  67    0x7c493  1      OPC=nop             
  nop                              #  68    0x7c494  1      OPC=nop             
  nop                              #  69    0x7c495  1      OPC=nop             
  nop                              #  70    0x7c496  1      OPC=nop             
  nop                              #  71    0x7c497  1      OPC=nop             
  nop                              #  72    0x7c498  1      OPC=nop             
  nop                              #  73    0x7c499  1      OPC=nop             
  nop                              #  74    0x7c49a  1      OPC=nop             
  callq ._ZdaPv                    #  75    0x7c49b  5      OPC=callq_label     
.L_7c4a0:                          #        0x7c4a0  0      OPC=<label>         
  movl %ebx, %edi                  #  76    0x7c4a0  2      OPC=movl_r32_r32    
  popq %rbx                        #  77    0x7c4a2  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  78    0x7c4a3  5      OPC=jmpq_label_1    
  nop                              #  79    0x7c4a8  1      OPC=nop             
  nop                              #  80    0x7c4a9  1      OPC=nop             
  nop                              #  81    0x7c4aa  1      OPC=nop             
  nop                              #  82    0x7c4ab  1      OPC=nop             
  nop                              #  83    0x7c4ac  1      OPC=nop             
  nop                              #  84    0x7c4ad  1      OPC=nop             
  nop                              #  85    0x7c4ae  1      OPC=nop             
  nop                              #  86    0x7c4af  1      OPC=nop             
  nop                              #  87    0x7c4b0  1      OPC=nop             
  nop                              #  88    0x7c4b1  1      OPC=nop             
  nop                              #  89    0x7c4b2  1      OPC=nop             
  nop                              #  90    0x7c4b3  1      OPC=nop             
  nop                              #  91    0x7c4b4  1      OPC=nop             
  nop                              #  92    0x7c4b5  1      OPC=nop             
  nop                              #  93    0x7c4b6  1      OPC=nop             
  nop                              #  94    0x7c4b7  1      OPC=nop             
  nop                              #  95    0x7c4b8  1      OPC=nop             
  nop                              #  96    0x7c4b9  1      OPC=nop             
  nop                              #  97    0x7c4ba  1      OPC=nop             
  nop                              #  98    0x7c4bb  1      OPC=nop             
  nop                              #  99    0x7c4bc  1      OPC=nop             
  nop                              #  100   0x7c4bd  1      OPC=nop             
  nop                              #  101   0x7c4be  1      OPC=nop             
  nop                              #  102   0x7c4bf  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcED1Ev, .-_ZNSt16__numpunct_cacheIcED1Ev

