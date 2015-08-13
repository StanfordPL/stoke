  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0xedce0
#! rip-offset  0xadce0
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0xadce0  0      OPC=<label>         
  movq %r12, -0x18(%rsp)                                                                              #  1     0xadce0  5      OPC=movq_m64_r64    
  movq %r13, -0x10(%rsp)                                                                              #  2     0xadce5  5      OPC=movq_m64_r64    
  movl %esi, %r12d                                                                                    #  3     0xadcea  3      OPC=movl_r32_r32    
  movl %edi, %r13d                                                                                    #  4     0xadced  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)                                                                              #  5     0xadcf0  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                                                                               #  6     0xadcf5  5      OPC=movq_m64_r64    
  movl $0x1007358c, %ebx                                                                              #  7     0xadcfa  5      OPC=movl_r32_imm32  
  nop                                                                                                 #  8     0xadcff  1      OPC=nop             
  subl $0x28, %esp                                                                                    #  9     0xadd00  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                     #  10    0xadd03  3      OPC=addq_r64_r64    
  cmpl %r13d, %r12d                                                                                   #  11    0xadd06  3      OPC=cmpl_r32_r32    
  movl %edx, %edx                                                                                     #  12    0xadd09  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                     #  13    0xadd0b  2      OPC=movl_r32_r32    
  je .L_add60                                                                                         #  14    0xadd0d  2      OPC=je_label        
  subl %r13d, %r12d                                                                                   #  15    0xadd0f  3      OPC=subl_r32_r32    
  xorl %esi, %esi                                                                                     #  16    0xadd12  2      OPC=xorl_r32_r32    
  movl %r12d, %edi                                                                                    #  17    0xadd14  3      OPC=movl_r32_r32    
  nop                                                                                                 #  18    0xadd17  1      OPC=nop             
  nop                                                                                                 #  19    0xadd18  1      OPC=nop             
  nop                                                                                                 #  20    0xadd19  1      OPC=nop             
  nop                                                                                                 #  21    0xadd1a  1      OPC=nop             
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  22    0xadd1b  5      OPC=callq_label     
  cmpl $0x1, %r12d                                                                                    #  23    0xadd20  4      OPC=cmpl_r32_imm8   
  movl %eax, %r14d                                                                                    #  24    0xadd24  3      OPC=movl_r32_r32    
  leal 0xc(%r14), %ebx                                                                                #  25    0xadd27  4      OPC=leal_r32_m16    
  je .L_adda0                                                                                         #  26    0xadd2b  2      OPC=je_label        
  movl %r12d, %edx                                                                                    #  27    0xadd2d  3      OPC=movl_r32_r32    
  movl %r13d, %esi                                                                                    #  28    0xadd30  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                                     #  29    0xadd33  2      OPC=movl_r32_r32    
  nop                                                                                                 #  30    0xadd35  1      OPC=nop             
  nop                                                                                                 #  31    0xadd36  1      OPC=nop             
  nop                                                                                                 #  32    0xadd37  1      OPC=nop             
  nop                                                                                                 #  33    0xadd38  1      OPC=nop             
  nop                                                                                                 #  34    0xadd39  1      OPC=nop             
  nop                                                                                                 #  35    0xadd3a  1      OPC=nop             
  callq .memcpy                                                                                       #  36    0xadd3b  5      OPC=callq_label     
.L_add40:                                                                                             #        0xadd40  0      OPC=<label>         
  movl %r14d, %r14d                                                                                   #  37    0xadd40  3      OPC=movl_r32_r32    
  movl %r12d, (%r15,%r14,1)                                                                           #  38    0xadd43  4      OPC=movl_m32_r32    
  addl %ebx, %r12d                                                                                    #  39    0xadd47  3      OPC=addl_r32_r32    
  movl %r14d, %r14d                                                                                   #  40    0xadd4a  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  41    0xadd4d  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d                                                                                   #  42    0xadd56  3      OPC=movl_r32_r32    
  movb $0x0, (%r15,%r12,1)                                                                            #  43    0xadd59  5      OPC=movb_m8_imm8    
  xchgw %ax, %ax                                                                                      #  44    0xadd5e  2      OPC=xchgw_ax_r16    
