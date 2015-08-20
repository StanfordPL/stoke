  .text
  .globl _ZNSt16__numpunct_cacheIcED2Ev
  .type _ZNSt16__numpunct_cacheIcED2Ev, @function

#! file-offset 0xbbda0
#! rip-offset  0x7bda0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcED2Ev:   #        0x7bda0  0      OPC=<label>         
  pushq %rbx                       #  1     0x7bda0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x7bda1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0x7bda3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7bda5  6      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0x7bdab  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7bdad  8      OPC=movl_m32_imm32  
  je .L_7be20                      #  7     0x7bdb5  2      OPC=je_label        
  movl %ebx, %ebx                  #  8     0x7bdb7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  9     0x7bdb9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                   #  10    0x7bdbe  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                 #  11    0x7bdc0  3      OPC=testq_r64_r64   
  je .L_7bde0                      #  12    0x7bdc3  2      OPC=je_label        
  nop                              #  13    0x7bdc5  1      OPC=nop             
  nop                              #  14    0x7bdc6  1      OPC=nop             
  nop                              #  15    0x7bdc7  1      OPC=nop             
  nop                              #  16    0x7bdc8  1      OPC=nop             
  nop                              #  17    0x7bdc9  1      OPC=nop             
  nop                              #  18    0x7bdca  1      OPC=nop             
  nop                              #  19    0x7bdcb  1      OPC=nop             
  nop                              #  20    0x7bdcc  1      OPC=nop             
  nop                              #  21    0x7bdcd  1      OPC=nop             
  nop                              #  22    0x7bdce  1      OPC=nop             
  nop                              #  23    0x7bdcf  1      OPC=nop             
  nop                              #  24    0x7bdd0  1      OPC=nop             
  nop                              #  25    0x7bdd1  1      OPC=nop             
  nop                              #  26    0x7bdd2  1      OPC=nop             
  nop                              #  27    0x7bdd3  1      OPC=nop             
  nop                              #  28    0x7bdd4  1      OPC=nop             
  nop                              #  29    0x7bdd5  1      OPC=nop             
  nop                              #  30    0x7bdd6  1      OPC=nop             
  nop                              #  31    0x7bdd7  1      OPC=nop             
  nop                              #  32    0x7bdd8  1      OPC=nop             
  nop                              #  33    0x7bdd9  1      OPC=nop             
  nop                              #  34    0x7bdda  1      OPC=nop             
  callq ._ZdaPv                    #  35    0x7bddb  5      OPC=callq_label     
.L_7bde0:                          #        0x7bde0  0      OPC=<label>         
  movl %ebx, %ebx                  #  36    0x7bde0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  37    0x7bde2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  38    0x7bde7  3      OPC=testq_r64_r64   
  je .L_7be00                      #  39    0x7bdea  2      OPC=je_label        
  nop                              #  40    0x7bdec  1      OPC=nop             
  nop                              #  41    0x7bded  1      OPC=nop             
  nop                              #  42    0x7bdee  1      OPC=nop             
  nop                              #  43    0x7bdef  1      OPC=nop             
  nop                              #  44    0x7bdf0  1      OPC=nop             
  nop                              #  45    0x7bdf1  1      OPC=nop             
  nop                              #  46    0x7bdf2  1      OPC=nop             
  nop                              #  47    0x7bdf3  1      OPC=nop             
  nop                              #  48    0x7bdf4  1      OPC=nop             
  nop                              #  49    0x7bdf5  1      OPC=nop             
  nop                              #  50    0x7bdf6  1      OPC=nop             
  nop                              #  51    0x7bdf7  1      OPC=nop             
  nop                              #  52    0x7bdf8  1      OPC=nop             
  nop                              #  53    0x7bdf9  1      OPC=nop             
  nop                              #  54    0x7bdfa  1      OPC=nop             
  callq ._ZdaPv                    #  55    0x7bdfb  5      OPC=callq_label     
.L_7be00:                          #        0x7be00  0      OPC=<label>         
  movl %ebx, %ebx                  #  56    0x7be00  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  57    0x7be02  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  58    0x7be07  3      OPC=testq_r64_r64   
  je .L_7be20                      #  59    0x7be0a  2      OPC=je_label        
  nop                              #  60    0x7be0c  1      OPC=nop             
  nop                              #  61    0x7be0d  1      OPC=nop             
  nop                              #  62    0x7be0e  1      OPC=nop             
  nop                              #  63    0x7be0f  1      OPC=nop             
  nop                              #  64    0x7be10  1      OPC=nop             
  nop                              #  65    0x7be11  1      OPC=nop             
  nop                              #  66    0x7be12  1      OPC=nop             
  nop                              #  67    0x7be13  1      OPC=nop             
  nop                              #  68    0x7be14  1      OPC=nop             
  nop                              #  69    0x7be15  1      OPC=nop             
  nop                              #  70    0x7be16  1      OPC=nop             
  nop                              #  71    0x7be17  1      OPC=nop             
  nop                              #  72    0x7be18  1      OPC=nop             
  nop                              #  73    0x7be19  1      OPC=nop             
  nop                              #  74    0x7be1a  1      OPC=nop             
  callq ._ZdaPv                    #  75    0x7be1b  5      OPC=callq_label     
.L_7be20:                          #        0x7be20  0      OPC=<label>         
  movl %ebx, %edi                  #  76    0x7be20  2      OPC=movl_r32_r32    
  popq %rbx                        #  77    0x7be22  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  78    0x7be23  5      OPC=jmpq_label_1    
  nop                              #  79    0x7be28  1      OPC=nop             
  nop                              #  80    0x7be29  1      OPC=nop             
  nop                              #  81    0x7be2a  1      OPC=nop             
  nop                              #  82    0x7be2b  1      OPC=nop             
  nop                              #  83    0x7be2c  1      OPC=nop             
  nop                              #  84    0x7be2d  1      OPC=nop             
  nop                              #  85    0x7be2e  1      OPC=nop             
  nop                              #  86    0x7be2f  1      OPC=nop             
  nop                              #  87    0x7be30  1      OPC=nop             
  nop                              #  88    0x7be31  1      OPC=nop             
  nop                              #  89    0x7be32  1      OPC=nop             
  nop                              #  90    0x7be33  1      OPC=nop             
  nop                              #  91    0x7be34  1      OPC=nop             
  nop                              #  92    0x7be35  1      OPC=nop             
  nop                              #  93    0x7be36  1      OPC=nop             
  nop                              #  94    0x7be37  1      OPC=nop             
  nop                              #  95    0x7be38  1      OPC=nop             
  nop                              #  96    0x7be39  1      OPC=nop             
  nop                              #  97    0x7be3a  1      OPC=nop             
  nop                              #  98    0x7be3b  1      OPC=nop             
  nop                              #  99    0x7be3c  1      OPC=nop             
  nop                              #  100   0x7be3d  1      OPC=nop             
  nop                              #  101   0x7be3e  1      OPC=nop             
  nop                              #  102   0x7be3f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcED2Ev, .-_ZNSt16__numpunct_cacheIcED2Ev

