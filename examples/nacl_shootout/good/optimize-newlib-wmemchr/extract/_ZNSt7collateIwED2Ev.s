  .text
  .globl _ZNSt7collateIwED2Ev
  .type _ZNSt7collateIwED2Ev, @function

#! file-offset 0xf4760
#! rip-offset  0xb4760
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED2Ev:                                #        0xb4760  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4760  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4761  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4763  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4766  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4769  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb476c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb476e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4776  1      OPC=nop             
  nop                                                 #  9     0xb4777  1      OPC=nop             
  nop                                                 #  10    0xb4778  1      OPC=nop             
  nop                                                 #  11    0xb4779  1      OPC=nop             
  nop                                                 #  12    0xb477a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb477b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4780  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4782  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4785  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4788  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4789  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb478e  1      OPC=nop             
  nop                                                 #  20    0xb478f  1      OPC=nop             
  nop                                                 #  21    0xb4790  1      OPC=nop             
  nop                                                 #  22    0xb4791  1      OPC=nop             
  nop                                                 #  23    0xb4792  1      OPC=nop             
  nop                                                 #  24    0xb4793  1      OPC=nop             
  nop                                                 #  25    0xb4794  1      OPC=nop             
  nop                                                 #  26    0xb4795  1      OPC=nop             
  nop                                                 #  27    0xb4796  1      OPC=nop             
  nop                                                 #  28    0xb4797  1      OPC=nop             
  nop                                                 #  29    0xb4798  1      OPC=nop             
  nop                                                 #  30    0xb4799  1      OPC=nop             
  nop                                                 #  31    0xb479a  1      OPC=nop             
  nop                                                 #  32    0xb479b  1      OPC=nop             
  nop                                                 #  33    0xb479c  1      OPC=nop             
  nop                                                 #  34    0xb479d  1      OPC=nop             
  nop                                                 #  35    0xb479e  1      OPC=nop             
  nop                                                 #  36    0xb479f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb47a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb47a2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb47a6  1      OPC=nop             
  nop                                                 #  40    0xb47a7  1      OPC=nop             
  nop                                                 #  41    0xb47a8  1      OPC=nop             
  nop                                                 #  42    0xb47a9  1      OPC=nop             
  nop                                                 #  43    0xb47aa  1      OPC=nop             
  nop                                                 #  44    0xb47ab  1      OPC=nop             
  nop                                                 #  45    0xb47ac  1      OPC=nop             
  nop                                                 #  46    0xb47ad  1      OPC=nop             
  nop                                                 #  47    0xb47ae  1      OPC=nop             
  nop                                                 #  48    0xb47af  1      OPC=nop             
  nop                                                 #  49    0xb47b0  1      OPC=nop             
  nop                                                 #  50    0xb47b1  1      OPC=nop             
  nop                                                 #  51    0xb47b2  1      OPC=nop             
  nop                                                 #  52    0xb47b3  1      OPC=nop             
  nop                                                 #  53    0xb47b4  1      OPC=nop             
  nop                                                 #  54    0xb47b5  1      OPC=nop             
  nop                                                 #  55    0xb47b6  1      OPC=nop             
  nop                                                 #  56    0xb47b7  1      OPC=nop             
  nop                                                 #  57    0xb47b8  1      OPC=nop             
  nop                                                 #  58    0xb47b9  1      OPC=nop             
  nop                                                 #  59    0xb47ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb47bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb47c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb47c4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb47c6  1      OPC=nop             
  nop                                                 #  64    0xb47c7  1      OPC=nop             
  nop                                                 #  65    0xb47c8  1      OPC=nop             
  nop                                                 #  66    0xb47c9  1      OPC=nop             
  nop                                                 #  67    0xb47ca  1      OPC=nop             
  nop                                                 #  68    0xb47cb  1      OPC=nop             
  nop                                                 #  69    0xb47cc  1      OPC=nop             
  nop                                                 #  70    0xb47cd  1      OPC=nop             
  nop                                                 #  71    0xb47ce  1      OPC=nop             
  nop                                                 #  72    0xb47cf  1      OPC=nop             
  nop                                                 #  73    0xb47d0  1      OPC=nop             
  nop                                                 #  74    0xb47d1  1      OPC=nop             
  nop                                                 #  75    0xb47d2  1      OPC=nop             
  nop                                                 #  76    0xb47d3  1      OPC=nop             
  nop                                                 #  77    0xb47d4  1      OPC=nop             
  nop                                                 #  78    0xb47d5  1      OPC=nop             
  nop                                                 #  79    0xb47d6  1      OPC=nop             
  nop                                                 #  80    0xb47d7  1      OPC=nop             
  nop                                                 #  81    0xb47d8  1      OPC=nop             
  nop                                                 #  82    0xb47d9  1      OPC=nop             
  nop                                                 #  83    0xb47da  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb47db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED2Ev, .-_ZNSt7collateIwED2Ev

