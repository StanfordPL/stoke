  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0xedfe0
#! rip-offset  0xadfe0
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0xadfe0  0      OPC=<label>         
  movq %r12, -0x18(%rsp)                                                                              #  1     0xadfe0  5      OPC=movq_m64_r64    
  movq %r13, -0x10(%rsp)                                                                              #  2     0xadfe5  5      OPC=movq_m64_r64    
  movl %esi, %r12d                                                                                    #  3     0xadfea  3      OPC=movl_r32_r32    
  movl %edi, %r13d                                                                                    #  4     0xadfed  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)                                                                              #  5     0xadff0  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                                                                               #  6     0xadff5  5      OPC=movq_m64_r64    
  movl $0x1007358c, %ebx                                                                              #  7     0xadffa  5      OPC=movl_r32_imm32  
  nop                                                                                                 #  8     0xadfff  1      OPC=nop             
  subl $0x28, %esp                                                                                    #  9     0xae000  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                     #  10    0xae003  3      OPC=addq_r64_r64    
  cmpl %r13d, %r12d                                                                                   #  11    0xae006  3      OPC=cmpl_r32_r32    
  movl %edx, %edx                                                                                     #  12    0xae009  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                     #  13    0xae00b  2      OPC=movl_r32_r32    
  je .L_ae060                                                                                         #  14    0xae00d  2      OPC=je_label        
  subl %r13d, %r12d                                                                                   #  15    0xae00f  3      OPC=subl_r32_r32    
  xorl %esi, %esi                                                                                     #  16    0xae012  2      OPC=xorl_r32_r32    
  movl %r12d, %edi                                                                                    #  17    0xae014  3      OPC=movl_r32_r32    
  nop                                                                                                 #  18    0xae017  1      OPC=nop             
  nop                                                                                                 #  19    0xae018  1      OPC=nop             
  nop                                                                                                 #  20    0xae019  1      OPC=nop             
  nop                                                                                                 #  21    0xae01a  1      OPC=nop             
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  22    0xae01b  5      OPC=callq_label     
  cmpl $0x1, %r12d                                                                                    #  23    0xae020  4      OPC=cmpl_r32_imm8   
  movl %eax, %r14d                                                                                    #  24    0xae024  3      OPC=movl_r32_r32    
  leal 0xc(%r14), %ebx                                                                                #  25    0xae027  4      OPC=leal_r32_m16    
  je .L_ae0a0                                                                                         #  26    0xae02b  2      OPC=je_label        
  movl %r12d, %edx                                                                                    #  27    0xae02d  3      OPC=movl_r32_r32    
  movl %r13d, %esi                                                                                    #  28    0xae030  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                                     #  29    0xae033  2      OPC=movl_r32_r32    
  nop                                                                                                 #  30    0xae035  1      OPC=nop             
  nop                                                                                                 #  31    0xae036  1      OPC=nop             
  nop                                                                                                 #  32    0xae037  1      OPC=nop             
  nop                                                                                                 #  33    0xae038  1      OPC=nop             
  nop                                                                                                 #  34    0xae039  1      OPC=nop             
  nop                                                                                                 #  35    0xae03a  1      OPC=nop             
  callq .memcpy                                                                                       #  36    0xae03b  5      OPC=callq_label     
.L_ae040:                                                                                             #        0xae040  0      OPC=<label>         
  movl %r14d, %r14d                                                                                   #  37    0xae040  3      OPC=movl_r32_r32    
  movl %r12d, (%r15,%r14,1)                                                                           #  38    0xae043  4      OPC=movl_m32_r32    
  addl %ebx, %r12d                                                                                    #  39    0xae047  3      OPC=addl_r32_r32    
  movl %r14d, %r14d                                                                                   #  40    0xae04a  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  41    0xae04d  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d                                                                                   #  42    0xae056  3      OPC=movl_r32_r32    
  movb $0x0, (%r15,%r12,1)                                                                            #  43    0xae059  5      OPC=movb_m8_imm8    
  xchgw %ax, %ax                                                                                      #  44    0xae05e  2      OPC=xchgw_ax_r16    
.L_ae060:                                                                                             #        0xae060  0      OPC=<label>         
  movl %ebx, %eax                                                                                     #  45    0xae060  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                                               #  46    0xae062  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                                                #  47    0xae067  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13                                                                               #  48    0xae06c  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14                                                                               #  49    0xae071  5      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                    #  50    0xae076  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                     #  51    0xae079  3      OPC=addq_r64_r64    
  popq %r11                                                                                           #  52    0xae07c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                                                      #  53    0xae07e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                                             #  54    0xae080  7      OPC=andl_r32_imm32  
  nop                                                                                                 #  55    0xae087  1      OPC=nop             
  nop                                                                                                 #  56    0xae088  1      OPC=nop             
  nop                                                                                                 #  57    0xae089  1      OPC=nop             
  nop                                                                                                 #  58    0xae08a  1      OPC=nop             
  addq %r15, %r11                                                                                     #  59    0xae08b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                           #  60    0xae08e  3      OPC=jmpq_r64        
  nop                                                                                                 #  61    0xae091  1      OPC=nop             
  nop                                                                                                 #  62    0xae092  1      OPC=nop             
  nop                                                                                                 #  63    0xae093  1      OPC=nop             
  nop                                                                                                 #  64    0xae094  1      OPC=nop             
  nop                                                                                                 #  65    0xae095  1      OPC=nop             
  nop                                                                                                 #  66    0xae096  1      OPC=nop             
  nop                                                                                                 #  67    0xae097  1      OPC=nop             
  nop                                                                                                 #  68    0xae098  1      OPC=nop             
  nop                                                                                                 #  69    0xae099  1      OPC=nop             
  nop                                                                                                 #  70    0xae09a  1      OPC=nop             
  nop                                                                                                 #  71    0xae09b  1      OPC=nop             
  nop                                                                                                 #  72    0xae09c  1      OPC=nop             
  nop                                                                                                 #  73    0xae09d  1      OPC=nop             
  nop                                                                                                 #  74    0xae09e  1      OPC=nop             
  nop                                                                                                 #  75    0xae09f  1      OPC=nop             
  nop                                                                                                 #  76    0xae0a0  1      OPC=nop             
  nop                                                                                                 #  77    0xae0a1  1      OPC=nop             
  nop                                                                                                 #  78    0xae0a2  1      OPC=nop             
  nop                                                                                                 #  79    0xae0a3  1      OPC=nop             
  nop                                                                                                 #  80    0xae0a4  1      OPC=nop             
  nop                                                                                                 #  81    0xae0a5  1      OPC=nop             
  nop                                                                                                 #  82    0xae0a6  1      OPC=nop             
.L_ae0a0:                                                                                             #        0xae0a7  0      OPC=<label>         
  movl %r13d, %r13d                                                                                   #  83    0xae0a7  3      OPC=movl_r32_r32    
  movzbl (%r15,%r13,1), %eax                                                                          #  84    0xae0aa  5      OPC=movzbl_r32_m8   
  movl %ebx, %ebx                                                                                     #  85    0xae0af  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)                                                                             #  86    0xae0b1  4      OPC=movb_m8_r8      
  jmpq .L_ae040                                                                                       #  87    0xae0b5  2      OPC=jmpq_label      
  nop                                                                                                 #  88    0xae0b7  1      OPC=nop             
  nop                                                                                                 #  89    0xae0b8  1      OPC=nop             
  nop                                                                                                 #  90    0xae0b9  1      OPC=nop             
  nop                                                                                                 #  91    0xae0ba  1      OPC=nop             
  nop                                                                                                 #  92    0xae0bb  1      OPC=nop             
  nop                                                                                                 #  93    0xae0bc  1      OPC=nop             
  nop                                                                                                 #  94    0xae0bd  1      OPC=nop             
  nop                                                                                                 #  95    0xae0be  1      OPC=nop             
  nop                                                                                                 #  96    0xae0bf  1      OPC=nop             
  nop                                                                                                 #  97    0xae0c0  1      OPC=nop             
  nop                                                                                                 #  98    0xae0c1  1      OPC=nop             
  nop                                                                                                 #  99    0xae0c2  1      OPC=nop             
  nop                                                                                                 #  100   0xae0c3  1      OPC=nop             
  nop                                                                                                 #  101   0xae0c4  1      OPC=nop             
  nop                                                                                                 #  102   0xae0c5  1      OPC=nop             
  nop                                                                                                 #  103   0xae0c6  1      OPC=nop             
                                                                                                                                                   
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag

