  .text
  .globl _ZNSt7collateIwEC2EPij
  .type _ZNSt7collateIwEC2EPij, @function

#! file-offset 0xf5160
#! rip-offset  0xb5160
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC2EPij:                            #        0xb5160  0      OPC=<label>         
  pushq %rbx                                        #  1     0xb5160  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xb5161  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xb5163  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xb5165  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xb5168  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xb516b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xb516d  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb516f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xb5177  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xb517a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xb517e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xb5180  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xb5184  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb5186  5      OPC=movl_m32_r32    
  nop                                               #  15    0xb518b  1      OPC=nop             
  nop                                               #  16    0xb518c  1      OPC=nop             
  nop                                               #  17    0xb518d  1      OPC=nop             
  nop                                               #  18    0xb518e  1      OPC=nop             
  nop                                               #  19    0xb518f  1      OPC=nop             
  nop                                               #  20    0xb5190  1      OPC=nop             
  nop                                               #  21    0xb5191  1      OPC=nop             
  nop                                               #  22    0xb5192  1      OPC=nop             
  nop                                               #  23    0xb5193  1      OPC=nop             
  nop                                               #  24    0xb5194  1      OPC=nop             
  nop                                               #  25    0xb5195  1      OPC=nop             
  nop                                               #  26    0xb5196  1      OPC=nop             
  nop                                               #  27    0xb5197  1      OPC=nop             
  nop                                               #  28    0xb5198  1      OPC=nop             
  nop                                               #  29    0xb5199  1      OPC=nop             
  nop                                               #  30    0xb519a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb519b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xb51a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb51a2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xb51a7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xb51aa  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xb51ad  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xb51ae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xb51b0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xb51b7  1      OPC=nop             
  nop                                               #  40    0xb51b8  1      OPC=nop             
  nop                                               #  41    0xb51b9  1      OPC=nop             
  nop                                               #  42    0xb51ba  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xb51bb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xb51be  3      OPC=jmpq_r64        
  nop                                               #  45    0xb51c1  1      OPC=nop             
  nop                                               #  46    0xb51c2  1      OPC=nop             
  nop                                               #  47    0xb51c3  1      OPC=nop             
  nop                                               #  48    0xb51c4  1      OPC=nop             
  nop                                               #  49    0xb51c5  1      OPC=nop             
  nop                                               #  50    0xb51c6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xb51c7  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0xb51c9  3      OPC=movl_m32_r32    
  nop                                               #  53    0xb51cc  1      OPC=nop             
  nop                                               #  54    0xb51cd  1      OPC=nop             
  nop                                               #  55    0xb51ce  1      OPC=nop             
  nop                                               #  56    0xb51cf  1      OPC=nop             
  nop                                               #  57    0xb51d0  1      OPC=nop             
  nop                                               #  58    0xb51d1  1      OPC=nop             
  nop                                               #  59    0xb51d2  1      OPC=nop             
  nop                                               #  60    0xb51d3  1      OPC=nop             
  nop                                               #  61    0xb51d4  1      OPC=nop             
  nop                                               #  62    0xb51d5  1      OPC=nop             
  nop                                               #  63    0xb51d6  1      OPC=nop             
  nop                                               #  64    0xb51d7  1      OPC=nop             
  nop                                               #  65    0xb51d8  1      OPC=nop             
  nop                                               #  66    0xb51d9  1      OPC=nop             
  nop                                               #  67    0xb51da  1      OPC=nop             
  nop                                               #  68    0xb51db  1      OPC=nop             
  nop                                               #  69    0xb51dc  1      OPC=nop             
  nop                                               #  70    0xb51dd  1      OPC=nop             
  nop                                               #  71    0xb51de  1      OPC=nop             
  nop                                               #  72    0xb51df  1      OPC=nop             
  nop                                               #  73    0xb51e0  1      OPC=nop             
  nop                                               #  74    0xb51e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb51e2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0xb51e7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0xb51ea  2      OPC=movl_r32_r32    
  nop                                               #  78    0xb51ec  1      OPC=nop             
  nop                                               #  79    0xb51ed  1      OPC=nop             
  nop                                               #  80    0xb51ee  1      OPC=nop             
  nop                                               #  81    0xb51ef  1      OPC=nop             
  nop                                               #  82    0xb51f0  1      OPC=nop             
  nop                                               #  83    0xb51f1  1      OPC=nop             
  nop                                               #  84    0xb51f2  1      OPC=nop             
  nop                                               #  85    0xb51f3  1      OPC=nop             
  nop                                               #  86    0xb51f4  1      OPC=nop             
  nop                                               #  87    0xb51f5  1      OPC=nop             
  nop                                               #  88    0xb51f6  1      OPC=nop             
  nop                                               #  89    0xb51f7  1      OPC=nop             
  nop                                               #  90    0xb51f8  1      OPC=nop             
  nop                                               #  91    0xb51f9  1      OPC=nop             
  nop                                               #  92    0xb51fa  1      OPC=nop             
  nop                                               #  93    0xb51fb  1      OPC=nop             
  nop                                               #  94    0xb51fc  1      OPC=nop             
  nop                                               #  95    0xb51fd  1      OPC=nop             
  nop                                               #  96    0xb51fe  1      OPC=nop             
  nop                                               #  97    0xb51ff  1      OPC=nop             
  nop                                               #  98    0xb5200  1      OPC=nop             
  nop                                               #  99    0xb5201  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0xb5202  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIwEC2EPij, .-_ZNSt7collateIwEC2EPij

