  .text
  .globl _ZNSt7collateIcED0Ev
  .type _ZNSt7collateIcED0Ev, @function

#! file-offset 0xbb580
#! rip-offset  0x7b580
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED0Ev:                                #        0x7b580  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b580  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b581  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b583  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b586  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b589  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b58c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7b58e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b596  1      OPC=nop             
  nop                                                 #  9     0x7b597  1      OPC=nop             
  nop                                                 #  10    0x7b598  1      OPC=nop             
  nop                                                 #  11    0x7b599  1      OPC=nop             
  nop                                                 #  12    0x7b59a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b59b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b5a0  2      OPC=movl_r32_r32    
  nop                                                 #  15    0x7b5a2  1      OPC=nop             
  nop                                                 #  16    0x7b5a3  1      OPC=nop             
  nop                                                 #  17    0x7b5a4  1      OPC=nop             
  nop                                                 #  18    0x7b5a5  1      OPC=nop             
  nop                                                 #  19    0x7b5a6  1      OPC=nop             
  nop                                                 #  20    0x7b5a7  1      OPC=nop             
  nop                                                 #  21    0x7b5a8  1      OPC=nop             
  nop                                                 #  22    0x7b5a9  1      OPC=nop             
  nop                                                 #  23    0x7b5aa  1      OPC=nop             
  nop                                                 #  24    0x7b5ab  1      OPC=nop             
  nop                                                 #  25    0x7b5ac  1      OPC=nop             
  nop                                                 #  26    0x7b5ad  1      OPC=nop             
  nop                                                 #  27    0x7b5ae  1      OPC=nop             
  nop                                                 #  28    0x7b5af  1      OPC=nop             
  nop                                                 #  29    0x7b5b0  1      OPC=nop             
  nop                                                 #  30    0x7b5b1  1      OPC=nop             
  nop                                                 #  31    0x7b5b2  1      OPC=nop             
  nop                                                 #  32    0x7b5b3  1      OPC=nop             
  nop                                                 #  33    0x7b5b4  1      OPC=nop             
  nop                                                 #  34    0x7b5b5  1      OPC=nop             
  nop                                                 #  35    0x7b5b6  1      OPC=nop             
  nop                                                 #  36    0x7b5b7  1      OPC=nop             
  nop                                                 #  37    0x7b5b8  1      OPC=nop             
  nop                                                 #  38    0x7b5b9  1      OPC=nop             
  nop                                                 #  39    0x7b5ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0x7b5bb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0x7b5c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0x7b5c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0x7b5c5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0x7b5c8  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0x7b5c9  5      OPC=jmpq_label_1    
  nop                                                 #  46    0x7b5ce  1      OPC=nop             
  nop                                                 #  47    0x7b5cf  1      OPC=nop             
  nop                                                 #  48    0x7b5d0  1      OPC=nop             
  nop                                                 #  49    0x7b5d1  1      OPC=nop             
  nop                                                 #  50    0x7b5d2  1      OPC=nop             
  nop                                                 #  51    0x7b5d3  1      OPC=nop             
  nop                                                 #  52    0x7b5d4  1      OPC=nop             
  nop                                                 #  53    0x7b5d5  1      OPC=nop             
  nop                                                 #  54    0x7b5d6  1      OPC=nop             
  nop                                                 #  55    0x7b5d7  1      OPC=nop             
  nop                                                 #  56    0x7b5d8  1      OPC=nop             
  nop                                                 #  57    0x7b5d9  1      OPC=nop             
  nop                                                 #  58    0x7b5da  1      OPC=nop             
  nop                                                 #  59    0x7b5db  1      OPC=nop             
  nop                                                 #  60    0x7b5dc  1      OPC=nop             
  nop                                                 #  61    0x7b5dd  1      OPC=nop             
  nop                                                 #  62    0x7b5de  1      OPC=nop             
  nop                                                 #  63    0x7b5df  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0x7b5e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0x7b5e2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0x7b5e6  1      OPC=nop             
  nop                                                 #  67    0x7b5e7  1      OPC=nop             
  nop                                                 #  68    0x7b5e8  1      OPC=nop             
  nop                                                 #  69    0x7b5e9  1      OPC=nop             
  nop                                                 #  70    0x7b5ea  1      OPC=nop             
  nop                                                 #  71    0x7b5eb  1      OPC=nop             
  nop                                                 #  72    0x7b5ec  1      OPC=nop             
  nop                                                 #  73    0x7b5ed  1      OPC=nop             
  nop                                                 #  74    0x7b5ee  1      OPC=nop             
  nop                                                 #  75    0x7b5ef  1      OPC=nop             
  nop                                                 #  76    0x7b5f0  1      OPC=nop             
  nop                                                 #  77    0x7b5f1  1      OPC=nop             
  nop                                                 #  78    0x7b5f2  1      OPC=nop             
  nop                                                 #  79    0x7b5f3  1      OPC=nop             
  nop                                                 #  80    0x7b5f4  1      OPC=nop             
  nop                                                 #  81    0x7b5f5  1      OPC=nop             
  nop                                                 #  82    0x7b5f6  1      OPC=nop             
  nop                                                 #  83    0x7b5f7  1      OPC=nop             
  nop                                                 #  84    0x7b5f8  1      OPC=nop             
  nop                                                 #  85    0x7b5f9  1      OPC=nop             
  nop                                                 #  86    0x7b5fa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0x7b5fb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0x7b600  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0x7b604  2      OPC=movl_r32_r32    
  nop                                                 #  90    0x7b606  1      OPC=nop             
  nop                                                 #  91    0x7b607  1      OPC=nop             
  nop                                                 #  92    0x7b608  1      OPC=nop             
  nop                                                 #  93    0x7b609  1      OPC=nop             
  nop                                                 #  94    0x7b60a  1      OPC=nop             
  nop                                                 #  95    0x7b60b  1      OPC=nop             
  nop                                                 #  96    0x7b60c  1      OPC=nop             
  nop                                                 #  97    0x7b60d  1      OPC=nop             
  nop                                                 #  98    0x7b60e  1      OPC=nop             
  nop                                                 #  99    0x7b60f  1      OPC=nop             
  nop                                                 #  100   0x7b610  1      OPC=nop             
  nop                                                 #  101   0x7b611  1      OPC=nop             
  nop                                                 #  102   0x7b612  1      OPC=nop             
  nop                                                 #  103   0x7b613  1      OPC=nop             
  nop                                                 #  104   0x7b614  1      OPC=nop             
  nop                                                 #  105   0x7b615  1      OPC=nop             
  nop                                                 #  106   0x7b616  1      OPC=nop             
  nop                                                 #  107   0x7b617  1      OPC=nop             
  nop                                                 #  108   0x7b618  1      OPC=nop             
  nop                                                 #  109   0x7b619  1      OPC=nop             
  nop                                                 #  110   0x7b61a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0x7b61b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED0Ev, .-_ZNSt7collateIcED0Ev

