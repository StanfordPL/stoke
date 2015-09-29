  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs, @function

#! file-offset 0xab8c0
#! rip-offset  0x6b8c0
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsERs:                           #        0x6b8c0  0      OPC=<label>         
  pushq %r12                                                               #  1     0x6b8c0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                                         #  2     0x6b8c2  3      OPC=movl_r32_r32    
  pushq %rbx                                                               #  3     0x6b8c5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  4     0x6b8c6  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                          #  5     0x6b8c8  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                         #  6     0x6b8ca  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  7     0x6b8cd  3      OPC=addq_r64_r64    
  leal 0xc(%rsp), %esi                                                     #  8     0x6b8d0  4      OPC=leal_r32_m16    
  nop                                                                      #  9     0x6b8d4  1      OPC=nop             
  nop                                                                      #  10    0x6b8d5  1      OPC=nop             
  nop                                                                      #  11    0x6b8d6  1      OPC=nop             
  nop                                                                      #  12    0x6b8d7  1      OPC=nop             
  nop                                                                      #  13    0x6b8d8  1      OPC=nop             
  nop                                                                      #  14    0x6b8d9  1      OPC=nop             
  nop                                                                      #  15    0x6b8da  1      OPC=nop             
  callq ._ZNSt13basic_istreamIwSt11char_traitsIwEE10_M_extractIlEERS2_RT_  #  16    0x6b8db  5      OPC=callq_label     
  movl %ebx, %ebx                                                          #  17    0x6b8e0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0x6b8e2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                          #  19    0x6b8e6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                          #  20    0x6b8e9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                                 #  21    0x6b8eb  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                          #  22    0x6b8ef  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                          #  23    0x6b8f1  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                             #  24    0x6b8f3  5      OPC=movl_r32_m32    
  testb $0x5, %sil                                                         #  25    0x6b8f8  4      OPC=testb_r8_imm8   
  nop                                                                      #  26    0x6b8fc  1      OPC=nop             
  nop                                                                      #  27    0x6b8fd  1      OPC=nop             
  nop                                                                      #  28    0x6b8fe  1      OPC=nop             
  nop                                                                      #  29    0x6b8ff  1      OPC=nop             
  jne .L_6b920                                                             #  30    0x6b900  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                     #  31    0x6b902  4      OPC=movl_r32_m32    
  leal 0x8000(%rax), %edx                                                  #  32    0x6b906  6      OPC=leal_r32_m16    
  cmpl $0xffff, %edx                                                       #  33    0x6b90c  6      OPC=cmpl_r32_imm32  
  ja .L_6b940                                                              #  34    0x6b912  2      OPC=ja_label        
  movl %r12d, %r12d                                                        #  35    0x6b914  3      OPC=movl_r32_r32    
  movw %ax, (%r15,%r12,1)                                                  #  36    0x6b917  5      OPC=movw_m16_r16    
  nop                                                                      #  37    0x6b91c  1      OPC=nop             
  nop                                                                      #  38    0x6b91d  1      OPC=nop             
  nop                                                                      #  39    0x6b91e  1      OPC=nop             
  nop                                                                      #  40    0x6b91f  1      OPC=nop             
.L_6b920:                                                                  #        0x6b920  0      OPC=<label>         
  addl $0x18, %esp                                                         #  41    0x6b920  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  42    0x6b923  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                          #  43    0x6b926  2      OPC=movl_r32_r32    
  popq %rbx                                                                #  44    0x6b928  1      OPC=popq_r64_1      
  popq %r12                                                                #  45    0x6b929  2      OPC=popq_r64_1      
  popq %r11                                                                #  46    0x6b92b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  47    0x6b92d  7      OPC=andl_r32_imm32  
  nop                                                                      #  48    0x6b934  1      OPC=nop             
  nop                                                                      #  49    0x6b935  1      OPC=nop             
  nop                                                                      #  50    0x6b936  1      OPC=nop             
  nop                                                                      #  51    0x6b937  1      OPC=nop             
  addq %r15, %r11                                                          #  52    0x6b938  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  53    0x6b93b  3      OPC=jmpq_r64        
  nop                                                                      #  54    0x6b93e  1      OPC=nop             
  nop                                                                      #  55    0x6b93f  1      OPC=nop             
  nop                                                                      #  56    0x6b940  1      OPC=nop             
  nop                                                                      #  57    0x6b941  1      OPC=nop             
  nop                                                                      #  58    0x6b942  1      OPC=nop             
  nop                                                                      #  59    0x6b943  1      OPC=nop             
  nop                                                                      #  60    0x6b944  1      OPC=nop             
  nop                                                                      #  61    0x6b945  1      OPC=nop             
  nop                                                                      #  62    0x6b946  1      OPC=nop             
.L_6b940:                                                                  #        0x6b947  0      OPC=<label>         
  orl $0x4, %esi                                                           #  63    0x6b947  3      OPC=orl_r32_imm8    
  nop                                                                      #  64    0x6b94a  1      OPC=nop             
  nop                                                                      #  65    0x6b94b  1      OPC=nop             
  nop                                                                      #  66    0x6b94c  1      OPC=nop             
  nop                                                                      #  67    0x6b94d  1      OPC=nop             
  nop                                                                      #  68    0x6b94e  1      OPC=nop             
  nop                                                                      #  69    0x6b94f  1      OPC=nop             
  nop                                                                      #  70    0x6b950  1      OPC=nop             
  nop                                                                      #  71    0x6b951  1      OPC=nop             
  nop                                                                      #  72    0x6b952  1      OPC=nop             
  nop                                                                      #  73    0x6b953  1      OPC=nop             
  nop                                                                      #  74    0x6b954  1      OPC=nop             
  nop                                                                      #  75    0x6b955  1      OPC=nop             
  nop                                                                      #  76    0x6b956  1      OPC=nop             
  nop                                                                      #  77    0x6b957  1      OPC=nop             
  nop                                                                      #  78    0x6b958  1      OPC=nop             
  nop                                                                      #  79    0x6b959  1      OPC=nop             
  nop                                                                      #  80    0x6b95a  1      OPC=nop             
  nop                                                                      #  81    0x6b95b  1      OPC=nop             
  nop                                                                      #  82    0x6b95c  1      OPC=nop             
  nop                                                                      #  83    0x6b95d  1      OPC=nop             
  nop                                                                      #  84    0x6b95e  1      OPC=nop             
  nop                                                                      #  85    0x6b95f  1      OPC=nop             
  nop                                                                      #  86    0x6b960  1      OPC=nop             
  nop                                                                      #  87    0x6b961  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate       #  88    0x6b962  5      OPC=callq_label     
  addl $0x18, %esp                                                         #  89    0x6b967  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  90    0x6b96a  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                          #  91    0x6b96d  2      OPC=movl_r32_r32    
  popq %rbx                                                                #  92    0x6b96f  1      OPC=popq_r64_1      
  popq %r12                                                                #  93    0x6b970  2      OPC=popq_r64_1      
  popq %r11                                                                #  94    0x6b972  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  95    0x6b974  7      OPC=andl_r32_imm32  
  nop                                                                      #  96    0x6b97b  1      OPC=nop             
  nop                                                                      #  97    0x6b97c  1      OPC=nop             
  nop                                                                      #  98    0x6b97d  1      OPC=nop             
  nop                                                                      #  99    0x6b97e  1      OPC=nop             
  addq %r15, %r11                                                          #  100   0x6b97f  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  101   0x6b982  3      OPC=jmpq_r64        
  nop                                                                      #  102   0x6b985  1      OPC=nop             
  nop                                                                      #  103   0x6b986  1      OPC=nop             
  nop                                                                      #  104   0x6b987  1      OPC=nop             
  nop                                                                      #  105   0x6b988  1      OPC=nop             
  nop                                                                      #  106   0x6b989  1      OPC=nop             
  nop                                                                      #  107   0x6b98a  1      OPC=nop             
  nop                                                                      #  108   0x6b98b  1      OPC=nop             
  nop                                                                      #  109   0x6b98c  1      OPC=nop             
  nop                                                                      #  110   0x6b98d  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsERs

