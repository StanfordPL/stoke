  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0xee700
#! rip-offset  0xae700
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0xae700  0      OPC=<label>         
  movq %r12, -0x18(%rsp)                                                                              #  1     0xae700  5      OPC=movq_m64_r64    
  movq %r13, -0x10(%rsp)                                                                              #  2     0xae705  5      OPC=movq_m64_r64    
  movl %esi, %r12d                                                                                    #  3     0xae70a  3      OPC=movl_r32_r32    
  movl %edi, %r13d                                                                                    #  4     0xae70d  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)                                                                              #  5     0xae710  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                                                                               #  6     0xae715  5      OPC=movq_m64_r64    
  movl $0x1007358c, %ebx                                                                              #  7     0xae71a  5      OPC=movl_r32_imm32  
  nop                                                                                                 #  8     0xae71f  1      OPC=nop             
  subl $0x28, %esp                                                                                    #  9     0xae720  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                     #  10    0xae723  3      OPC=addq_r64_r64    
  cmpl %r13d, %r12d                                                                                   #  11    0xae726  3      OPC=cmpl_r32_r32    
  movl %edx, %edx                                                                                     #  12    0xae729  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                     #  13    0xae72b  2      OPC=movl_r32_r32    
  je .L_ae780                                                                                         #  14    0xae72d  2      OPC=je_label        
  subl %r13d, %r12d                                                                                   #  15    0xae72f  3      OPC=subl_r32_r32    
  xorl %esi, %esi                                                                                     #  16    0xae732  2      OPC=xorl_r32_r32    
  movl %r12d, %edi                                                                                    #  17    0xae734  3      OPC=movl_r32_r32    
  nop                                                                                                 #  18    0xae737  1      OPC=nop             
  nop                                                                                                 #  19    0xae738  1      OPC=nop             
  nop                                                                                                 #  20    0xae739  1      OPC=nop             
  nop                                                                                                 #  21    0xae73a  1      OPC=nop             
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  22    0xae73b  5      OPC=callq_label     
  cmpl $0x1, %r12d                                                                                    #  23    0xae740  4      OPC=cmpl_r32_imm8   
  movl %eax, %r14d                                                                                    #  24    0xae744  3      OPC=movl_r32_r32    
  leal 0xc(%r14), %ebx                                                                                #  25    0xae747  4      OPC=leal_r32_m16    
  je .L_ae7c0                                                                                         #  26    0xae74b  2      OPC=je_label        
  movl %r12d, %edx                                                                                    #  27    0xae74d  3      OPC=movl_r32_r32    
  movl %r13d, %esi                                                                                    #  28    0xae750  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                                     #  29    0xae753  2      OPC=movl_r32_r32    
  nop                                                                                                 #  30    0xae755  1      OPC=nop             
  nop                                                                                                 #  31    0xae756  1      OPC=nop             
  nop                                                                                                 #  32    0xae757  1      OPC=nop             
  nop                                                                                                 #  33    0xae758  1      OPC=nop             
  nop                                                                                                 #  34    0xae759  1      OPC=nop             
  nop                                                                                                 #  35    0xae75a  1      OPC=nop             
  callq .memcpy                                                                                       #  36    0xae75b  5      OPC=callq_label     
.L_ae760:                                                                                             #        0xae760  0      OPC=<label>         
  movl %r14d, %r14d                                                                                   #  37    0xae760  3      OPC=movl_r32_r32    
  movl %r12d, (%r15,%r14,1)                                                                           #  38    0xae763  4      OPC=movl_m32_r32    
  addl %ebx, %r12d                                                                                    #  39    0xae767  3      OPC=addl_r32_r32    
  movl %r14d, %r14d                                                                                   #  40    0xae76a  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  41    0xae76d  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d                                                                                   #  42    0xae776  3      OPC=movl_r32_r32    
  movb $0x0, (%r15,%r12,1)                                                                            #  43    0xae779  5      OPC=movb_m8_imm8    
  xchgw %ax, %ax                                                                                      #  44    0xae77e  2      OPC=xchgw_ax_r16    
.L_ae780:                                                                                             #        0xae780  0      OPC=<label>         
  movl %ebx, %eax                                                                                     #  45    0xae780  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                                                               #  46    0xae782  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx                                                                                #  47    0xae787  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13                                                                               #  48    0xae78c  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14                                                                               #  49    0xae791  5      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                    #  50    0xae796  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                     #  51    0xae799  3      OPC=addq_r64_r64    
  popq %r11                                                                                           #  52    0xae79c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                                                      #  53    0xae79e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                                             #  54    0xae7a0  7      OPC=andl_r32_imm32  
  nop                                                                                                 #  55    0xae7a7  1      OPC=nop             
  nop                                                                                                 #  56    0xae7a8  1      OPC=nop             
  nop                                                                                                 #  57    0xae7a9  1      OPC=nop             
  nop                                                                                                 #  58    0xae7aa  1      OPC=nop             
  addq %r15, %r11                                                                                     #  59    0xae7ab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                           #  60    0xae7ae  3      OPC=jmpq_r64        
  nop                                                                                                 #  61    0xae7b1  1      OPC=nop             
  nop                                                                                                 #  62    0xae7b2  1      OPC=nop             
  nop                                                                                                 #  63    0xae7b3  1      OPC=nop             
  nop                                                                                                 #  64    0xae7b4  1      OPC=nop             
  nop                                                                                                 #  65    0xae7b5  1      OPC=nop             
  nop                                                                                                 #  66    0xae7b6  1      OPC=nop             
  nop                                                                                                 #  67    0xae7b7  1      OPC=nop             
  nop                                                                                                 #  68    0xae7b8  1      OPC=nop             
  nop                                                                                                 #  69    0xae7b9  1      OPC=nop             
  nop                                                                                                 #  70    0xae7ba  1      OPC=nop             
  nop                                                                                                 #  71    0xae7bb  1      OPC=nop             
  nop                                                                                                 #  72    0xae7bc  1      OPC=nop             
  nop                                                                                                 #  73    0xae7bd  1      OPC=nop             
  nop                                                                                                 #  74    0xae7be  1      OPC=nop             
  nop                                                                                                 #  75    0xae7bf  1      OPC=nop             
  nop                                                                                                 #  76    0xae7c0  1      OPC=nop             
  nop                                                                                                 #  77    0xae7c1  1      OPC=nop             
  nop                                                                                                 #  78    0xae7c2  1      OPC=nop             
  nop                                                                                                 #  79    0xae7c3  1      OPC=nop             
  nop                                                                                                 #  80    0xae7c4  1      OPC=nop             
  nop                                                                                                 #  81    0xae7c5  1      OPC=nop             
  nop                                                                                                 #  82    0xae7c6  1      OPC=nop             
.L_ae7c0:                                                                                             #        0xae7c7  0      OPC=<label>         
  movl %r13d, %r13d                                                                                   #  83    0xae7c7  3      OPC=movl_r32_r32    
  movzbl (%r15,%r13,1), %eax                                                                          #  84    0xae7ca  5      OPC=movzbl_r32_m8   
  movl %ebx, %ebx                                                                                     #  85    0xae7cf  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)                                                                             #  86    0xae7d1  4      OPC=movb_m8_r8      
  jmpq .L_ae760                                                                                       #  87    0xae7d5  2      OPC=jmpq_label      
  nop                                                                                                 #  88    0xae7d7  1      OPC=nop             
  nop                                                                                                 #  89    0xae7d8  1      OPC=nop             
  nop                                                                                                 #  90    0xae7d9  1      OPC=nop             
  nop                                                                                                 #  91    0xae7da  1      OPC=nop             
  nop                                                                                                 #  92    0xae7db  1      OPC=nop             
  nop                                                                                                 #  93    0xae7dc  1      OPC=nop             
  nop                                                                                                 #  94    0xae7dd  1      OPC=nop             
  nop                                                                                                 #  95    0xae7de  1      OPC=nop             
  nop                                                                                                 #  96    0xae7df  1      OPC=nop             
  nop                                                                                                 #  97    0xae7e0  1      OPC=nop             
  nop                                                                                                 #  98    0xae7e1  1      OPC=nop             
  nop                                                                                                 #  99    0xae7e2  1      OPC=nop             
  nop                                                                                                 #  100   0xae7e3  1      OPC=nop             
  nop                                                                                                 #  101   0xae7e4  1      OPC=nop             
  nop                                                                                                 #  102   0xae7e5  1      OPC=nop             
  nop                                                                                                 #  103   0xae7e6  1      OPC=nop             
                                                                                                                                                   
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag

