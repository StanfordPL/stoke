  .text
  .globl _ZNSt7collateIwEC1EPij
  .type _ZNSt7collateIwEC1EPij, @function

#! file-offset 0xf50c0
#! rip-offset  0xb50c0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC1EPij:                            #        0xb50c0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xb50c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xb50c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xb50c3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xb50c5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xb50c8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xb50cb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xb50cd  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb50cf  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xb50d7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xb50da  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xb50de  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xb50e0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xb50e4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb50e6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xb50eb  1      OPC=nop             
  nop                                               #  16    0xb50ec  1      OPC=nop             
  nop                                               #  17    0xb50ed  1      OPC=nop             
  nop                                               #  18    0xb50ee  1      OPC=nop             
  nop                                               #  19    0xb50ef  1      OPC=nop             
  nop                                               #  20    0xb50f0  1      OPC=nop             
  nop                                               #  21    0xb50f1  1      OPC=nop             
  nop                                               #  22    0xb50f2  1      OPC=nop             
  nop                                               #  23    0xb50f3  1      OPC=nop             
  nop                                               #  24    0xb50f4  1      OPC=nop             
  nop                                               #  25    0xb50f5  1      OPC=nop             
  nop                                               #  26    0xb50f6  1      OPC=nop             
  nop                                               #  27    0xb50f7  1      OPC=nop             
  nop                                               #  28    0xb50f8  1      OPC=nop             
  nop                                               #  29    0xb50f9  1      OPC=nop             
  nop                                               #  30    0xb50fa  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb50fb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xb5100  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb5102  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xb5107  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xb510a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xb510d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xb510e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xb5110  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xb5117  1      OPC=nop             
  nop                                               #  40    0xb5118  1      OPC=nop             
  nop                                               #  41    0xb5119  1      OPC=nop             
  nop                                               #  42    0xb511a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xb511b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xb511e  3      OPC=jmpq_r64        
  nop                                               #  45    0xb5121  1      OPC=nop             
  nop                                               #  46    0xb5122  1      OPC=nop             
  nop                                               #  47    0xb5123  1      OPC=nop             
  nop                                               #  48    0xb5124  1      OPC=nop             
  nop                                               #  49    0xb5125  1      OPC=nop             
  nop                                               #  50    0xb5126  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xb5127  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0xb5129  3      OPC=movl_m32_r32    
  nop                                               #  53    0xb512c  1      OPC=nop             
  nop                                               #  54    0xb512d  1      OPC=nop             
  nop                                               #  55    0xb512e  1      OPC=nop             
  nop                                               #  56    0xb512f  1      OPC=nop             
  nop                                               #  57    0xb5130  1      OPC=nop             
  nop                                               #  58    0xb5131  1      OPC=nop             
  nop                                               #  59    0xb5132  1      OPC=nop             
  nop                                               #  60    0xb5133  1      OPC=nop             
  nop                                               #  61    0xb5134  1      OPC=nop             
  nop                                               #  62    0xb5135  1      OPC=nop             
  nop                                               #  63    0xb5136  1      OPC=nop             
  nop                                               #  64    0xb5137  1      OPC=nop             
  nop                                               #  65    0xb5138  1      OPC=nop             
  nop                                               #  66    0xb5139  1      OPC=nop             
  nop                                               #  67    0xb513a  1      OPC=nop             
  nop                                               #  68    0xb513b  1      OPC=nop             
  nop                                               #  69    0xb513c  1      OPC=nop             
  nop                                               #  70    0xb513d  1      OPC=nop             
  nop                                               #  71    0xb513e  1      OPC=nop             
  nop                                               #  72    0xb513f  1      OPC=nop             
  nop                                               #  73    0xb5140  1      OPC=nop             
  nop                                               #  74    0xb5141  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb5142  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0xb5147  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0xb514a  2      OPC=movl_r32_r32    
  nop                                               #  78    0xb514c  1      OPC=nop             
  nop                                               #  79    0xb514d  1      OPC=nop             
  nop                                               #  80    0xb514e  1      OPC=nop             
  nop                                               #  81    0xb514f  1      OPC=nop             
  nop                                               #  82    0xb5150  1      OPC=nop             
  nop                                               #  83    0xb5151  1      OPC=nop             
  nop                                               #  84    0xb5152  1      OPC=nop             
  nop                                               #  85    0xb5153  1      OPC=nop             
  nop                                               #  86    0xb5154  1      OPC=nop             
  nop                                               #  87    0xb5155  1      OPC=nop             
  nop                                               #  88    0xb5156  1      OPC=nop             
  nop                                               #  89    0xb5157  1      OPC=nop             
  nop                                               #  90    0xb5158  1      OPC=nop             
  nop                                               #  91    0xb5159  1      OPC=nop             
  nop                                               #  92    0xb515a  1      OPC=nop             
  nop                                               #  93    0xb515b  1      OPC=nop             
  nop                                               #  94    0xb515c  1      OPC=nop             
  nop                                               #  95    0xb515d  1      OPC=nop             
  nop                                               #  96    0xb515e  1      OPC=nop             
  nop                                               #  97    0xb515f  1      OPC=nop             
  nop                                               #  98    0xb5160  1      OPC=nop             
  nop                                               #  99    0xb5161  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0xb5162  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIwEC1EPij, .-_ZNSt7collateIwEC1EPij

