  .text
  .globl _ZNSt14collate_bynameIcED1Ev
  .type _ZNSt14collate_bynameIcED1Ev, @function

#! file-offset 0xc08a0
#! rip-offset  0x808a0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED1Ev:                        #        0x808a0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x808a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x808a1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x808a3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x808a6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x808a9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x808ac  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x808ae  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x808b6  1      OPC=nop             
  nop                                                 #  9     0x808b7  1      OPC=nop             
  nop                                                 #  10    0x808b8  1      OPC=nop             
  nop                                                 #  11    0x808b9  1      OPC=nop             
  nop                                                 #  12    0x808ba  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x808bb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x808c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x808c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x808c5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x808c8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x808c9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x808ce  1      OPC=nop             
  nop                                                 #  20    0x808cf  1      OPC=nop             
  nop                                                 #  21    0x808d0  1      OPC=nop             
  nop                                                 #  22    0x808d1  1      OPC=nop             
  nop                                                 #  23    0x808d2  1      OPC=nop             
  nop                                                 #  24    0x808d3  1      OPC=nop             
  nop                                                 #  25    0x808d4  1      OPC=nop             
  nop                                                 #  26    0x808d5  1      OPC=nop             
  nop                                                 #  27    0x808d6  1      OPC=nop             
  nop                                                 #  28    0x808d7  1      OPC=nop             
  nop                                                 #  29    0x808d8  1      OPC=nop             
  nop                                                 #  30    0x808d9  1      OPC=nop             
  nop                                                 #  31    0x808da  1      OPC=nop             
  nop                                                 #  32    0x808db  1      OPC=nop             
  nop                                                 #  33    0x808dc  1      OPC=nop             
  nop                                                 #  34    0x808dd  1      OPC=nop             
  nop                                                 #  35    0x808de  1      OPC=nop             
  nop                                                 #  36    0x808df  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x808e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x808e2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x808e6  1      OPC=nop             
  nop                                                 #  40    0x808e7  1      OPC=nop             
  nop                                                 #  41    0x808e8  1      OPC=nop             
  nop                                                 #  42    0x808e9  1      OPC=nop             
  nop                                                 #  43    0x808ea  1      OPC=nop             
  nop                                                 #  44    0x808eb  1      OPC=nop             
  nop                                                 #  45    0x808ec  1      OPC=nop             
  nop                                                 #  46    0x808ed  1      OPC=nop             
  nop                                                 #  47    0x808ee  1      OPC=nop             
  nop                                                 #  48    0x808ef  1      OPC=nop             
  nop                                                 #  49    0x808f0  1      OPC=nop             
  nop                                                 #  50    0x808f1  1      OPC=nop             
  nop                                                 #  51    0x808f2  1      OPC=nop             
  nop                                                 #  52    0x808f3  1      OPC=nop             
  nop                                                 #  53    0x808f4  1      OPC=nop             
  nop                                                 #  54    0x808f5  1      OPC=nop             
  nop                                                 #  55    0x808f6  1      OPC=nop             
  nop                                                 #  56    0x808f7  1      OPC=nop             
  nop                                                 #  57    0x808f8  1      OPC=nop             
  nop                                                 #  58    0x808f9  1      OPC=nop             
  nop                                                 #  59    0x808fa  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x808fb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x80900  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x80904  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x80906  1      OPC=nop             
  nop                                                 #  64    0x80907  1      OPC=nop             
  nop                                                 #  65    0x80908  1      OPC=nop             
  nop                                                 #  66    0x80909  1      OPC=nop             
  nop                                                 #  67    0x8090a  1      OPC=nop             
  nop                                                 #  68    0x8090b  1      OPC=nop             
  nop                                                 #  69    0x8090c  1      OPC=nop             
  nop                                                 #  70    0x8090d  1      OPC=nop             
  nop                                                 #  71    0x8090e  1      OPC=nop             
  nop                                                 #  72    0x8090f  1      OPC=nop             
  nop                                                 #  73    0x80910  1      OPC=nop             
  nop                                                 #  74    0x80911  1      OPC=nop             
  nop                                                 #  75    0x80912  1      OPC=nop             
  nop                                                 #  76    0x80913  1      OPC=nop             
  nop                                                 #  77    0x80914  1      OPC=nop             
  nop                                                 #  78    0x80915  1      OPC=nop             
  nop                                                 #  79    0x80916  1      OPC=nop             
  nop                                                 #  80    0x80917  1      OPC=nop             
  nop                                                 #  81    0x80918  1      OPC=nop             
  nop                                                 #  82    0x80919  1      OPC=nop             
  nop                                                 #  83    0x8091a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x8091b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED1Ev, .-_ZNSt14collate_bynameIcED1Ev

