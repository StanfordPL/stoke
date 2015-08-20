  .text
  .globl _ZNSt7collateIcED0Ev
  .type _ZNSt7collateIcED0Ev, @function

#! file-offset 0xbb880
#! rip-offset  0x7b880
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED0Ev:                                #        0x7b880  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b880  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b881  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b883  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b886  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b889  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b88c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7b88e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b896  1      OPC=nop             
  nop                                                 #  9     0x7b897  1      OPC=nop             
  nop                                                 #  10    0x7b898  1      OPC=nop             
  nop                                                 #  11    0x7b899  1      OPC=nop             
  nop                                                 #  12    0x7b89a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b89b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b8a0  2      OPC=movl_r32_r32    
  nop                                                 #  15    0x7b8a2  1      OPC=nop             
  nop                                                 #  16    0x7b8a3  1      OPC=nop             
  nop                                                 #  17    0x7b8a4  1      OPC=nop             
  nop                                                 #  18    0x7b8a5  1      OPC=nop             
  nop                                                 #  19    0x7b8a6  1      OPC=nop             
  nop                                                 #  20    0x7b8a7  1      OPC=nop             
  nop                                                 #  21    0x7b8a8  1      OPC=nop             
  nop                                                 #  22    0x7b8a9  1      OPC=nop             
  nop                                                 #  23    0x7b8aa  1      OPC=nop             
  nop                                                 #  24    0x7b8ab  1      OPC=nop             
  nop                                                 #  25    0x7b8ac  1      OPC=nop             
  nop                                                 #  26    0x7b8ad  1      OPC=nop             
  nop                                                 #  27    0x7b8ae  1      OPC=nop             
  nop                                                 #  28    0x7b8af  1      OPC=nop             
  nop                                                 #  29    0x7b8b0  1      OPC=nop             
  nop                                                 #  30    0x7b8b1  1      OPC=nop             
  nop                                                 #  31    0x7b8b2  1      OPC=nop             
  nop                                                 #  32    0x7b8b3  1      OPC=nop             
  nop                                                 #  33    0x7b8b4  1      OPC=nop             
  nop                                                 #  34    0x7b8b5  1      OPC=nop             
  nop                                                 #  35    0x7b8b6  1      OPC=nop             
  nop                                                 #  36    0x7b8b7  1      OPC=nop             
  nop                                                 #  37    0x7b8b8  1      OPC=nop             
  nop                                                 #  38    0x7b8b9  1      OPC=nop             
  nop                                                 #  39    0x7b8ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0x7b8bb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0x7b8c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0x7b8c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0x7b8c5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0x7b8c8  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0x7b8c9  5      OPC=jmpq_label_1    
  nop                                                 #  46    0x7b8ce  1      OPC=nop             
  nop                                                 #  47    0x7b8cf  1      OPC=nop             
  nop                                                 #  48    0x7b8d0  1      OPC=nop             
  nop                                                 #  49    0x7b8d1  1      OPC=nop             
  nop                                                 #  50    0x7b8d2  1      OPC=nop             
  nop                                                 #  51    0x7b8d3  1      OPC=nop             
  nop                                                 #  52    0x7b8d4  1      OPC=nop             
  nop                                                 #  53    0x7b8d5  1      OPC=nop             
  nop                                                 #  54    0x7b8d6  1      OPC=nop             
  nop                                                 #  55    0x7b8d7  1      OPC=nop             
  nop                                                 #  56    0x7b8d8  1      OPC=nop             
  nop                                                 #  57    0x7b8d9  1      OPC=nop             
  nop                                                 #  58    0x7b8da  1      OPC=nop             
  nop                                                 #  59    0x7b8db  1      OPC=nop             
  nop                                                 #  60    0x7b8dc  1      OPC=nop             
  nop                                                 #  61    0x7b8dd  1      OPC=nop             
  nop                                                 #  62    0x7b8de  1      OPC=nop             
  nop                                                 #  63    0x7b8df  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0x7b8e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0x7b8e2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0x7b8e6  1      OPC=nop             
  nop                                                 #  67    0x7b8e7  1      OPC=nop             
  nop                                                 #  68    0x7b8e8  1      OPC=nop             
  nop                                                 #  69    0x7b8e9  1      OPC=nop             
  nop                                                 #  70    0x7b8ea  1      OPC=nop             
  nop                                                 #  71    0x7b8eb  1      OPC=nop             
  nop                                                 #  72    0x7b8ec  1      OPC=nop             
  nop                                                 #  73    0x7b8ed  1      OPC=nop             
  nop                                                 #  74    0x7b8ee  1      OPC=nop             
  nop                                                 #  75    0x7b8ef  1      OPC=nop             
  nop                                                 #  76    0x7b8f0  1      OPC=nop             
  nop                                                 #  77    0x7b8f1  1      OPC=nop             
  nop                                                 #  78    0x7b8f2  1      OPC=nop             
  nop                                                 #  79    0x7b8f3  1      OPC=nop             
  nop                                                 #  80    0x7b8f4  1      OPC=nop             
  nop                                                 #  81    0x7b8f5  1      OPC=nop             
  nop                                                 #  82    0x7b8f6  1      OPC=nop             
  nop                                                 #  83    0x7b8f7  1      OPC=nop             
  nop                                                 #  84    0x7b8f8  1      OPC=nop             
  nop                                                 #  85    0x7b8f9  1      OPC=nop             
  nop                                                 #  86    0x7b8fa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0x7b8fb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0x7b900  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0x7b904  2      OPC=movl_r32_r32    
  nop                                                 #  90    0x7b906  1      OPC=nop             
  nop                                                 #  91    0x7b907  1      OPC=nop             
  nop                                                 #  92    0x7b908  1      OPC=nop             
  nop                                                 #  93    0x7b909  1      OPC=nop             
  nop                                                 #  94    0x7b90a  1      OPC=nop             
  nop                                                 #  95    0x7b90b  1      OPC=nop             
  nop                                                 #  96    0x7b90c  1      OPC=nop             
  nop                                                 #  97    0x7b90d  1      OPC=nop             
  nop                                                 #  98    0x7b90e  1      OPC=nop             
  nop                                                 #  99    0x7b90f  1      OPC=nop             
  nop                                                 #  100   0x7b910  1      OPC=nop             
  nop                                                 #  101   0x7b911  1      OPC=nop             
  nop                                                 #  102   0x7b912  1      OPC=nop             
  nop                                                 #  103   0x7b913  1      OPC=nop             
  nop                                                 #  104   0x7b914  1      OPC=nop             
  nop                                                 #  105   0x7b915  1      OPC=nop             
  nop                                                 #  106   0x7b916  1      OPC=nop             
  nop                                                 #  107   0x7b917  1      OPC=nop             
  nop                                                 #  108   0x7b918  1      OPC=nop             
  nop                                                 #  109   0x7b919  1      OPC=nop             
  nop                                                 #  110   0x7b91a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0x7b91b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED0Ev, .-_ZNSt7collateIcED0Ev

