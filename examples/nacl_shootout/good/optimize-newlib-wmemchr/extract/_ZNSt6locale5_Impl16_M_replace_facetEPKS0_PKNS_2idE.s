  .text
  .globl _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE
  .type _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE, @function

#! file-offset 0x9e8c0
#! rip-offset  0x5e8c0
#! capacity    160 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode              
._ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE:               #        0x5e8c0  0      OPC=<label>         
  movl %esi, %ecx                                                   #  1     0x5e8c0  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                   #  2     0x5e8c2  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                   #  3     0x5e8c4  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                   #  4     0x5e8c7  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                   #  5     0x5e8ca  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                          #  6     0x5e8cc  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                   #  7     0x5e8d0  2      OPC=movl_r32_r32    
  testl %eax, %eax                                                  #  8     0x5e8d2  2      OPC=testl_r32_r32   
  jne .L_5e900                                                      #  9     0x5e8d4  2      OPC=jne_label       
  movl 0x10013d54(%rip), %eax                                       #  10    0x5e8d6  6      OPC=movl_r32_m32    
  addl $0x1, %eax                                                   #  11    0x5e8dc  3      OPC=addl_r32_imm8   
  nop                                                               #  12    0x5e8df  1      OPC=nop             
  movl %eax, 0x10013d4a(%rip)                                       #  13    0x5e8e0  6      OPC=movl_m32_r32    
  movl %esi, %esi                                                   #  14    0x5e8e6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)                                          #  15    0x5e8e8  4      OPC=movl_m32_r32    
  nop                                                               #  16    0x5e8ec  1      OPC=nop             
  nop                                                               #  17    0x5e8ed  1      OPC=nop             
  nop                                                               #  18    0x5e8ee  1      OPC=nop             
  nop                                                               #  19    0x5e8ef  1      OPC=nop             
  nop                                                               #  20    0x5e8f0  1      OPC=nop             
  nop                                                               #  21    0x5e8f1  1      OPC=nop             
  nop                                                               #  22    0x5e8f2  1      OPC=nop             
  nop                                                               #  23    0x5e8f3  1      OPC=nop             
  nop                                                               #  24    0x5e8f4  1      OPC=nop             
  nop                                                               #  25    0x5e8f5  1      OPC=nop             
  nop                                                               #  26    0x5e8f6  1      OPC=nop             
  nop                                                               #  27    0x5e8f7  1      OPC=nop             
  nop                                                               #  28    0x5e8f8  1      OPC=nop             
  nop                                                               #  29    0x5e8f9  1      OPC=nop             
  nop                                                               #  30    0x5e8fa  1      OPC=nop             
  nop                                                               #  31    0x5e8fb  1      OPC=nop             
  nop                                                               #  32    0x5e8fc  1      OPC=nop             
  nop                                                               #  33    0x5e8fd  1      OPC=nop             
  nop                                                               #  34    0x5e8fe  1      OPC=nop             
  nop                                                               #  35    0x5e8ff  1      OPC=nop             
.L_5e900:                                                           #        0x5e900  0      OPC=<label>         
  movl %ecx, %ecx                                                   #  36    0x5e900  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rcx,1), %edx                                       #  37    0x5e902  5      OPC=movl_r32_m32    
  subl $0x1, %eax                                                   #  38    0x5e907  3      OPC=subl_r32_imm8   
  subl $0x1, %edx                                                   #  39    0x5e90a  3      OPC=subl_r32_imm8   
  cmpl %eax, %edx                                                   #  40    0x5e90d  2      OPC=cmpl_r32_r32    
  jb .L_5e940                                                       #  41    0x5e90f  2      OPC=jb_label        
  shll $0x2, %eax                                                   #  42    0x5e911  3      OPC=shll_r32_imm8   
  movl %ecx, %ecx                                                   #  43    0x5e914  2      OPC=movl_r32_r32    
  addl 0x4(%r15,%rcx,1), %eax                                       #  44    0x5e916  5      OPC=addl_r32_m32    
  nop                                                               #  45    0x5e91b  1      OPC=nop             
  nop                                                               #  46    0x5e91c  1      OPC=nop             
  nop                                                               #  47    0x5e91d  1      OPC=nop             
  nop                                                               #  48    0x5e91e  1      OPC=nop             
  nop                                                               #  49    0x5e91f  1      OPC=nop             
  movl %eax, %eax                                                   #  50    0x5e920  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                          #  51    0x5e922  4      OPC=movl_r32_m32    
  testq %rdx, %rdx                                                  #  52    0x5e926  3      OPC=testq_r64_r64   
  je .L_5e940                                                       #  53    0x5e929  2      OPC=je_label        
  addl $0x8, %esp                                                   #  54    0x5e92b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                   #  55    0x5e92e  3      OPC=addq_r64_r64    
  jmpq ._ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE  #  56    0x5e931  5      OPC=jmpq_label_1    
  nop                                                               #  57    0x5e936  1      OPC=nop             
  nop                                                               #  58    0x5e937  1      OPC=nop             
  nop                                                               #  59    0x5e938  1      OPC=nop             
  nop                                                               #  60    0x5e939  1      OPC=nop             
  nop                                                               #  61    0x5e93a  1      OPC=nop             
  nop                                                               #  62    0x5e93b  1      OPC=nop             
  nop                                                               #  63    0x5e93c  1      OPC=nop             
  nop                                                               #  64    0x5e93d  1      OPC=nop             
  nop                                                               #  65    0x5e93e  1      OPC=nop             
  nop                                                               #  66    0x5e93f  1      OPC=nop             
.L_5e940:                                                           #        0x5e940  0      OPC=<label>         
  movl $0x1003a248, %edi                                            #  67    0x5e940  5      OPC=movl_r32_imm32  
  nop                                                               #  68    0x5e945  1      OPC=nop             
  nop                                                               #  69    0x5e946  1      OPC=nop             
  nop                                                               #  70    0x5e947  1      OPC=nop             
  nop                                                               #  71    0x5e948  1      OPC=nop             
  nop                                                               #  72    0x5e949  1      OPC=nop             
  nop                                                               #  73    0x5e94a  1      OPC=nop             
  nop                                                               #  74    0x5e94b  1      OPC=nop             
  nop                                                               #  75    0x5e94c  1      OPC=nop             
  nop                                                               #  76    0x5e94d  1      OPC=nop             
  nop                                                               #  77    0x5e94e  1      OPC=nop             
  nop                                                               #  78    0x5e94f  1      OPC=nop             
  nop                                                               #  79    0x5e950  1      OPC=nop             
  nop                                                               #  80    0x5e951  1      OPC=nop             
  nop                                                               #  81    0x5e952  1      OPC=nop             
  nop                                                               #  82    0x5e953  1      OPC=nop             
  nop                                                               #  83    0x5e954  1      OPC=nop             
  nop                                                               #  84    0x5e955  1      OPC=nop             
  nop                                                               #  85    0x5e956  1      OPC=nop             
  nop                                                               #  86    0x5e957  1      OPC=nop             
  nop                                                               #  87    0x5e958  1      OPC=nop             
  nop                                                               #  88    0x5e959  1      OPC=nop             
  nop                                                               #  89    0x5e95a  1      OPC=nop             
  callq ._ZSt21__throw_runtime_errorPKc                             #  90    0x5e95b  5      OPC=callq_label     
                                                                                                                 
.size _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE, .-_ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE

