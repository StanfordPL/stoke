  .text
  .globl _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE
  .type _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE, @function

#! file-offset 0x9e960
#! rip-offset  0x5e960
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE:    #        0x5e960  0      OPC=<label>         
  pushq %r13                                                  #  1     0x5e960  2      OPC=pushq_r64_1     
  movl %edi, %r13d                                            #  2     0x5e962  3      OPC=movl_r32_r32    
  pushq %r12                                                  #  3     0x5e965  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                            #  4     0x5e967  3      OPC=movl_r32_r32    
  pushq %rbx                                                  #  5     0x5e96a  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                             #  6     0x5e96b  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                             #  7     0x5e96d  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                    #  8     0x5e96f  4      OPC=movl_r32_m32    
  testq %rdx, %rdx                                            #  9     0x5e973  3      OPC=testq_r64_r64   
  je .L_5e9c0                                                 #  10    0x5e976  2      OPC=je_label        
  nop                                                         #  11    0x5e978  1      OPC=nop             
  nop                                                         #  12    0x5e979  1      OPC=nop             
  nop                                                         #  13    0x5e97a  1      OPC=nop             
  nop                                                         #  14    0x5e97b  1      OPC=nop             
  nop                                                         #  15    0x5e97c  1      OPC=nop             
  nop                                                         #  16    0x5e97d  1      OPC=nop             
  nop                                                         #  17    0x5e97e  1      OPC=nop             
  nop                                                         #  18    0x5e97f  1      OPC=nop             
.L_5e980:                                                     #        0x5e980  0      OPC=<label>         
  addl $0x4, %ebx                                             #  19    0x5e980  3      OPC=addl_r32_imm8   
  movl %r12d, %esi                                            #  20    0x5e983  3      OPC=movl_r32_r32    
  movl %r13d, %edi                                            #  21    0x5e986  3      OPC=movl_r32_r32    
  nop                                                         #  22    0x5e989  1      OPC=nop             
  nop                                                         #  23    0x5e98a  1      OPC=nop             
  nop                                                         #  24    0x5e98b  1      OPC=nop             
  nop                                                         #  25    0x5e98c  1      OPC=nop             
  nop                                                         #  26    0x5e98d  1      OPC=nop             
  nop                                                         #  27    0x5e98e  1      OPC=nop             
  nop                                                         #  28    0x5e98f  1      OPC=nop             
  nop                                                         #  29    0x5e990  1      OPC=nop             
  nop                                                         #  30    0x5e991  1      OPC=nop             
  nop                                                         #  31    0x5e992  1      OPC=nop             
  nop                                                         #  32    0x5e993  1      OPC=nop             
  nop                                                         #  33    0x5e994  1      OPC=nop             
  nop                                                         #  34    0x5e995  1      OPC=nop             
  nop                                                         #  35    0x5e996  1      OPC=nop             
  nop                                                         #  36    0x5e997  1      OPC=nop             
  nop                                                         #  37    0x5e998  1      OPC=nop             
  nop                                                         #  38    0x5e999  1      OPC=nop             
  nop                                                         #  39    0x5e99a  1      OPC=nop             
  callq ._ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE  #  40    0x5e99b  5      OPC=callq_label     
  movl %ebx, %ebx                                             #  41    0x5e9a0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                    #  42    0x5e9a2  4      OPC=movl_r32_m32    
  testq %rdx, %rdx                                            #  43    0x5e9a6  3      OPC=testq_r64_r64   
  jne .L_5e980                                                #  44    0x5e9a9  2      OPC=jne_label       
  nop                                                         #  45    0x5e9ab  1      OPC=nop             
  nop                                                         #  46    0x5e9ac  1      OPC=nop             
  nop                                                         #  47    0x5e9ad  1      OPC=nop             
  nop                                                         #  48    0x5e9ae  1      OPC=nop             
  nop                                                         #  49    0x5e9af  1      OPC=nop             
  nop                                                         #  50    0x5e9b0  1      OPC=nop             
  nop                                                         #  51    0x5e9b1  1      OPC=nop             
  nop                                                         #  52    0x5e9b2  1      OPC=nop             
  nop                                                         #  53    0x5e9b3  1      OPC=nop             
  nop                                                         #  54    0x5e9b4  1      OPC=nop             
  nop                                                         #  55    0x5e9b5  1      OPC=nop             
  nop                                                         #  56    0x5e9b6  1      OPC=nop             
  nop                                                         #  57    0x5e9b7  1      OPC=nop             
  nop                                                         #  58    0x5e9b8  1      OPC=nop             
  nop                                                         #  59    0x5e9b9  1      OPC=nop             
  nop                                                         #  60    0x5e9ba  1      OPC=nop             
  nop                                                         #  61    0x5e9bb  1      OPC=nop             
  nop                                                         #  62    0x5e9bc  1      OPC=nop             
  nop                                                         #  63    0x5e9bd  1      OPC=nop             
  nop                                                         #  64    0x5e9be  1      OPC=nop             
  nop                                                         #  65    0x5e9bf  1      OPC=nop             
.L_5e9c0:                                                     #        0x5e9c0  0      OPC=<label>         
  popq %rbx                                                   #  66    0x5e9c0  1      OPC=popq_r64_1      
  popq %r12                                                   #  67    0x5e9c1  2      OPC=popq_r64_1      
  popq %r13                                                   #  68    0x5e9c3  2      OPC=popq_r64_1      
  popq %r11                                                   #  69    0x5e9c5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                     #  70    0x5e9c7  7      OPC=andl_r32_imm32  
  nop                                                         #  71    0x5e9ce  1      OPC=nop             
  nop                                                         #  72    0x5e9cf  1      OPC=nop             
  nop                                                         #  73    0x5e9d0  1      OPC=nop             
  nop                                                         #  74    0x5e9d1  1      OPC=nop             
  addq %r15, %r11                                             #  75    0x5e9d2  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  76    0x5e9d5  3      OPC=jmpq_r64        
  nop                                                         #  77    0x5e9d8  1      OPC=nop             
  nop                                                         #  78    0x5e9d9  1      OPC=nop             
  nop                                                         #  79    0x5e9da  1      OPC=nop             
  nop                                                         #  80    0x5e9db  1      OPC=nop             
  nop                                                         #  81    0x5e9dc  1      OPC=nop             
  nop                                                         #  82    0x5e9dd  1      OPC=nop             
  nop                                                         #  83    0x5e9de  1      OPC=nop             
  nop                                                         #  84    0x5e9df  1      OPC=nop             
  nop                                                         #  85    0x5e9e0  1      OPC=nop             
  nop                                                         #  86    0x5e9e1  1      OPC=nop             
  nop                                                         #  87    0x5e9e2  1      OPC=nop             
  nop                                                         #  88    0x5e9e3  1      OPC=nop             
  nop                                                         #  89    0x5e9e4  1      OPC=nop             
  nop                                                         #  90    0x5e9e5  1      OPC=nop             
  nop                                                         #  91    0x5e9e6  1      OPC=nop             
                                                                                                           
.size _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE, .-_ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE

