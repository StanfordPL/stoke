  .text
  .globl _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE
  .type _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE, @function

#! file-offset 0x9efe0
#! rip-offset  0x5efe0
#! capacity    160 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode              
._ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE:               #        0x5efe0  0      OPC=<label>         
  movl %esi, %ecx                                                   #  1     0x5efe0  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                   #  2     0x5efe2  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                   #  3     0x5efe4  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                   #  4     0x5efe7  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                   #  5     0x5efea  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                          #  6     0x5efec  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                   #  7     0x5eff0  2      OPC=movl_r32_r32    
  testl %eax, %eax                                                  #  8     0x5eff2  2      OPC=testl_r32_r32   
  jne .L_5f020                                                      #  9     0x5eff4  2      OPC=jne_label       
  movl 0x10013634(%rip), %eax                                       #  10    0x5eff6  6      OPC=movl_r32_m32    
  addl $0x1, %eax                                                   #  11    0x5effc  3      OPC=addl_r32_imm8   
  nop                                                               #  12    0x5efff  1      OPC=nop             
  movl %eax, 0x1001362a(%rip)                                       #  13    0x5f000  6      OPC=movl_m32_r32    
  movl %esi, %esi                                                   #  14    0x5f006  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)                                          #  15    0x5f008  4      OPC=movl_m32_r32    
  nop                                                               #  16    0x5f00c  1      OPC=nop             
  nop                                                               #  17    0x5f00d  1      OPC=nop             
  nop                                                               #  18    0x5f00e  1      OPC=nop             
  nop                                                               #  19    0x5f00f  1      OPC=nop             
  nop                                                               #  20    0x5f010  1      OPC=nop             
  nop                                                               #  21    0x5f011  1      OPC=nop             
  nop                                                               #  22    0x5f012  1      OPC=nop             
  nop                                                               #  23    0x5f013  1      OPC=nop             
  nop                                                               #  24    0x5f014  1      OPC=nop             
  nop                                                               #  25    0x5f015  1      OPC=nop             
  nop                                                               #  26    0x5f016  1      OPC=nop             
  nop                                                               #  27    0x5f017  1      OPC=nop             
  nop                                                               #  28    0x5f018  1      OPC=nop             
  nop                                                               #  29    0x5f019  1      OPC=nop             
  nop                                                               #  30    0x5f01a  1      OPC=nop             
  nop                                                               #  31    0x5f01b  1      OPC=nop             
  nop                                                               #  32    0x5f01c  1      OPC=nop             
  nop                                                               #  33    0x5f01d  1      OPC=nop             
  nop                                                               #  34    0x5f01e  1      OPC=nop             
  nop                                                               #  35    0x5f01f  1      OPC=nop             
.L_5f020:                                                           #        0x5f020  0      OPC=<label>         
  movl %ecx, %ecx                                                   #  36    0x5f020  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rcx,1), %edx                                       #  37    0x5f022  5      OPC=movl_r32_m32    
  subl $0x1, %eax                                                   #  38    0x5f027  3      OPC=subl_r32_imm8   
  subl $0x1, %edx                                                   #  39    0x5f02a  3      OPC=subl_r32_imm8   
  cmpl %eax, %edx                                                   #  40    0x5f02d  2      OPC=cmpl_r32_r32    
  jb .L_5f060                                                       #  41    0x5f02f  2      OPC=jb_label        
  shll $0x2, %eax                                                   #  42    0x5f031  3      OPC=shll_r32_imm8   
  movl %ecx, %ecx                                                   #  43    0x5f034  2      OPC=movl_r32_r32    
  addl 0x4(%r15,%rcx,1), %eax                                       #  44    0x5f036  5      OPC=addl_r32_m32    
  nop                                                               #  45    0x5f03b  1      OPC=nop             
  nop                                                               #  46    0x5f03c  1      OPC=nop             
  nop                                                               #  47    0x5f03d  1      OPC=nop             
  nop                                                               #  48    0x5f03e  1      OPC=nop             
  nop                                                               #  49    0x5f03f  1      OPC=nop             
  movl %eax, %eax                                                   #  50    0x5f040  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                          #  51    0x5f042  4      OPC=movl_r32_m32    
  testq %rdx, %rdx                                                  #  52    0x5f046  3      OPC=testq_r64_r64   
  je .L_5f060                                                       #  53    0x5f049  2      OPC=je_label        
  addl $0x8, %esp                                                   #  54    0x5f04b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                   #  55    0x5f04e  3      OPC=addq_r64_r64    
  jmpq ._ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE  #  56    0x5f051  5      OPC=jmpq_label_1    
  nop                                                               #  57    0x5f056  1      OPC=nop             
  nop                                                               #  58    0x5f057  1      OPC=nop             
  nop                                                               #  59    0x5f058  1      OPC=nop             
  nop                                                               #  60    0x5f059  1      OPC=nop             
  nop                                                               #  61    0x5f05a  1      OPC=nop             
  nop                                                               #  62    0x5f05b  1      OPC=nop             
  nop                                                               #  63    0x5f05c  1      OPC=nop             
  nop                                                               #  64    0x5f05d  1      OPC=nop             
  nop                                                               #  65    0x5f05e  1      OPC=nop             
  nop                                                               #  66    0x5f05f  1      OPC=nop             
.L_5f060:                                                           #        0x5f060  0      OPC=<label>         
  movl $0x1003a248, %edi                                            #  67    0x5f060  5      OPC=movl_r32_imm32  
  nop                                                               #  68    0x5f065  1      OPC=nop             
  nop                                                               #  69    0x5f066  1      OPC=nop             
  nop                                                               #  70    0x5f067  1      OPC=nop             
  nop                                                               #  71    0x5f068  1      OPC=nop             
  nop                                                               #  72    0x5f069  1      OPC=nop             
  nop                                                               #  73    0x5f06a  1      OPC=nop             
  nop                                                               #  74    0x5f06b  1      OPC=nop             
  nop                                                               #  75    0x5f06c  1      OPC=nop             
  nop                                                               #  76    0x5f06d  1      OPC=nop             
  nop                                                               #  77    0x5f06e  1      OPC=nop             
  nop                                                               #  78    0x5f06f  1      OPC=nop             
  nop                                                               #  79    0x5f070  1      OPC=nop             
  nop                                                               #  80    0x5f071  1      OPC=nop             
  nop                                                               #  81    0x5f072  1      OPC=nop             
  nop                                                               #  82    0x5f073  1      OPC=nop             
  nop                                                               #  83    0x5f074  1      OPC=nop             
  nop                                                               #  84    0x5f075  1      OPC=nop             
  nop                                                               #  85    0x5f076  1      OPC=nop             
  nop                                                               #  86    0x5f077  1      OPC=nop             
  nop                                                               #  87    0x5f078  1      OPC=nop             
  nop                                                               #  88    0x5f079  1      OPC=nop             
  nop                                                               #  89    0x5f07a  1      OPC=nop             
  callq ._ZSt21__throw_runtime_errorPKc                             #  90    0x5f07b  5      OPC=callq_label     
                                                                                                                 
.size _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE, .-_ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE

