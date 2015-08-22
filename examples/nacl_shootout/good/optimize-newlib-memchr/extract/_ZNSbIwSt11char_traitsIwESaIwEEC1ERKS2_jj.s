  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj, @function

#! file-offset 0x1184a0
#! rip-offset  0xd84a0
#! capacity    160 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj:                                                       #        0xd84a0  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd84a0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                                                 #  2     0xd84a1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                                                 #  3     0xd84a3  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                                                #  4     0xd84a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  5     0xd84a8  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                                                 #  6     0xd84ab  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                                        #  7     0xd84ad  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                                           #  8     0xd84b1  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                                                 #  9     0xd84b4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                                        #  10    0xd84b6  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                                                 #  11    0xd84ba  2      OPC=cmpl_r32_r32    
  nop                                                                                             #  12    0xd84bc  1      OPC=nop             
  nop                                                                                             #  13    0xd84bd  1      OPC=nop             
  nop                                                                                             #  14    0xd84be  1      OPC=nop             
  nop                                                                                             #  15    0xd84bf  1      OPC=nop             
  ja .L_d8500                                                                                     #  16    0xd84c0  2      OPC=ja_label        
  subl %edx, %esi                                                                                 #  17    0xd84c2  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                                           #  18    0xd84c4  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                                               #  19    0xd84c8  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                                                 #  20    0xd84cc  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                                               #  21    0xd84ce  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                                                 #  22    0xd84d1  2      OPC=addl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  23    0xd84d3  3      OPC=leal_r32_m16    
  leal (%rdi,%rdx,4), %edi                                                                        #  24    0xd84d6  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                                                 #  25    0xd84d9  2      OPC=movl_r32_r32    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  26    0xd84db  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  27    0xd84e0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  28    0xd84e2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                                                #  29    0xd84e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  30    0xd84e9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  31    0xd84ec  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  32    0xd84ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  33    0xd84ef  7      OPC=andl_r32_imm32  
  nop                                                                                             #  34    0xd84f6  1      OPC=nop             
  nop                                                                                             #  35    0xd84f7  1      OPC=nop             
  nop                                                                                             #  36    0xd84f8  1      OPC=nop             
  nop                                                                                             #  37    0xd84f9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  38    0xd84fa  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  39    0xd84fd  3      OPC=jmpq_r64        
  nop                                                                                             #  40    0xd8500  1      OPC=nop             
  nop                                                                                             #  41    0xd8501  1      OPC=nop             
  nop                                                                                             #  42    0xd8502  1      OPC=nop             
  nop                                                                                             #  43    0xd8503  1      OPC=nop             
  nop                                                                                             #  44    0xd8504  1      OPC=nop             
  nop                                                                                             #  45    0xd8505  1      OPC=nop             
  nop                                                                                             #  46    0xd8506  1      OPC=nop             
.L_d8500:                                                                                         #        0xd8507  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                                          #  47    0xd8507  5      OPC=movl_r32_imm32  
  nop                                                                                             #  48    0xd850c  1      OPC=nop             
  nop                                                                                             #  49    0xd850d  1      OPC=nop             
  nop                                                                                             #  50    0xd850e  1      OPC=nop             
  nop                                                                                             #  51    0xd850f  1      OPC=nop             
  nop                                                                                             #  52    0xd8510  1      OPC=nop             
  nop                                                                                             #  53    0xd8511  1      OPC=nop             
  nop                                                                                             #  54    0xd8512  1      OPC=nop             
  nop                                                                                             #  55    0xd8513  1      OPC=nop             
  nop                                                                                             #  56    0xd8514  1      OPC=nop             
  nop                                                                                             #  57    0xd8515  1      OPC=nop             
  nop                                                                                             #  58    0xd8516  1      OPC=nop             
  nop                                                                                             #  59    0xd8517  1      OPC=nop             
  nop                                                                                             #  60    0xd8518  1      OPC=nop             
  nop                                                                                             #  61    0xd8519  1      OPC=nop             
  nop                                                                                             #  62    0xd851a  1      OPC=nop             
  nop                                                                                             #  63    0xd851b  1      OPC=nop             
  nop                                                                                             #  64    0xd851c  1      OPC=nop             
  nop                                                                                             #  65    0xd851d  1      OPC=nop             
  nop                                                                                             #  66    0xd851e  1      OPC=nop             
  nop                                                                                             #  67    0xd851f  1      OPC=nop             
  nop                                                                                             #  68    0xd8520  1      OPC=nop             
  nop                                                                                             #  69    0xd8521  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  70    0xd8522  5      OPC=callq_label     
  movl %eax, %edi                                                                                 #  71    0xd8527  2      OPC=movl_r32_r32    
  nop                                                                                             #  72    0xd8529  1      OPC=nop             
  nop                                                                                             #  73    0xd852a  1      OPC=nop             
  nop                                                                                             #  74    0xd852b  1      OPC=nop             
  nop                                                                                             #  75    0xd852c  1      OPC=nop             
  nop                                                                                             #  76    0xd852d  1      OPC=nop             
  nop                                                                                             #  77    0xd852e  1      OPC=nop             
  nop                                                                                             #  78    0xd852f  1      OPC=nop             
  nop                                                                                             #  79    0xd8530  1      OPC=nop             
  nop                                                                                             #  80    0xd8531  1      OPC=nop             
  nop                                                                                             #  81    0xd8532  1      OPC=nop             
  nop                                                                                             #  82    0xd8533  1      OPC=nop             
  nop                                                                                             #  83    0xd8534  1      OPC=nop             
  nop                                                                                             #  84    0xd8535  1      OPC=nop             
  nop                                                                                             #  85    0xd8536  1      OPC=nop             
  nop                                                                                             #  86    0xd8537  1      OPC=nop             
  nop                                                                                             #  87    0xd8538  1      OPC=nop             
  nop                                                                                             #  88    0xd8539  1      OPC=nop             
  nop                                                                                             #  89    0xd853a  1      OPC=nop             
  nop                                                                                             #  90    0xd853b  1      OPC=nop             
  nop                                                                                             #  91    0xd853c  1      OPC=nop             
  nop                                                                                             #  92    0xd853d  1      OPC=nop             
  nop                                                                                             #  93    0xd853e  1      OPC=nop             
  nop                                                                                             #  94    0xd853f  1      OPC=nop             
  nop                                                                                             #  95    0xd8540  1      OPC=nop             
  nop                                                                                             #  96    0xd8541  1      OPC=nop             
  callq ._Unwind_Resume                                                                           #  97    0xd8542  5      OPC=callq_label     
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj

