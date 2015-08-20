  .text
  .globl _ZNSt8ios_baseD1Ev
  .type _ZNSt8ios_baseD1Ev, @function

#! file-offset 0x128600
#! rip-offset  0xe8600
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_baseD1Ev:                                   #        0xe8600  0      OPC=<label>         
  pushq %rbx                                           #  1     0xe8600  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xe8601  2      OPC=movl_r32_r32    
  xorl %esi, %esi                                      #  3     0xe8603  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                      #  4     0xe8605  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  5     0xe8607  2      OPC=movl_r32_r32    
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe8609  8      OPC=movl_m32_imm32  
  nop                                                  #  7     0xe8611  1      OPC=nop             
  nop                                                  #  8     0xe8612  1      OPC=nop             
  nop                                                  #  9     0xe8613  1      OPC=nop             
  nop                                                  #  10    0xe8614  1      OPC=nop             
  nop                                                  #  11    0xe8615  1      OPC=nop             
  nop                                                  #  12    0xe8616  1      OPC=nop             
  nop                                                  #  13    0xe8617  1      OPC=nop             
  nop                                                  #  14    0xe8618  1      OPC=nop             
  nop                                                  #  15    0xe8619  1      OPC=nop             
  nop                                                  #  16    0xe861a  1      OPC=nop             
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe861b  5      OPC=callq_label     
  movl %ebx, %edi                                      #  18    0xe8620  2      OPC=movl_r32_r32    
  nop                                                  #  19    0xe8622  1      OPC=nop             
  nop                                                  #  20    0xe8623  1      OPC=nop             
  nop                                                  #  21    0xe8624  1      OPC=nop             
  nop                                                  #  22    0xe8625  1      OPC=nop             
  nop                                                  #  23    0xe8626  1      OPC=nop             
  nop                                                  #  24    0xe8627  1      OPC=nop             
  nop                                                  #  25    0xe8628  1      OPC=nop             
  nop                                                  #  26    0xe8629  1      OPC=nop             
  nop                                                  #  27    0xe862a  1      OPC=nop             
  nop                                                  #  28    0xe862b  1      OPC=nop             
  nop                                                  #  29    0xe862c  1      OPC=nop             
  nop                                                  #  30    0xe862d  1      OPC=nop             
  nop                                                  #  31    0xe862e  1      OPC=nop             
  nop                                                  #  32    0xe862f  1      OPC=nop             
  nop                                                  #  33    0xe8630  1      OPC=nop             
  nop                                                  #  34    0xe8631  1      OPC=nop             
  nop                                                  #  35    0xe8632  1      OPC=nop             
  nop                                                  #  36    0xe8633  1      OPC=nop             
  nop                                                  #  37    0xe8634  1      OPC=nop             
  nop                                                  #  38    0xe8635  1      OPC=nop             
  nop                                                  #  39    0xe8636  1      OPC=nop             
  nop                                                  #  40    0xe8637  1      OPC=nop             
  nop                                                  #  41    0xe8638  1      OPC=nop             
  nop                                                  #  42    0xe8639  1      OPC=nop             
  nop                                                  #  43    0xe863a  1      OPC=nop             
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe863b  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  45    0xe8640  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe8642  5      OPC=movl_r32_m32    
  leal 0x24(%rbx), %eax                                #  47    0xe8647  3      OPC=leal_r32_m16    
  cmpl %edi, %eax                                      #  48    0xe864a  2      OPC=cmpl_r32_r32    
  je .L_e8680                                          #  49    0xe864c  2      OPC=je_label        
  testq %rdi, %rdi                                     #  50    0xe864e  3      OPC=testq_r64_r64   
  je .L_e8660                                          #  51    0xe8651  2      OPC=je_label        
  nop                                                  #  52    0xe8653  1      OPC=nop             
  nop                                                  #  53    0xe8654  1      OPC=nop             
  nop                                                  #  54    0xe8655  1      OPC=nop             
  nop                                                  #  55    0xe8656  1      OPC=nop             
  nop                                                  #  56    0xe8657  1      OPC=nop             
  nop                                                  #  57    0xe8658  1      OPC=nop             
  nop                                                  #  58    0xe8659  1      OPC=nop             
  nop                                                  #  59    0xe865a  1      OPC=nop             
  callq ._ZdaPv                                        #  60    0xe865b  5      OPC=callq_label     
