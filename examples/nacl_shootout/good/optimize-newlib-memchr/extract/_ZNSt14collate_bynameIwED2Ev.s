  .text
  .globl _ZNSt14collate_bynameIwED2Ev
  .type _ZNSt14collate_bynameIwED2Ev, @function

#! file-offset 0xf9ce0
#! rip-offset  0xb9ce0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED2Ev:                        #        0xb9ce0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb9ce0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb9ce1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb9ce3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb9ce6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb9ce9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb9cec  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb9cee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb9cf6  1      OPC=nop             
  nop                                                 #  9     0xb9cf7  1      OPC=nop             
  nop                                                 #  10    0xb9cf8  1      OPC=nop             
  nop                                                 #  11    0xb9cf9  1      OPC=nop             
  nop                                                 #  12    0xb9cfa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb9cfb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb9d00  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb9d02  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb9d05  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb9d08  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb9d09  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb9d0e  1      OPC=nop             
  nop                                                 #  20    0xb9d0f  1      OPC=nop             
  nop                                                 #  21    0xb9d10  1      OPC=nop             
  nop                                                 #  22    0xb9d11  1      OPC=nop             
  nop                                                 #  23    0xb9d12  1      OPC=nop             
  nop                                                 #  24    0xb9d13  1      OPC=nop             
  nop                                                 #  25    0xb9d14  1      OPC=nop             
  nop                                                 #  26    0xb9d15  1      OPC=nop             
  nop                                                 #  27    0xb9d16  1      OPC=nop             
  nop                                                 #  28    0xb9d17  1      OPC=nop             
  nop                                                 #  29    0xb9d18  1      OPC=nop             
  nop                                                 #  30    0xb9d19  1      OPC=nop             
  nop                                                 #  31    0xb9d1a  1      OPC=nop             
  nop                                                 #  32    0xb9d1b  1      OPC=nop             
  nop                                                 #  33    0xb9d1c  1      OPC=nop             
  nop                                                 #  34    0xb9d1d  1      OPC=nop             
  nop                                                 #  35    0xb9d1e  1      OPC=nop             
  nop                                                 #  36    0xb9d1f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb9d20  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb9d22  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb9d26  1      OPC=nop             
  nop                                                 #  40    0xb9d27  1      OPC=nop             
  nop                                                 #  41    0xb9d28  1      OPC=nop             
  nop                                                 #  42    0xb9d29  1      OPC=nop             
  nop                                                 #  43    0xb9d2a  1      OPC=nop             
  nop                                                 #  44    0xb9d2b  1      OPC=nop             
  nop                                                 #  45    0xb9d2c  1      OPC=nop             
  nop                                                 #  46    0xb9d2d  1      OPC=nop             
  nop                                                 #  47    0xb9d2e  1      OPC=nop             
  nop                                                 #  48    0xb9d2f  1      OPC=nop             
  nop                                                 #  49    0xb9d30  1      OPC=nop             
  nop                                                 #  50    0xb9d31  1      OPC=nop             
  nop                                                 #  51    0xb9d32  1      OPC=nop             
  nop                                                 #  52    0xb9d33  1      OPC=nop             
  nop                                                 #  53    0xb9d34  1      OPC=nop             
  nop                                                 #  54    0xb9d35  1      OPC=nop             
  nop                                                 #  55    0xb9d36  1      OPC=nop             
  nop                                                 #  56    0xb9d37  1      OPC=nop             
  nop                                                 #  57    0xb9d38  1      OPC=nop             
  nop                                                 #  58    0xb9d39  1      OPC=nop             
  nop                                                 #  59    0xb9d3a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb9d3b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb9d40  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb9d44  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb9d46  1      OPC=nop             
  nop                                                 #  64    0xb9d47  1      OPC=nop             
  nop                                                 #  65    0xb9d48  1      OPC=nop             
  nop                                                 #  66    0xb9d49  1      OPC=nop             
  nop                                                 #  67    0xb9d4a  1      OPC=nop             
  nop                                                 #  68    0xb9d4b  1      OPC=nop             
  nop                                                 #  69    0xb9d4c  1      OPC=nop             
  nop                                                 #  70    0xb9d4d  1      OPC=nop             
  nop                                                 #  71    0xb9d4e  1      OPC=nop             
  nop                                                 #  72    0xb9d4f  1      OPC=nop             
  nop                                                 #  73    0xb9d50  1      OPC=nop             
  nop                                                 #  74    0xb9d51  1      OPC=nop             
  nop                                                 #  75    0xb9d52  1      OPC=nop             
  nop                                                 #  76    0xb9d53  1      OPC=nop             
  nop                                                 #  77    0xb9d54  1      OPC=nop             
  nop                                                 #  78    0xb9d55  1      OPC=nop             
  nop                                                 #  79    0xb9d56  1      OPC=nop             
  nop                                                 #  80    0xb9d57  1      OPC=nop             
  nop                                                 #  81    0xb9d58  1      OPC=nop             
  nop                                                 #  82    0xb9d59  1      OPC=nop             
  nop                                                 #  83    0xb9d5a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb9d5b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED2Ev, .-_ZNSt14collate_bynameIwED2Ev

