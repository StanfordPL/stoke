  .text
  .globl _ZNSt7collateIwED2Ev
  .type _ZNSt7collateIwED2Ev, @function

#! file-offset 0xf4460
#! rip-offset  0xb4460
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED2Ev:                                #        0xb4460  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4460  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4461  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4463  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4466  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4469  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb446c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb446e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4476  1      OPC=nop             
  nop                                                 #  9     0xb4477  1      OPC=nop             
  nop                                                 #  10    0xb4478  1      OPC=nop             
  nop                                                 #  11    0xb4479  1      OPC=nop             
  nop                                                 #  12    0xb447a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb447b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4480  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4482  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4485  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4488  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4489  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb448e  1      OPC=nop             
  nop                                                 #  20    0xb448f  1      OPC=nop             
  nop                                                 #  21    0xb4490  1      OPC=nop             
  nop                                                 #  22    0xb4491  1      OPC=nop             
  nop                                                 #  23    0xb4492  1      OPC=nop             
  nop                                                 #  24    0xb4493  1      OPC=nop             
  nop                                                 #  25    0xb4494  1      OPC=nop             
  nop                                                 #  26    0xb4495  1      OPC=nop             
  nop                                                 #  27    0xb4496  1      OPC=nop             
  nop                                                 #  28    0xb4497  1      OPC=nop             
  nop                                                 #  29    0xb4498  1      OPC=nop             
  nop                                                 #  30    0xb4499  1      OPC=nop             
  nop                                                 #  31    0xb449a  1      OPC=nop             
  nop                                                 #  32    0xb449b  1      OPC=nop             
  nop                                                 #  33    0xb449c  1      OPC=nop             
  nop                                                 #  34    0xb449d  1      OPC=nop             
  nop                                                 #  35    0xb449e  1      OPC=nop             
  nop                                                 #  36    0xb449f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb44a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb44a2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb44a6  1      OPC=nop             
  nop                                                 #  40    0xb44a7  1      OPC=nop             
  nop                                                 #  41    0xb44a8  1      OPC=nop             
  nop                                                 #  42    0xb44a9  1      OPC=nop             
  nop                                                 #  43    0xb44aa  1      OPC=nop             
  nop                                                 #  44    0xb44ab  1      OPC=nop             
  nop                                                 #  45    0xb44ac  1      OPC=nop             
  nop                                                 #  46    0xb44ad  1      OPC=nop             
  nop                                                 #  47    0xb44ae  1      OPC=nop             
  nop                                                 #  48    0xb44af  1      OPC=nop             
  nop                                                 #  49    0xb44b0  1      OPC=nop             
  nop                                                 #  50    0xb44b1  1      OPC=nop             
  nop                                                 #  51    0xb44b2  1      OPC=nop             
  nop                                                 #  52    0xb44b3  1      OPC=nop             
  nop                                                 #  53    0xb44b4  1      OPC=nop             
  nop                                                 #  54    0xb44b5  1      OPC=nop             
  nop                                                 #  55    0xb44b6  1      OPC=nop             
  nop                                                 #  56    0xb44b7  1      OPC=nop             
  nop                                                 #  57    0xb44b8  1      OPC=nop             
  nop                                                 #  58    0xb44b9  1      OPC=nop             
  nop                                                 #  59    0xb44ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb44bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb44c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb44c4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb44c6  1      OPC=nop             
  nop                                                 #  64    0xb44c7  1      OPC=nop             
  nop                                                 #  65    0xb44c8  1      OPC=nop             
  nop                                                 #  66    0xb44c9  1      OPC=nop             
  nop                                                 #  67    0xb44ca  1      OPC=nop             
  nop                                                 #  68    0xb44cb  1      OPC=nop             
  nop                                                 #  69    0xb44cc  1      OPC=nop             
  nop                                                 #  70    0xb44cd  1      OPC=nop             
  nop                                                 #  71    0xb44ce  1      OPC=nop             
  nop                                                 #  72    0xb44cf  1      OPC=nop             
  nop                                                 #  73    0xb44d0  1      OPC=nop             
  nop                                                 #  74    0xb44d1  1      OPC=nop             
  nop                                                 #  75    0xb44d2  1      OPC=nop             
  nop                                                 #  76    0xb44d3  1      OPC=nop             
  nop                                                 #  77    0xb44d4  1      OPC=nop             
  nop                                                 #  78    0xb44d5  1      OPC=nop             
  nop                                                 #  79    0xb44d6  1      OPC=nop             
  nop                                                 #  80    0xb44d7  1      OPC=nop             
  nop                                                 #  81    0xb44d8  1      OPC=nop             
  nop                                                 #  82    0xb44d9  1      OPC=nop             
  nop                                                 #  83    0xb44da  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb44db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED2Ev, .-_ZNSt7collateIwED2Ev

