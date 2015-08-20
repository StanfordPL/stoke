  .text
  .globl _ZNSt8ios_baseD2Ev
  .type _ZNSt8ios_baseD2Ev, @function

#! file-offset 0x1286a0
#! rip-offset  0xe86a0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_baseD2Ev:                                   #        0xe86a0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xe86a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xe86a1  2      OPC=movl_r32_r32    
  xorl %esi, %esi                                      #  3     0xe86a3  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                      #  4     0xe86a5  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  5     0xe86a7  2      OPC=movl_r32_r32    
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe86a9  8      OPC=movl_m32_imm32  
  nop                                                  #  7     0xe86b1  1      OPC=nop             
  nop                                                  #  8     0xe86b2  1      OPC=nop             
  nop                                                  #  9     0xe86b3  1      OPC=nop             
  nop                                                  #  10    0xe86b4  1      OPC=nop             
  nop                                                  #  11    0xe86b5  1      OPC=nop             
  nop                                                  #  12    0xe86b6  1      OPC=nop             
  nop                                                  #  13    0xe86b7  1      OPC=nop             
  nop                                                  #  14    0xe86b8  1      OPC=nop             
  nop                                                  #  15    0xe86b9  1      OPC=nop             
  nop                                                  #  16    0xe86ba  1      OPC=nop             
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe86bb  5      OPC=callq_label     
  movl %ebx, %edi                                      #  18    0xe86c0  2      OPC=movl_r32_r32    
  nop                                                  #  19    0xe86c2  1      OPC=nop             
  nop                                                  #  20    0xe86c3  1      OPC=nop             
  nop                                                  #  21    0xe86c4  1      OPC=nop             
  nop                                                  #  22    0xe86c5  1      OPC=nop             
  nop                                                  #  23    0xe86c6  1      OPC=nop             
  nop                                                  #  24    0xe86c7  1      OPC=nop             
  nop                                                  #  25    0xe86c8  1      OPC=nop             
  nop                                                  #  26    0xe86c9  1      OPC=nop             
  nop                                                  #  27    0xe86ca  1      OPC=nop             
  nop                                                  #  28    0xe86cb  1      OPC=nop             
  nop                                                  #  29    0xe86cc  1      OPC=nop             
  nop                                                  #  30    0xe86cd  1      OPC=nop             
  nop                                                  #  31    0xe86ce  1      OPC=nop             
  nop                                                  #  32    0xe86cf  1      OPC=nop             
  nop                                                  #  33    0xe86d0  1      OPC=nop             
  nop                                                  #  34    0xe86d1  1      OPC=nop             
  nop                                                  #  35    0xe86d2  1      OPC=nop             
  nop                                                  #  36    0xe86d3  1      OPC=nop             
  nop                                                  #  37    0xe86d4  1      OPC=nop             
  nop                                                  #  38    0xe86d5  1      OPC=nop             
  nop                                                  #  39    0xe86d6  1      OPC=nop             
  nop                                                  #  40    0xe86d7  1      OPC=nop             
  nop                                                  #  41    0xe86d8  1      OPC=nop             
  nop                                                  #  42    0xe86d9  1      OPC=nop             
  nop                                                  #  43    0xe86da  1      OPC=nop             
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe86db  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  45    0xe86e0  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe86e2  5      OPC=movl_r32_m32    
  leal 0x24(%rbx), %eax                                #  47    0xe86e7  3      OPC=leal_r32_m16    
  cmpl %edi, %eax                                      #  48    0xe86ea  2      OPC=cmpl_r32_r32    
  je .L_e8720                                          #  49    0xe86ec  2      OPC=je_label        
  testq %rdi, %rdi                                     #  50    0xe86ee  3      OPC=testq_r64_r64   
  je .L_e8700                                          #  51    0xe86f1  2      OPC=je_label        
  nop                                                  #  52    0xe86f3  1      OPC=nop             
  nop                                                  #  53    0xe86f4  1      OPC=nop             
  nop                                                  #  54    0xe86f5  1      OPC=nop             
  nop                                                  #  55    0xe86f6  1      OPC=nop             
  nop                                                  #  56    0xe86f7  1      OPC=nop             
  nop                                                  #  57    0xe86f8  1      OPC=nop             
  nop                                                  #  58    0xe86f9  1      OPC=nop             
  nop                                                  #  59    0xe86fa  1      OPC=nop             
  callq ._ZdaPv                                        #  60    0xe86fb  5      OPC=callq_label     
