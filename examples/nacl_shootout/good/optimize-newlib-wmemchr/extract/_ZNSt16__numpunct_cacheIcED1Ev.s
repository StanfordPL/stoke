  .text
  .globl _ZNSt16__numpunct_cacheIcED1Ev
  .type _ZNSt16__numpunct_cacheIcED1Ev, @function

#! file-offset 0xbbd00
#! rip-offset  0x7bd00
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcED1Ev:   #        0x7bd00  0      OPC=<label>         
  pushq %rbx                       #  1     0x7bd00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x7bd01  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0x7bd03  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7bd05  6      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0x7bd0b  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7bd0d  8      OPC=movl_m32_imm32  
  je .L_7bd80                      #  7     0x7bd15  2      OPC=je_label        
  movl %ebx, %ebx                  #  8     0x7bd17  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  9     0x7bd19  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                   #  10    0x7bd1e  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                 #  11    0x7bd20  3      OPC=testq_r64_r64   
  je .L_7bd40                      #  12    0x7bd23  2      OPC=je_label        
  nop                              #  13    0x7bd25  1      OPC=nop             
  nop                              #  14    0x7bd26  1      OPC=nop             
  nop                              #  15    0x7bd27  1      OPC=nop             
  nop                              #  16    0x7bd28  1      OPC=nop             
  nop                              #  17    0x7bd29  1      OPC=nop             
  nop                              #  18    0x7bd2a  1      OPC=nop             
  nop                              #  19    0x7bd2b  1      OPC=nop             
  nop                              #  20    0x7bd2c  1      OPC=nop             
  nop                              #  21    0x7bd2d  1      OPC=nop             
  nop                              #  22    0x7bd2e  1      OPC=nop             
  nop                              #  23    0x7bd2f  1      OPC=nop             
  nop                              #  24    0x7bd30  1      OPC=nop             
  nop                              #  25    0x7bd31  1      OPC=nop             
  nop                              #  26    0x7bd32  1      OPC=nop             
  nop                              #  27    0x7bd33  1      OPC=nop             
  nop                              #  28    0x7bd34  1      OPC=nop             
  nop                              #  29    0x7bd35  1      OPC=nop             
  nop                              #  30    0x7bd36  1      OPC=nop             
  nop                              #  31    0x7bd37  1      OPC=nop             
  nop                              #  32    0x7bd38  1      OPC=nop             
  nop                              #  33    0x7bd39  1      OPC=nop             
  nop                              #  34    0x7bd3a  1      OPC=nop             
  callq ._ZdaPv                    #  35    0x7bd3b  5      OPC=callq_label     
.L_7bd40:                          #        0x7bd40  0      OPC=<label>         
  movl %ebx, %ebx                  #  36    0x7bd40  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  37    0x7bd42  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  38    0x7bd47  3      OPC=testq_r64_r64   
  je .L_7bd60                      #  39    0x7bd4a  2      OPC=je_label        
  nop                              #  40    0x7bd4c  1      OPC=nop             
  nop                              #  41    0x7bd4d  1      OPC=nop             
  nop                              #  42    0x7bd4e  1      OPC=nop             
  nop                              #  43    0x7bd4f  1      OPC=nop             
  nop                              #  44    0x7bd50  1      OPC=nop             
  nop                              #  45    0x7bd51  1      OPC=nop             
  nop                              #  46    0x7bd52  1      OPC=nop             
  nop                              #  47    0x7bd53  1      OPC=nop             
  nop                              #  48    0x7bd54  1      OPC=nop             
  nop                              #  49    0x7bd55  1      OPC=nop             
  nop                              #  50    0x7bd56  1      OPC=nop             
  nop                              #  51    0x7bd57  1      OPC=nop             
  nop                              #  52    0x7bd58  1      OPC=nop             
  nop                              #  53    0x7bd59  1      OPC=nop             
  nop                              #  54    0x7bd5a  1      OPC=nop             
  callq ._ZdaPv                    #  55    0x7bd5b  5      OPC=callq_label     
.L_7bd60:                          #        0x7bd60  0      OPC=<label>         
  movl %ebx, %ebx                  #  56    0x7bd60  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  57    0x7bd62  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  58    0x7bd67  3      OPC=testq_r64_r64   
  je .L_7bd80                      #  59    0x7bd6a  2      OPC=je_label        
  nop                              #  60    0x7bd6c  1      OPC=nop             
  nop                              #  61    0x7bd6d  1      OPC=nop             
  nop                              #  62    0x7bd6e  1      OPC=nop             
  nop                              #  63    0x7bd6f  1      OPC=nop             
  nop                              #  64    0x7bd70  1      OPC=nop             
  nop                              #  65    0x7bd71  1      OPC=nop             
  nop                              #  66    0x7bd72  1      OPC=nop             
  nop                              #  67    0x7bd73  1      OPC=nop             
  nop                              #  68    0x7bd74  1      OPC=nop             
  nop                              #  69    0x7bd75  1      OPC=nop             
  nop                              #  70    0x7bd76  1      OPC=nop             
  nop                              #  71    0x7bd77  1      OPC=nop             
  nop                              #  72    0x7bd78  1      OPC=nop             
  nop                              #  73    0x7bd79  1      OPC=nop             
  nop                              #  74    0x7bd7a  1      OPC=nop             
  callq ._ZdaPv                    #  75    0x7bd7b  5      OPC=callq_label     
.L_7bd80:                          #        0x7bd80  0      OPC=<label>         
  movl %ebx, %edi                  #  76    0x7bd80  2      OPC=movl_r32_r32    
  popq %rbx                        #  77    0x7bd82  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  78    0x7bd83  5      OPC=jmpq_label_1    
  nop                              #  79    0x7bd88  1      OPC=nop             
  nop                              #  80    0x7bd89  1      OPC=nop             
  nop                              #  81    0x7bd8a  1      OPC=nop             
  nop                              #  82    0x7bd8b  1      OPC=nop             
  nop                              #  83    0x7bd8c  1      OPC=nop             
  nop                              #  84    0x7bd8d  1      OPC=nop             
  nop                              #  85    0x7bd8e  1      OPC=nop             
  nop                              #  86    0x7bd8f  1      OPC=nop             
  nop                              #  87    0x7bd90  1      OPC=nop             
  nop                              #  88    0x7bd91  1      OPC=nop             
  nop                              #  89    0x7bd92  1      OPC=nop             
  nop                              #  90    0x7bd93  1      OPC=nop             
  nop                              #  91    0x7bd94  1      OPC=nop             
  nop                              #  92    0x7bd95  1      OPC=nop             
  nop                              #  93    0x7bd96  1      OPC=nop             
  nop                              #  94    0x7bd97  1      OPC=nop             
  nop                              #  95    0x7bd98  1      OPC=nop             
  nop                              #  96    0x7bd99  1      OPC=nop             
  nop                              #  97    0x7bd9a  1      OPC=nop             
  nop                              #  98    0x7bd9b  1      OPC=nop             
  nop                              #  99    0x7bd9c  1      OPC=nop             
  nop                              #  100   0x7bd9d  1      OPC=nop             
  nop                              #  101   0x7bd9e  1      OPC=nop             
  nop                              #  102   0x7bd9f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcED1Ev, .-_ZNSt16__numpunct_cacheIcED1Ev