.L_add60:                                                                                             #        0xadd60  0      OPC=<label>         
  movl %ebx, %eax                                                                                     #  45    0xadd60  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                                               #  46    0xadd62  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                                                #  47    0xadd67  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13                                                                               #  48    0xadd6c  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14                                                                               #  49    0xadd71  5      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                    #  50    0xadd76  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                     #  51    0xadd79  3      OPC=addq_r64_r64    
  popq %r11                                                                                           #  52    0xadd7c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                                                      #  53    0xadd7e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                                             #  54    0xadd80  7      OPC=andl_r32_imm32  
  nop                                                                                                 #  55    0xadd87  1      OPC=nop             
  nop                                                                                                 #  56    0xadd88  1      OPC=nop             
  nop                                                                                                 #  57    0xadd89  1      OPC=nop             
  nop                                                                                                 #  58    0xadd8a  1      OPC=nop             
  addq %r15, %r11                                                                                     #  59    0xadd8b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                           #  60    0xadd8e  3      OPC=jmpq_r64        
  nop                                                                                                 #  61    0xadd91  1      OPC=nop             
  nop                                                                                                 #  62    0xadd92  1      OPC=nop             
  nop                                                                                                 #  63    0xadd93  1      OPC=nop             
  nop                                                                                                 #  64    0xadd94  1      OPC=nop             
  nop                                                                                                 #  65    0xadd95  1      OPC=nop             
  nop                                                                                                 #  66    0xadd96  1      OPC=nop             
  nop                                                                                                 #  67    0xadd97  1      OPC=nop             
  nop                                                                                                 #  68    0xadd98  1      OPC=nop             
  nop                                                                                                 #  69    0xadd99  1      OPC=nop             
  nop                                                                                                 #  70    0xadd9a  1      OPC=nop             
  nop                                                                                                 #  71    0xadd9b  1      OPC=nop             
  nop                                                                                                 #  72    0xadd9c  1      OPC=nop             
  nop                                                                                                 #  73    0xadd9d  1      OPC=nop             
  nop                                                                                                 #  74    0xadd9e  1      OPC=nop             
  nop                                                                                                 #  75    0xadd9f  1      OPC=nop             
  nop                                                                                                 #  76    0xadda0  1      OPC=nop             
  nop                                                                                                 #  77    0xadda1  1      OPC=nop             
  nop                                                                                                 #  78    0xadda2  1      OPC=nop             
  nop                                                                                                 #  79    0xadda3  1      OPC=nop             
  nop                                                                                                 #  80    0xadda4  1      OPC=nop             
  nop                                                                                                 #  81    0xadda5  1      OPC=nop             
  nop                                                                                                 #  82    0xadda6  1      OPC=nop             
.L_adda0:                                                                                             #        0xadda7  0      OPC=<label>         
  movl %r13d, %r13d                                                                                   #  83    0xadda7  3      OPC=movl_r32_r32    
  movzbl (%r15,%r13,1), %eax                                                                          #  84    0xaddaa  5      OPC=movzbl_r32_m8   
  movl %ebx, %ebx                                                                                     #  85    0xaddaf  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)                                                                             #  86    0xaddb1  4      OPC=movb_m8_r8      
  jmpq .L_add40                                                                                       #  87    0xaddb5  2      OPC=jmpq_label      
  nop                                                                                                 #  88    0xaddb7  1      OPC=nop             
  nop                                                                                                 #  89    0xaddb8  1      OPC=nop             
  nop                                                                                                 #  90    0xaddb9  1      OPC=nop             
  nop                                                                                                 #  91    0xaddba  1      OPC=nop             
  nop                                                                                                 #  92    0xaddbb  1      OPC=nop             
  nop                                                                                                 #  93    0xaddbc  1      OPC=nop             
  nop                                                                                                 #  94    0xaddbd  1      OPC=nop             
  nop                                                                                                 #  95    0xaddbe  1      OPC=nop             
  nop                                                                                                 #  96    0xaddbf  1      OPC=nop             
  nop                                                                                                 #  97    0xaddc0  1      OPC=nop             
  nop                                                                                                 #  98    0xaddc1  1      OPC=nop             
  nop                                                                                                 #  99    0xaddc2  1      OPC=nop             
  nop                                                                                                 #  100   0xaddc3  1      OPC=nop             
  nop                                                                                                 #  101   0xaddc4  1      OPC=nop             
  nop                                                                                                 #  102   0xaddc5  1      OPC=nop             
  nop                                                                                                 #  103   0xaddc6  1      OPC=nop             
                                                                                                                                                   
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag

