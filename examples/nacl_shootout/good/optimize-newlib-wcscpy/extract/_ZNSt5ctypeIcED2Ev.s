  .text
  .globl _ZNSt5ctypeIcED2Ev
  .type _ZNSt5ctypeIcED2Ev, @function

#! file-offset 0x125860
#! rip-offset  0xe5860
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIcED2Ev:                                  #        0xe5860  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe5860  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe5861  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe5863  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe5866  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe5869  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe586c  2      OPC=movl_r32_r32    
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe586e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe5876  1      OPC=nop             
  nop                                                 #  9     0xe5877  1      OPC=nop             
  nop                                                 #  10    0xe5878  1      OPC=nop             
  nop                                                 #  11    0xe5879  1      OPC=nop             
  nop                                                 #  12    0xe587a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe587b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe5880  2      OPC=movl_r32_r32    
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe5882  6      OPC=cmpb_m8_imm8    
  je .L_e58a0                                         #  16    0xe5888  2      OPC=je_label        
  movl %ebx, %ebx                                     #  17    0xe588a  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edi                        #  18    0xe588c  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                    #  19    0xe5891  3      OPC=testq_r64_r64   
  je .L_e58a0                                         #  20    0xe5894  2      OPC=je_label        
  nop                                                 #  21    0xe5896  1      OPC=nop             
  nop                                                 #  22    0xe5897  1      OPC=nop             
  nop                                                 #  23    0xe5898  1      OPC=nop             
  nop                                                 #  24    0xe5899  1      OPC=nop             
  nop                                                 #  25    0xe589a  1      OPC=nop             
  callq ._ZdaPv                                       #  26    0xe589b  5      OPC=callq_label     
.L_e58a0:                                             #        0xe58a0  0      OPC=<label>         
  movl %ebx, %edi                                     #  27    0xe58a0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  28    0xe58a2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  29    0xe58a5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  30    0xe58a8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  31    0xe58a9  5      OPC=jmpq_label_1    
  nop                                                 #  32    0xe58ae  1      OPC=nop             
  nop                                                 #  33    0xe58af  1      OPC=nop             
  nop                                                 #  34    0xe58b0  1      OPC=nop             
  nop                                                 #  35    0xe58b1  1      OPC=nop             
  nop                                                 #  36    0xe58b2  1      OPC=nop             
  nop                                                 #  37    0xe58b3  1      OPC=nop             
  nop                                                 #  38    0xe58b4  1      OPC=nop             
  nop                                                 #  39    0xe58b5  1      OPC=nop             
  nop                                                 #  40    0xe58b6  1      OPC=nop             
  nop                                                 #  41    0xe58b7  1      OPC=nop             
  nop                                                 #  42    0xe58b8  1      OPC=nop             
  nop                                                 #  43    0xe58b9  1      OPC=nop             
  nop                                                 #  44    0xe58ba  1      OPC=nop             
  nop                                                 #  45    0xe58bb  1      OPC=nop             
  nop                                                 #  46    0xe58bc  1      OPC=nop             
  nop                                                 #  47    0xe58bd  1      OPC=nop             
  nop                                                 #  48    0xe58be  1      OPC=nop             
  nop                                                 #  49    0xe58bf  1      OPC=nop             
  movl %ebx, %edi                                     #  50    0xe58c0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  51    0xe58c2  4      OPC=movl_m32_r32    
  nop                                                 #  52    0xe58c6  1      OPC=nop             
  nop                                                 #  53    0xe58c7  1      OPC=nop             
  nop                                                 #  54    0xe58c8  1      OPC=nop             
  nop                                                 #  55    0xe58c9  1      OPC=nop             
  nop                                                 #  56    0xe58ca  1      OPC=nop             
  nop                                                 #  57    0xe58cb  1      OPC=nop             
  nop                                                 #  58    0xe58cc  1      OPC=nop             
  nop                                                 #  59    0xe58cd  1      OPC=nop             
  nop                                                 #  60    0xe58ce  1      OPC=nop             
  nop                                                 #  61    0xe58cf  1      OPC=nop             
  nop                                                 #  62    0xe58d0  1      OPC=nop             
  nop                                                 #  63    0xe58d1  1      OPC=nop             
  nop                                                 #  64    0xe58d2  1      OPC=nop             
  nop                                                 #  65    0xe58d3  1      OPC=nop             
  nop                                                 #  66    0xe58d4  1      OPC=nop             
  nop                                                 #  67    0xe58d5  1      OPC=nop             
  nop                                                 #  68    0xe58d6  1      OPC=nop             
  nop                                                 #  69    0xe58d7  1      OPC=nop             
  nop                                                 #  70    0xe58d8  1      OPC=nop             
  nop                                                 #  71    0xe58d9  1      OPC=nop             
  nop                                                 #  72    0xe58da  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  73    0xe58db  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  74    0xe58e0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  75    0xe58e4  2      OPC=movl_r32_r32    
  nop                                                 #  76    0xe58e6  1      OPC=nop             
  nop                                                 #  77    0xe58e7  1      OPC=nop             
  nop                                                 #  78    0xe58e8  1      OPC=nop             
  nop                                                 #  79    0xe58e9  1      OPC=nop             
  nop                                                 #  80    0xe58ea  1      OPC=nop             
  nop                                                 #  81    0xe58eb  1      OPC=nop             
  nop                                                 #  82    0xe58ec  1      OPC=nop             
  nop                                                 #  83    0xe58ed  1      OPC=nop             
  nop                                                 #  84    0xe58ee  1      OPC=nop             
  nop                                                 #  85    0xe58ef  1      OPC=nop             
  nop                                                 #  86    0xe58f0  1      OPC=nop             
  nop                                                 #  87    0xe58f1  1      OPC=nop             
  nop                                                 #  88    0xe58f2  1      OPC=nop             
  nop                                                 #  89    0xe58f3  1      OPC=nop             
  nop                                                 #  90    0xe58f4  1      OPC=nop             
  nop                                                 #  91    0xe58f5  1      OPC=nop             
  nop                                                 #  92    0xe58f6  1      OPC=nop             
  nop                                                 #  93    0xe58f7  1      OPC=nop             
  nop                                                 #  94    0xe58f8  1      OPC=nop             
  nop                                                 #  95    0xe58f9  1      OPC=nop             
  nop                                                 #  96    0xe58fa  1      OPC=nop             
  callq ._Unwind_Resume                               #  97    0xe58fb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIcED2Ev, .-_ZNSt5ctypeIcED2Ev

