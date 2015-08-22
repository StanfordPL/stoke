  .text
  .globl _ZNSt7collateIcED2Ev
  .type _ZNSt7collateIcED2Ev, @function

#! file-offset 0xbc0c0
#! rip-offset  0x7c0c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED2Ev:                                #        0x7c0c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7c0c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7c0c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7c0c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7c0c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7c0c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7c0cc  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7c0ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7c0d6  1      OPC=nop             
  nop                                                 #  9     0x7c0d7  1      OPC=nop             
  nop                                                 #  10    0x7c0d8  1      OPC=nop             
  nop                                                 #  11    0x7c0d9  1      OPC=nop             
  nop                                                 #  12    0x7c0da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7c0db  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7c0e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7c0e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7c0e5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7c0e8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7c0e9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7c0ee  1      OPC=nop             
  nop                                                 #  20    0x7c0ef  1      OPC=nop             
  nop                                                 #  21    0x7c0f0  1      OPC=nop             
  nop                                                 #  22    0x7c0f1  1      OPC=nop             
  nop                                                 #  23    0x7c0f2  1      OPC=nop             
  nop                                                 #  24    0x7c0f3  1      OPC=nop             
  nop                                                 #  25    0x7c0f4  1      OPC=nop             
  nop                                                 #  26    0x7c0f5  1      OPC=nop             
  nop                                                 #  27    0x7c0f6  1      OPC=nop             
  nop                                                 #  28    0x7c0f7  1      OPC=nop             
  nop                                                 #  29    0x7c0f8  1      OPC=nop             
  nop                                                 #  30    0x7c0f9  1      OPC=nop             
  nop                                                 #  31    0x7c0fa  1      OPC=nop             
  nop                                                 #  32    0x7c0fb  1      OPC=nop             
  nop                                                 #  33    0x7c0fc  1      OPC=nop             
  nop                                                 #  34    0x7c0fd  1      OPC=nop             
  nop                                                 #  35    0x7c0fe  1      OPC=nop             
  nop                                                 #  36    0x7c0ff  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7c100  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7c102  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7c106  1      OPC=nop             
  nop                                                 #  40    0x7c107  1      OPC=nop             
  nop                                                 #  41    0x7c108  1      OPC=nop             
  nop                                                 #  42    0x7c109  1      OPC=nop             
  nop                                                 #  43    0x7c10a  1      OPC=nop             
  nop                                                 #  44    0x7c10b  1      OPC=nop             
  nop                                                 #  45    0x7c10c  1      OPC=nop             
  nop                                                 #  46    0x7c10d  1      OPC=nop             
  nop                                                 #  47    0x7c10e  1      OPC=nop             
  nop                                                 #  48    0x7c10f  1      OPC=nop             
  nop                                                 #  49    0x7c110  1      OPC=nop             
  nop                                                 #  50    0x7c111  1      OPC=nop             
  nop                                                 #  51    0x7c112  1      OPC=nop             
  nop                                                 #  52    0x7c113  1      OPC=nop             
  nop                                                 #  53    0x7c114  1      OPC=nop             
  nop                                                 #  54    0x7c115  1      OPC=nop             
  nop                                                 #  55    0x7c116  1      OPC=nop             
  nop                                                 #  56    0x7c117  1      OPC=nop             
  nop                                                 #  57    0x7c118  1      OPC=nop             
  nop                                                 #  58    0x7c119  1      OPC=nop             
  nop                                                 #  59    0x7c11a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7c11b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7c120  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7c124  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7c126  1      OPC=nop             
  nop                                                 #  64    0x7c127  1      OPC=nop             
  nop                                                 #  65    0x7c128  1      OPC=nop             
  nop                                                 #  66    0x7c129  1      OPC=nop             
  nop                                                 #  67    0x7c12a  1      OPC=nop             
  nop                                                 #  68    0x7c12b  1      OPC=nop             
  nop                                                 #  69    0x7c12c  1      OPC=nop             
  nop                                                 #  70    0x7c12d  1      OPC=nop             
  nop                                                 #  71    0x7c12e  1      OPC=nop             
  nop                                                 #  72    0x7c12f  1      OPC=nop             
  nop                                                 #  73    0x7c130  1      OPC=nop             
  nop                                                 #  74    0x7c131  1      OPC=nop             
  nop                                                 #  75    0x7c132  1      OPC=nop             
  nop                                                 #  76    0x7c133  1      OPC=nop             
  nop                                                 #  77    0x7c134  1      OPC=nop             
  nop                                                 #  78    0x7c135  1      OPC=nop             
  nop                                                 #  79    0x7c136  1      OPC=nop             
  nop                                                 #  80    0x7c137  1      OPC=nop             
  nop                                                 #  81    0x7c138  1      OPC=nop             
  nop                                                 #  82    0x7c139  1      OPC=nop             
  nop                                                 #  83    0x7c13a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7c13b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED2Ev, .-_ZNSt7collateIcED2Ev

