  .text
  .globl _ZNSsC1ERKSsjj
  .type _ZNSsC1ERKSsjj, @function

#! file-offset 0xedc60
#! rip-offset  0xadc60
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSsjj:                                                          #        0xadc60  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadc60  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xadc61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xadc63  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                        #  4     0xadc65  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  5     0xadc68  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  6     0xadc6b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  7     0xadc6d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  8     0xadc71  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  9     0xadc74  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  10    0xadc76  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  11    0xadc7a  2      OPC=cmpl_r32_r32    
  nop                                                                     #  12    0xadc7c  1      OPC=nop             
  nop                                                                     #  13    0xadc7d  1      OPC=nop             
  nop                                                                     #  14    0xadc7e  1      OPC=nop             
  nop                                                                     #  15    0xadc7f  1      OPC=nop             
  ja .L_adcc0                                                             #  16    0xadc80  2      OPC=ja_label        
  subl %edx, %esi                                                         #  17    0xadc82  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                   #  18    0xadc84  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                       #  19    0xadc88  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  20    0xadc8c  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  21    0xadc8e  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  22    0xadc91  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  23    0xadc93  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  24    0xadc95  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                         #  25    0xadc98  2      OPC=movl_r32_r32    
  nop                                                                     #  26    0xadc9a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xadc9b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xadca0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xadca2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                        #  30    0xadca6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xadca9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xadcac  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xadcad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xadcaf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xadcb6  1      OPC=nop             
  nop                                                                     #  36    0xadcb7  1      OPC=nop             
  nop                                                                     #  37    0xadcb8  1      OPC=nop             
  nop                                                                     #  38    0xadcb9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xadcba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xadcbd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xadcc0  1      OPC=nop             
  nop                                                                     #  42    0xadcc1  1      OPC=nop             
  nop                                                                     #  43    0xadcc2  1      OPC=nop             
  nop                                                                     #  44    0xadcc3  1      OPC=nop             
  nop                                                                     #  45    0xadcc4  1      OPC=nop             
  nop                                                                     #  46    0xadcc5  1      OPC=nop             
  nop                                                                     #  47    0xadcc6  1      OPC=nop             
.L_adcc0:                                                                 #        0xadcc7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xadcc7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xadccc  1      OPC=nop             
  nop                                                                     #  50    0xadccd  1      OPC=nop             
  nop                                                                     #  51    0xadcce  1      OPC=nop             
  nop                                                                     #  52    0xadccf  1      OPC=nop             
  nop                                                                     #  53    0xadcd0  1      OPC=nop             
  nop                                                                     #  54    0xadcd1  1      OPC=nop             
  nop                                                                     #  55    0xadcd2  1      OPC=nop             
  nop                                                                     #  56    0xadcd3  1      OPC=nop             
  nop                                                                     #  57    0xadcd4  1      OPC=nop             
  nop                                                                     #  58    0xadcd5  1      OPC=nop             
  nop                                                                     #  59    0xadcd6  1      OPC=nop             
  nop                                                                     #  60    0xadcd7  1      OPC=nop             
  nop                                                                     #  61    0xadcd8  1      OPC=nop             
  nop                                                                     #  62    0xadcd9  1      OPC=nop             
  nop                                                                     #  63    0xadcda  1      OPC=nop             
  nop                                                                     #  64    0xadcdb  1      OPC=nop             
  nop                                                                     #  65    0xadcdc  1      OPC=nop             
  nop                                                                     #  66    0xadcdd  1      OPC=nop             
  nop                                                                     #  67    0xadcde  1      OPC=nop             
  nop                                                                     #  68    0xadcdf  1      OPC=nop             
  nop                                                                     #  69    0xadce0  1      OPC=nop             
  nop                                                                     #  70    0xadce1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xadce2  5      OPC=callq_label     
  movl %eax, %edi                                                         #  72    0xadce7  2      OPC=movl_r32_r32    
  nop                                                                     #  73    0xadce9  1      OPC=nop             
  nop                                                                     #  74    0xadcea  1      OPC=nop             
  nop                                                                     #  75    0xadceb  1      OPC=nop             
  nop                                                                     #  76    0xadcec  1      OPC=nop             
  nop                                                                     #  77    0xadced  1      OPC=nop             
  nop                                                                     #  78    0xadcee  1      OPC=nop             
  nop                                                                     #  79    0xadcef  1      OPC=nop             
  nop                                                                     #  80    0xadcf0  1      OPC=nop             
  nop                                                                     #  81    0xadcf1  1      OPC=nop             
  nop                                                                     #  82    0xadcf2  1      OPC=nop             
  nop                                                                     #  83    0xadcf3  1      OPC=nop             
  nop                                                                     #  84    0xadcf4  1      OPC=nop             
  nop                                                                     #  85    0xadcf5  1      OPC=nop             
  nop                                                                     #  86    0xadcf6  1      OPC=nop             
  nop                                                                     #  87    0xadcf7  1      OPC=nop             
  nop                                                                     #  88    0xadcf8  1      OPC=nop             
  nop                                                                     #  89    0xadcf9  1      OPC=nop             
  nop                                                                     #  90    0xadcfa  1      OPC=nop             
  nop                                                                     #  91    0xadcfb  1      OPC=nop             
  nop                                                                     #  92    0xadcfc  1      OPC=nop             
  nop                                                                     #  93    0xadcfd  1      OPC=nop             
  nop                                                                     #  94    0xadcfe  1      OPC=nop             
  nop                                                                     #  95    0xadcff  1      OPC=nop             
  nop                                                                     #  96    0xadd00  1      OPC=nop             
  nop                                                                     #  97    0xadd01  1      OPC=nop             
  callq ._Unwind_Resume                                                   #  98    0xadd02  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC1ERKSsjj, .-_ZNSsC1ERKSsjj

