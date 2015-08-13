  .text
  .globl _ZNSt7collateIcEC2EPij
  .type _ZNSt7collateIcEC2EPij, @function

#! file-offset 0xbc0a0
#! rip-offset  0x7c0a0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC2EPij:                            #        0x7c0a0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x7c0a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0x7c0a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0x7c0a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0x7c0a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0x7c0a8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0x7c0ab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0x7c0ad  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7c0af  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0x7c0b7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0x7c0ba  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0x7c0be  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0x7c0c0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0x7c0c4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7c0c6  5      OPC=movl_m32_r32    
  nop                                               #  15    0x7c0cb  1      OPC=nop             
  nop                                               #  16    0x7c0cc  1      OPC=nop             
  nop                                               #  17    0x7c0cd  1      OPC=nop             
  nop                                               #  18    0x7c0ce  1      OPC=nop             
  nop                                               #  19    0x7c0cf  1      OPC=nop             
  nop                                               #  20    0x7c0d0  1      OPC=nop             
  nop                                               #  21    0x7c0d1  1      OPC=nop             
  nop                                               #  22    0x7c0d2  1      OPC=nop             
  nop                                               #  23    0x7c0d3  1      OPC=nop             
  nop                                               #  24    0x7c0d4  1      OPC=nop             
  nop                                               #  25    0x7c0d5  1      OPC=nop             
  nop                                               #  26    0x7c0d6  1      OPC=nop             
  nop                                               #  27    0x7c0d7  1      OPC=nop             
  nop                                               #  28    0x7c0d8  1      OPC=nop             
  nop                                               #  29    0x7c0d9  1      OPC=nop             
  nop                                               #  30    0x7c0da  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7c0db  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0x7c0e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7c0e2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0x7c0e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0x7c0ea  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0x7c0ed  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0x7c0ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0x7c0f0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0x7c0f7  1      OPC=nop             
  nop                                               #  40    0x7c0f8  1      OPC=nop             
  nop                                               #  41    0x7c0f9  1      OPC=nop             
  nop                                               #  42    0x7c0fa  1      OPC=nop             
  addq %r15, %r11                                   #  43    0x7c0fb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0x7c0fe  3      OPC=jmpq_r64        
  nop                                               #  45    0x7c101  1      OPC=nop             
  nop                                               #  46    0x7c102  1      OPC=nop             
  nop                                               #  47    0x7c103  1      OPC=nop             
  nop                                               #  48    0x7c104  1      OPC=nop             
  nop                                               #  49    0x7c105  1      OPC=nop             
  nop                                               #  50    0x7c106  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0x7c107  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0x7c109  3      OPC=movl_m32_r32    
  nop                                               #  53    0x7c10c  1      OPC=nop             
  nop                                               #  54    0x7c10d  1      OPC=nop             
  nop                                               #  55    0x7c10e  1      OPC=nop             
  nop                                               #  56    0x7c10f  1      OPC=nop             
  nop                                               #  57    0x7c110  1      OPC=nop             
  nop                                               #  58    0x7c111  1      OPC=nop             
  nop                                               #  59    0x7c112  1      OPC=nop             
  nop                                               #  60    0x7c113  1      OPC=nop             
  nop                                               #  61    0x7c114  1      OPC=nop             
  nop                                               #  62    0x7c115  1      OPC=nop             
  nop                                               #  63    0x7c116  1      OPC=nop             
  nop                                               #  64    0x7c117  1      OPC=nop             
  nop                                               #  65    0x7c118  1      OPC=nop             
  nop                                               #  66    0x7c119  1      OPC=nop             
  nop                                               #  67    0x7c11a  1      OPC=nop             
  nop                                               #  68    0x7c11b  1      OPC=nop             
  nop                                               #  69    0x7c11c  1      OPC=nop             
  nop                                               #  70    0x7c11d  1      OPC=nop             
  nop                                               #  71    0x7c11e  1      OPC=nop             
  nop                                               #  72    0x7c11f  1      OPC=nop             
  nop                                               #  73    0x7c120  1      OPC=nop             
  nop                                               #  74    0x7c121  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7c122  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0x7c127  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0x7c12a  2      OPC=movl_r32_r32    
  nop                                               #  78    0x7c12c  1      OPC=nop             
  nop                                               #  79    0x7c12d  1      OPC=nop             
  nop                                               #  80    0x7c12e  1      OPC=nop             
  nop                                               #  81    0x7c12f  1      OPC=nop             
  nop                                               #  82    0x7c130  1      OPC=nop             
  nop                                               #  83    0x7c131  1      OPC=nop             
  nop                                               #  84    0x7c132  1      OPC=nop             
  nop                                               #  85    0x7c133  1      OPC=nop             
  nop                                               #  86    0x7c134  1      OPC=nop             
  nop                                               #  87    0x7c135  1      OPC=nop             
  nop                                               #  88    0x7c136  1      OPC=nop             
  nop                                               #  89    0x7c137  1      OPC=nop             
  nop                                               #  90    0x7c138  1      OPC=nop             
  nop                                               #  91    0x7c139  1      OPC=nop             
  nop                                               #  92    0x7c13a  1      OPC=nop             
  nop                                               #  93    0x7c13b  1      OPC=nop             
  nop                                               #  94    0x7c13c  1      OPC=nop             
  nop                                               #  95    0x7c13d  1      OPC=nop             
  nop                                               #  96    0x7c13e  1      OPC=nop             
  nop                                               #  97    0x7c13f  1      OPC=nop             
  nop                                               #  98    0x7c140  1      OPC=nop             
  nop                                               #  99    0x7c141  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0x7c142  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIcEC2EPij, .-_ZNSt7collateIcEC2EPij