.L_e8660:                                              #        0xe8660  0      OPC=<label>         
  movl %ebx, %ebx                                      #  61    0xe8660  2      OPC=movl_r32_r32    
  movl $0x0, 0x68(%r15,%rbx,1)                         #  62    0xe8662  9      OPC=movl_m32_imm32  
  nop                                                  #  63    0xe866b  1      OPC=nop             
  nop                                                  #  64    0xe866c  1      OPC=nop             
  nop                                                  #  65    0xe866d  1      OPC=nop             
  nop                                                  #  66    0xe866e  1      OPC=nop             
  nop                                                  #  67    0xe866f  1      OPC=nop             
  nop                                                  #  68    0xe8670  1      OPC=nop             
  nop                                                  #  69    0xe8671  1      OPC=nop             
  nop                                                  #  70    0xe8672  1      OPC=nop             
  nop                                                  #  71    0xe8673  1      OPC=nop             
  nop                                                  #  72    0xe8674  1      OPC=nop             
  nop                                                  #  73    0xe8675  1      OPC=nop             
  nop                                                  #  74    0xe8676  1      OPC=nop             
  nop                                                  #  75    0xe8677  1      OPC=nop             
  nop                                                  #  76    0xe8678  1      OPC=nop             
  nop                                                  #  77    0xe8679  1      OPC=nop             
  nop                                                  #  78    0xe867a  1      OPC=nop             
  nop                                                  #  79    0xe867b  1      OPC=nop             
  nop                                                  #  80    0xe867c  1      OPC=nop             
  nop                                                  #  81    0xe867d  1      OPC=nop             
  nop                                                  #  82    0xe867e  1      OPC=nop             
  nop                                                  #  83    0xe867f  1      OPC=nop             
.L_e8680:                                              #        0xe8680  0      OPC=<label>         
  leal 0x6c(%rbx), %edi                                #  84    0xe8680  3      OPC=leal_r32_m16    
  popq %rbx                                            #  85    0xe8683  1      OPC=popq_r64_1      
  jmpq ._ZNSt6localeD1Ev                               #  86    0xe8684  5      OPC=jmpq_label_1    
  nop                                                  #  87    0xe8689  1      OPC=nop             
  nop                                                  #  88    0xe868a  1      OPC=nop             
  nop                                                  #  89    0xe868b  1      OPC=nop             
  nop                                                  #  90    0xe868c  1      OPC=nop             
  nop                                                  #  91    0xe868d  1      OPC=nop             
  nop                                                  #  92    0xe868e  1      OPC=nop             
  nop                                                  #  93    0xe868f  1      OPC=nop             
  nop                                                  #  94    0xe8690  1      OPC=nop             
  nop                                                  #  95    0xe8691  1      OPC=nop             
  nop                                                  #  96    0xe8692  1      OPC=nop             
  nop                                                  #  97    0xe8693  1      OPC=nop             
  nop                                                  #  98    0xe8694  1      OPC=nop             
  nop                                                  #  99    0xe8695  1      OPC=nop             
  nop                                                  #  100   0xe8696  1      OPC=nop             
  nop                                                  #  101   0xe8697  1      OPC=nop             
  nop                                                  #  102   0xe8698  1      OPC=nop             
  nop                                                  #  103   0xe8699  1      OPC=nop             
  nop                                                  #  104   0xe869a  1      OPC=nop             
  nop                                                  #  105   0xe869b  1      OPC=nop             
  nop                                                  #  106   0xe869c  1      OPC=nop             
  nop                                                  #  107   0xe869d  1      OPC=nop             
  nop                                                  #  108   0xe869e  1      OPC=nop             
  nop                                                  #  109   0xe869f  1      OPC=nop             
                                                                                                    
.size _ZNSt8ios_baseD1Ev, .-_ZNSt8ios_baseD1Ev

