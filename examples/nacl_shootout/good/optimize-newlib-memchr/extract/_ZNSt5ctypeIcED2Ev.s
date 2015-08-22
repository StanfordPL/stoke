  .text
  .globl _ZNSt5ctypeIcED2Ev
  .type _ZNSt5ctypeIcED2Ev, @function

#! file-offset 0x126280
#! rip-offset  0xe6280
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIcED2Ev:                                  #        0xe6280  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe6280  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe6281  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe6283  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe6286  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe6289  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe628c  2      OPC=movl_r32_r32    
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe628e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe6296  1      OPC=nop             
  nop                                                 #  9     0xe6297  1      OPC=nop             
  nop                                                 #  10    0xe6298  1      OPC=nop             
  nop                                                 #  11    0xe6299  1      OPC=nop             
  nop                                                 #  12    0xe629a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe629b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe62a0  2      OPC=movl_r32_r32    
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe62a2  6      OPC=cmpb_m8_imm8    
  je .L_e62c0                                         #  16    0xe62a8  2      OPC=je_label        
  movl %ebx, %ebx                                     #  17    0xe62aa  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edi                        #  18    0xe62ac  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                    #  19    0xe62b1  3      OPC=testq_r64_r64   
  je .L_e62c0                                         #  20    0xe62b4  2      OPC=je_label        
  nop                                                 #  21    0xe62b6  1      OPC=nop             
  nop                                                 #  22    0xe62b7  1      OPC=nop             
  nop                                                 #  23    0xe62b8  1      OPC=nop             
  nop                                                 #  24    0xe62b9  1      OPC=nop             
  nop                                                 #  25    0xe62ba  1      OPC=nop             
  callq ._ZdaPv                                       #  26    0xe62bb  5      OPC=callq_label     
.L_e62c0:                                             #        0xe62c0  0      OPC=<label>         
  movl %ebx, %edi                                     #  27    0xe62c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  28    0xe62c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  29    0xe62c5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  30    0xe62c8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  31    0xe62c9  5      OPC=jmpq_label_1    
  nop                                                 #  32    0xe62ce  1      OPC=nop             
  nop                                                 #  33    0xe62cf  1      OPC=nop             
  nop                                                 #  34    0xe62d0  1      OPC=nop             
  nop                                                 #  35    0xe62d1  1      OPC=nop             
  nop                                                 #  36    0xe62d2  1      OPC=nop             
  nop                                                 #  37    0xe62d3  1      OPC=nop             
  nop                                                 #  38    0xe62d4  1      OPC=nop             
  nop                                                 #  39    0xe62d5  1      OPC=nop             
  nop                                                 #  40    0xe62d6  1      OPC=nop             
  nop                                                 #  41    0xe62d7  1      OPC=nop             
  nop                                                 #  42    0xe62d8  1      OPC=nop             
  nop                                                 #  43    0xe62d9  1      OPC=nop             
  nop                                                 #  44    0xe62da  1      OPC=nop             
  nop                                                 #  45    0xe62db  1      OPC=nop             
  nop                                                 #  46    0xe62dc  1      OPC=nop             
  nop                                                 #  47    0xe62dd  1      OPC=nop             
  nop                                                 #  48    0xe62de  1      OPC=nop             
  nop                                                 #  49    0xe62df  1      OPC=nop             
  movl %ebx, %edi                                     #  50    0xe62e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  51    0xe62e2  4      OPC=movl_m32_r32    
  nop                                                 #  52    0xe62e6  1      OPC=nop             
  nop                                                 #  53    0xe62e7  1      OPC=nop             
  nop                                                 #  54    0xe62e8  1      OPC=nop             
  nop                                                 #  55    0xe62e9  1      OPC=nop             
  nop                                                 #  56    0xe62ea  1      OPC=nop             
  nop                                                 #  57    0xe62eb  1      OPC=nop             
  nop                                                 #  58    0xe62ec  1      OPC=nop             
  nop                                                 #  59    0xe62ed  1      OPC=nop             
  nop                                                 #  60    0xe62ee  1      OPC=nop             
  nop                                                 #  61    0xe62ef  1      OPC=nop             
  nop                                                 #  62    0xe62f0  1      OPC=nop             
  nop                                                 #  63    0xe62f1  1      OPC=nop             
  nop                                                 #  64    0xe62f2  1      OPC=nop             
  nop                                                 #  65    0xe62f3  1      OPC=nop             
  nop                                                 #  66    0xe62f4  1      OPC=nop             
  nop                                                 #  67    0xe62f5  1      OPC=nop             
  nop                                                 #  68    0xe62f6  1      OPC=nop             
  nop                                                 #  69    0xe62f7  1      OPC=nop             
  nop                                                 #  70    0xe62f8  1      OPC=nop             
  nop                                                 #  71    0xe62f9  1      OPC=nop             
  nop                                                 #  72    0xe62fa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  73    0xe62fb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  74    0xe6300  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  75    0xe6304  2      OPC=movl_r32_r32    
  nop                                                 #  76    0xe6306  1      OPC=nop             
  nop                                                 #  77    0xe6307  1      OPC=nop             
  nop                                                 #  78    0xe6308  1      OPC=nop             
  nop                                                 #  79    0xe6309  1      OPC=nop             
  nop                                                 #  80    0xe630a  1      OPC=nop             
  nop                                                 #  81    0xe630b  1      OPC=nop             
  nop                                                 #  82    0xe630c  1      OPC=nop             
  nop                                                 #  83    0xe630d  1      OPC=nop             
  nop                                                 #  84    0xe630e  1      OPC=nop             
  nop                                                 #  85    0xe630f  1      OPC=nop             
  nop                                                 #  86    0xe6310  1      OPC=nop             
  nop                                                 #  87    0xe6311  1      OPC=nop             
  nop                                                 #  88    0xe6312  1      OPC=nop             
  nop                                                 #  89    0xe6313  1      OPC=nop             
  nop                                                 #  90    0xe6314  1      OPC=nop             
  nop                                                 #  91    0xe6315  1      OPC=nop             
  nop                                                 #  92    0xe6316  1      OPC=nop             
  nop                                                 #  93    0xe6317  1      OPC=nop             
  nop                                                 #  94    0xe6318  1      OPC=nop             
  nop                                                 #  95    0xe6319  1      OPC=nop             
  nop                                                 #  96    0xe631a  1      OPC=nop             
  callq ._Unwind_Resume                               #  97    0xe631b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIcED2Ev, .-_ZNSt5ctypeIcED2Ev

