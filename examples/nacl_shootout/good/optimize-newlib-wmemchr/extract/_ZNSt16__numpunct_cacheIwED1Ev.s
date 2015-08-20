  .text
  .globl _ZNSt16__numpunct_cacheIwED1Ev
  .type _ZNSt16__numpunct_cacheIwED1Ev, @function

#! file-offset 0xf4ac0
#! rip-offset  0xb4ac0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIwED1Ev:   #        0xb4ac0  0      OPC=<label>         
  pushq %rbx                       #  1     0xb4ac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xb4ac1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0xb4ac3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x124(%r15,%rbx,1)    #  4     0xb4ac5  9      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0xb4ace  2      OPC=movl_r32_r32    
  movl $0x1003be58, (%r15,%rbx,1)  #  6     0xb4ad0  8      OPC=movl_m32_imm32  
  je .L_b4b40                      #  7     0xb4ad8  2      OPC=je_label        
  nop                              #  8     0xb4ada  1      OPC=nop             
  nop                              #  9     0xb4adb  1      OPC=nop             
  nop                              #  10    0xb4adc  1      OPC=nop             
  nop                              #  11    0xb4add  1      OPC=nop             
  nop                              #  12    0xb4ade  1      OPC=nop             
  nop                              #  13    0xb4adf  1      OPC=nop             
  movl %ebx, %ebx                  #  14    0xb4ae0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  15    0xb4ae2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  16    0xb4ae7  3      OPC=testq_r64_r64   
  je .L_b4b00                      #  17    0xb4aea  2      OPC=je_label        
  nop                              #  18    0xb4aec  1      OPC=nop             
  nop                              #  19    0xb4aed  1      OPC=nop             
  nop                              #  20    0xb4aee  1      OPC=nop             
  nop                              #  21    0xb4aef  1      OPC=nop             
  nop                              #  22    0xb4af0  1      OPC=nop             
  nop                              #  23    0xb4af1  1      OPC=nop             
  nop                              #  24    0xb4af2  1      OPC=nop             
  nop                              #  25    0xb4af3  1      OPC=nop             
  nop                              #  26    0xb4af4  1      OPC=nop             
  nop                              #  27    0xb4af5  1      OPC=nop             
  nop                              #  28    0xb4af6  1      OPC=nop             
  nop                              #  29    0xb4af7  1      OPC=nop             
  nop                              #  30    0xb4af8  1      OPC=nop             
  nop                              #  31    0xb4af9  1      OPC=nop             
  nop                              #  32    0xb4afa  1      OPC=nop             
  callq ._ZdaPv                    #  33    0xb4afb  5      OPC=callq_label     
.L_b4b00:                          #        0xb4b00  0      OPC=<label>         
  movl %ebx, %ebx                  #  34    0xb4b00  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  35    0xb4b02  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  36    0xb4b07  3      OPC=testq_r64_r64   
  je .L_b4b20                      #  37    0xb4b0a  2      OPC=je_label        
  nop                              #  38    0xb4b0c  1      OPC=nop             
  nop                              #  39    0xb4b0d  1      OPC=nop             
  nop                              #  40    0xb4b0e  1      OPC=nop             
  nop                              #  41    0xb4b0f  1      OPC=nop             
  nop                              #  42    0xb4b10  1      OPC=nop             
  nop                              #  43    0xb4b11  1      OPC=nop             
  nop                              #  44    0xb4b12  1      OPC=nop             
  nop                              #  45    0xb4b13  1      OPC=nop             
  nop                              #  46    0xb4b14  1      OPC=nop             
  nop                              #  47    0xb4b15  1      OPC=nop             
  nop                              #  48    0xb4b16  1      OPC=nop             
  nop                              #  49    0xb4b17  1      OPC=nop             
  nop                              #  50    0xb4b18  1      OPC=nop             
  nop                              #  51    0xb4b19  1      OPC=nop             
  nop                              #  52    0xb4b1a  1      OPC=nop             
  callq ._ZdaPv                    #  53    0xb4b1b  5      OPC=callq_label     
.L_b4b20:                          #        0xb4b20  0      OPC=<label>         
  movl %ebx, %ebx                  #  54    0xb4b20  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  55    0xb4b22  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  56    0xb4b27  3      OPC=testq_r64_r64   
  je .L_b4b40                      #  57    0xb4b2a  2      OPC=je_label        
  nop                              #  58    0xb4b2c  1      OPC=nop             
  nop                              #  59    0xb4b2d  1      OPC=nop             
  nop                              #  60    0xb4b2e  1      OPC=nop             
  nop                              #  61    0xb4b2f  1      OPC=nop             
  nop                              #  62    0xb4b30  1      OPC=nop             
  nop                              #  63    0xb4b31  1      OPC=nop             
  nop                              #  64    0xb4b32  1      OPC=nop             
  nop                              #  65    0xb4b33  1      OPC=nop             
  nop                              #  66    0xb4b34  1      OPC=nop             
  nop                              #  67    0xb4b35  1      OPC=nop             
  nop                              #  68    0xb4b36  1      OPC=nop             
  nop                              #  69    0xb4b37  1      OPC=nop             
  nop                              #  70    0xb4b38  1      OPC=nop             
  nop                              #  71    0xb4b39  1      OPC=nop             
  nop                              #  72    0xb4b3a  1      OPC=nop             
  callq ._ZdaPv                    #  73    0xb4b3b  5      OPC=callq_label     
.L_b4b40:                          #        0xb4b40  0      OPC=<label>         
  movl %ebx, %edi                  #  74    0xb4b40  2      OPC=movl_r32_r32    
  popq %rbx                        #  75    0xb4b42  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  76    0xb4b43  5      OPC=jmpq_label_1    
  nop                              #  77    0xb4b48  1      OPC=nop             
  nop                              #  78    0xb4b49  1      OPC=nop             
  nop                              #  79    0xb4b4a  1      OPC=nop             
  nop                              #  80    0xb4b4b  1      OPC=nop             
  nop                              #  81    0xb4b4c  1      OPC=nop             
  nop                              #  82    0xb4b4d  1      OPC=nop             
  nop                              #  83    0xb4b4e  1      OPC=nop             
  nop                              #  84    0xb4b4f  1      OPC=nop             
  nop                              #  85    0xb4b50  1      OPC=nop             
  nop                              #  86    0xb4b51  1      OPC=nop             
  nop                              #  87    0xb4b52  1      OPC=nop             
  nop                              #  88    0xb4b53  1      OPC=nop             
  nop                              #  89    0xb4b54  1      OPC=nop             
  nop                              #  90    0xb4b55  1      OPC=nop             
  nop                              #  91    0xb4b56  1      OPC=nop             
  nop                              #  92    0xb4b57  1      OPC=nop             
  nop                              #  93    0xb4b58  1      OPC=nop             
  nop                              #  94    0xb4b59  1      OPC=nop             
  nop                              #  95    0xb4b5a  1      OPC=nop             
  nop                              #  96    0xb4b5b  1      OPC=nop             
  nop                              #  97    0xb4b5c  1      OPC=nop             
  nop                              #  98    0xb4b5d  1      OPC=nop             
  nop                              #  99    0xb4b5e  1      OPC=nop             
  nop                              #  100   0xb4b5f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIwED1Ev, .-_ZNSt16__numpunct_cacheIwED1Ev

