  .text
  .globl _ZNSt14collate_bynameIcED1Ev
  .type _ZNSt14collate_bynameIcED1Ev, @function

#! file-offset 0xc05a0
#! rip-offset  0x805a0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED1Ev:                        #        0x805a0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x805a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x805a1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x805a3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x805a6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x805a9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x805ac  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x805ae  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x805b6  1      OPC=nop             
  nop                                                 #  9     0x805b7  1      OPC=nop             
  nop                                                 #  10    0x805b8  1      OPC=nop             
  nop                                                 #  11    0x805b9  1      OPC=nop             
  nop                                                 #  12    0x805ba  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x805bb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x805c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x805c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x805c5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x805c8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x805c9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x805ce  1      OPC=nop             
  nop                                                 #  20    0x805cf  1      OPC=nop             
  nop                                                 #  21    0x805d0  1      OPC=nop             
  nop                                                 #  22    0x805d1  1      OPC=nop             
  nop                                                 #  23    0x805d2  1      OPC=nop             
  nop                                                 #  24    0x805d3  1      OPC=nop             
  nop                                                 #  25    0x805d4  1      OPC=nop             
  nop                                                 #  26    0x805d5  1      OPC=nop             
  nop                                                 #  27    0x805d6  1      OPC=nop             
  nop                                                 #  28    0x805d7  1      OPC=nop             
  nop                                                 #  29    0x805d8  1      OPC=nop             
  nop                                                 #  30    0x805d9  1      OPC=nop             
  nop                                                 #  31    0x805da  1      OPC=nop             
  nop                                                 #  32    0x805db  1      OPC=nop             
  nop                                                 #  33    0x805dc  1      OPC=nop             
  nop                                                 #  34    0x805dd  1      OPC=nop             
  nop                                                 #  35    0x805de  1      OPC=nop             
  nop                                                 #  36    0x805df  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x805e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x805e2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x805e6  1      OPC=nop             
  nop                                                 #  40    0x805e7  1      OPC=nop             
  nop                                                 #  41    0x805e8  1      OPC=nop             
  nop                                                 #  42    0x805e9  1      OPC=nop             
  nop                                                 #  43    0x805ea  1      OPC=nop             
  nop                                                 #  44    0x805eb  1      OPC=nop             
  nop                                                 #  45    0x805ec  1      OPC=nop             
  nop                                                 #  46    0x805ed  1      OPC=nop             
  nop                                                 #  47    0x805ee  1      OPC=nop             
  nop                                                 #  48    0x805ef  1      OPC=nop             
  nop                                                 #  49    0x805f0  1      OPC=nop             
  nop                                                 #  50    0x805f1  1      OPC=nop             
  nop                                                 #  51    0x805f2  1      OPC=nop             
  nop                                                 #  52    0x805f3  1      OPC=nop             
  nop                                                 #  53    0x805f4  1      OPC=nop             
  nop                                                 #  54    0x805f5  1      OPC=nop             
  nop                                                 #  55    0x805f6  1      OPC=nop             
  nop                                                 #  56    0x805f7  1      OPC=nop             
  nop                                                 #  57    0x805f8  1      OPC=nop             
  nop                                                 #  58    0x805f9  1      OPC=nop             
  nop                                                 #  59    0x805fa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x805fb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x80600  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x80604  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x80606  1      OPC=nop             
  nop                                                 #  64    0x80607  1      OPC=nop             
  nop                                                 #  65    0x80608  1      OPC=nop             
  nop                                                 #  66    0x80609  1      OPC=nop             
  nop                                                 #  67    0x8060a  1      OPC=nop             
  nop                                                 #  68    0x8060b  1      OPC=nop             
  nop                                                 #  69    0x8060c  1      OPC=nop             
  nop                                                 #  70    0x8060d  1      OPC=nop             
  nop                                                 #  71    0x8060e  1      OPC=nop             
  nop                                                 #  72    0x8060f  1      OPC=nop             
  nop                                                 #  73    0x80610  1      OPC=nop             
  nop                                                 #  74    0x80611  1      OPC=nop             
  nop                                                 #  75    0x80612  1      OPC=nop             
  nop                                                 #  76    0x80613  1      OPC=nop             
  nop                                                 #  77    0x80614  1      OPC=nop             
  nop                                                 #  78    0x80615  1      OPC=nop             
  nop                                                 #  79    0x80616  1      OPC=nop             
  nop                                                 #  80    0x80617  1      OPC=nop             
  nop                                                 #  81    0x80618  1      OPC=nop             
  nop                                                 #  82    0x80619  1      OPC=nop             
  nop                                                 #  83    0x8061a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x8061b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED1Ev, .-_ZNSt14collate_bynameIcED1Ev

