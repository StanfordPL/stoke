  .text
  .globl _ZNSt7collateIcED2Ev
  .type _ZNSt7collateIcED2Ev, @function

#! file-offset 0xbb9a0
#! rip-offset  0x7b9a0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED2Ev:                                #        0x7b9a0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b9a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b9a1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b9a3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b9a6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b9a9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b9ac  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7b9ae  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b9b6  1      OPC=nop             
  nop                                                 #  9     0x7b9b7  1      OPC=nop             
  nop                                                 #  10    0x7b9b8  1      OPC=nop             
  nop                                                 #  11    0x7b9b9  1      OPC=nop             
  nop                                                 #  12    0x7b9ba  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b9bb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b9c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7b9c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7b9c5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7b9c8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7b9c9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7b9ce  1      OPC=nop             
  nop                                                 #  20    0x7b9cf  1      OPC=nop             
  nop                                                 #  21    0x7b9d0  1      OPC=nop             
  nop                                                 #  22    0x7b9d1  1      OPC=nop             
  nop                                                 #  23    0x7b9d2  1      OPC=nop             
  nop                                                 #  24    0x7b9d3  1      OPC=nop             
  nop                                                 #  25    0x7b9d4  1      OPC=nop             
  nop                                                 #  26    0x7b9d5  1      OPC=nop             
  nop                                                 #  27    0x7b9d6  1      OPC=nop             
  nop                                                 #  28    0x7b9d7  1      OPC=nop             
  nop                                                 #  29    0x7b9d8  1      OPC=nop             
  nop                                                 #  30    0x7b9d9  1      OPC=nop             
  nop                                                 #  31    0x7b9da  1      OPC=nop             
  nop                                                 #  32    0x7b9db  1      OPC=nop             
  nop                                                 #  33    0x7b9dc  1      OPC=nop             
  nop                                                 #  34    0x7b9dd  1      OPC=nop             
  nop                                                 #  35    0x7b9de  1      OPC=nop             
  nop                                                 #  36    0x7b9df  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7b9e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7b9e2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7b9e6  1      OPC=nop             
  nop                                                 #  40    0x7b9e7  1      OPC=nop             
  nop                                                 #  41    0x7b9e8  1      OPC=nop             
  nop                                                 #  42    0x7b9e9  1      OPC=nop             
  nop                                                 #  43    0x7b9ea  1      OPC=nop             
  nop                                                 #  44    0x7b9eb  1      OPC=nop             
  nop                                                 #  45    0x7b9ec  1      OPC=nop             
  nop                                                 #  46    0x7b9ed  1      OPC=nop             
  nop                                                 #  47    0x7b9ee  1      OPC=nop             
  nop                                                 #  48    0x7b9ef  1      OPC=nop             
  nop                                                 #  49    0x7b9f0  1      OPC=nop             
  nop                                                 #  50    0x7b9f1  1      OPC=nop             
  nop                                                 #  51    0x7b9f2  1      OPC=nop             
  nop                                                 #  52    0x7b9f3  1      OPC=nop             
  nop                                                 #  53    0x7b9f4  1      OPC=nop             
  nop                                                 #  54    0x7b9f5  1      OPC=nop             
  nop                                                 #  55    0x7b9f6  1      OPC=nop             
  nop                                                 #  56    0x7b9f7  1      OPC=nop             
  nop                                                 #  57    0x7b9f8  1      OPC=nop             
  nop                                                 #  58    0x7b9f9  1      OPC=nop             
  nop                                                 #  59    0x7b9fa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7b9fb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7ba00  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7ba04  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7ba06  1      OPC=nop             
  nop                                                 #  64    0x7ba07  1      OPC=nop             
  nop                                                 #  65    0x7ba08  1      OPC=nop             
  nop                                                 #  66    0x7ba09  1      OPC=nop             
  nop                                                 #  67    0x7ba0a  1      OPC=nop             
  nop                                                 #  68    0x7ba0b  1      OPC=nop             
  nop                                                 #  69    0x7ba0c  1      OPC=nop             
  nop                                                 #  70    0x7ba0d  1      OPC=nop             
  nop                                                 #  71    0x7ba0e  1      OPC=nop             
  nop                                                 #  72    0x7ba0f  1      OPC=nop             
  nop                                                 #  73    0x7ba10  1      OPC=nop             
  nop                                                 #  74    0x7ba11  1      OPC=nop             
  nop                                                 #  75    0x7ba12  1      OPC=nop             
  nop                                                 #  76    0x7ba13  1      OPC=nop             
  nop                                                 #  77    0x7ba14  1      OPC=nop             
  nop                                                 #  78    0x7ba15  1      OPC=nop             
  nop                                                 #  79    0x7ba16  1      OPC=nop             
  nop                                                 #  80    0x7ba17  1      OPC=nop             
  nop                                                 #  81    0x7ba18  1      OPC=nop             
  nop                                                 #  82    0x7ba19  1      OPC=nop             
  nop                                                 #  83    0x7ba1a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7ba1b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED2Ev, .-_ZNSt7collateIcED2Ev