.L_e8700:                                              #        0xe8700  0      OPC=<label>         
  movl %ebx, %ebx                                      #  61    0xe8700  2      OPC=movl_r32_r32    
  movl $0x0, 0x68(%r15,%rbx,1)                         #  62    0xe8702  9      OPC=movl_m32_imm32  
  nop                                                  #  63    0xe870b  1      OPC=nop             
  nop                                                  #  64    0xe870c  1      OPC=nop             
  nop                                                  #  65    0xe870d  1      OPC=nop             
  nop                                                  #  66    0xe870e  1      OPC=nop             
  nop                                                  #  67    0xe870f  1      OPC=nop             
  nop                                                  #  68    0xe8710  1      OPC=nop             
  nop                                                  #  69    0xe8711  1      OPC=nop             
  nop                                                  #  70    0xe8712  1      OPC=nop             
  nop                                                  #  71    0xe8713  1      OPC=nop             
  nop                                                  #  72    0xe8714  1      OPC=nop             
  nop                                                  #  73    0xe8715  1      OPC=nop             
  nop                                                  #  74    0xe8716  1      OPC=nop             
  nop                                                  #  75    0xe8717  1      OPC=nop             
  nop                                                  #  76    0xe8718  1      OPC=nop             
  nop                                                  #  77    0xe8719  1      OPC=nop             
  nop                                                  #  78    0xe871a  1      OPC=nop             
  nop                                                  #  79    0xe871b  1      OPC=nop             
  nop                                                  #  80    0xe871c  1      OPC=nop             
  nop                                                  #  81    0xe871d  1      OPC=nop             
  nop                                                  #  82    0xe871e  1      OPC=nop             
  nop                                                  #  83    0xe871f  1      OPC=nop             
.L_e8720:                                              #        0xe8720  0      OPC=<label>         
  leal 0x6c(%rbx), %edi                                #  84    0xe8720  3      OPC=leal_r32_m16    
  popq %rbx                                            #  85    0xe8723  1      OPC=popq_r64_1      
  jmpq ._ZNSt6localeD1Ev                               #  86    0xe8724  5      OPC=jmpq_label_1    
  nop                                                  #  87    0xe8729  1      OPC=nop             
  nop                                                  #  88    0xe872a  1      OPC=nop             
  nop                                                  #  89    0xe872b  1      OPC=nop             
  nop                                                  #  90    0xe872c  1      OPC=nop             
  nop                                                  #  91    0xe872d  1      OPC=nop             
  nop                                                  #  92    0xe872e  1      OPC=nop             
  nop                                                  #  93    0xe872f  1      OPC=nop             
  nop                                                  #  94    0xe8730  1      OPC=nop             
  nop                                                  #  95    0xe8731  1      OPC=nop             
  nop                                                  #  96    0xe8732  1      OPC=nop             
  nop                                                  #  97    0xe8733  1      OPC=nop             
  nop                                                  #  98    0xe8734  1      OPC=nop             
  nop                                                  #  99    0xe8735  1      OPC=nop             
  nop                                                  #  100   0xe8736  1      OPC=nop             
  nop                                                  #  101   0xe8737  1      OPC=nop             
  nop                                                  #  102   0xe8738  1      OPC=nop             
  nop                                                  #  103   0xe8739  1      OPC=nop             
  nop                                                  #  104   0xe873a  1      OPC=nop             
  nop                                                  #  105   0xe873b  1      OPC=nop             
  nop                                                  #  106   0xe873c  1      OPC=nop             
  nop                                                  #  107   0xe873d  1      OPC=nop             
  nop                                                  #  108   0xe873e  1      OPC=nop             
  nop                                                  #  109   0xe873f  1      OPC=nop             
                                                                                                    
.size _ZNSt8ios_baseD2Ev, .-_ZNSt8ios_baseD2Ev

