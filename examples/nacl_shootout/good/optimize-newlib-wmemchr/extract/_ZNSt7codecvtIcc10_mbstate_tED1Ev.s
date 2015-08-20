  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tED1Ev
  .type _ZNSt7codecvtIcc10_mbstate_tED1Ev, @function

#! file-offset 0x123c40
#! rip-offset  0xe3c40
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tED1Ev:                   #        0xe3c40  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe3c40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe3c41  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe3c43  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe3c46  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe3c49  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe3c4c  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                     #  7     0xe3c4e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe3c56  1      OPC=nop             
  nop                                                 #  9     0xe3c57  1      OPC=nop             
  nop                                                 #  10    0xe3c58  1      OPC=nop             
  nop                                                 #  11    0xe3c59  1      OPC=nop             
  nop                                                 #  12    0xe3c5a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe3c5b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe3c60  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  15    0xe3c62  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe3c6a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe3c6c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe3c6f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe3c72  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe3c73  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe3c78  1      OPC=nop             
  nop                                                 #  22    0xe3c79  1      OPC=nop             
  nop                                                 #  23    0xe3c7a  1      OPC=nop             
  nop                                                 #  24    0xe3c7b  1      OPC=nop             
  nop                                                 #  25    0xe3c7c  1      OPC=nop             
  nop                                                 #  26    0xe3c7d  1      OPC=nop             
  nop                                                 #  27    0xe3c7e  1      OPC=nop             
  nop                                                 #  28    0xe3c7f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe3c80  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe3c82  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  31    0xe3c84  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe3c8c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe3c90  1      OPC=nop             
  nop                                                 #  34    0xe3c91  1      OPC=nop             
  nop                                                 #  35    0xe3c92  1      OPC=nop             
  nop                                                 #  36    0xe3c93  1      OPC=nop             
  nop                                                 #  37    0xe3c94  1      OPC=nop             
  nop                                                 #  38    0xe3c95  1      OPC=nop             
  nop                                                 #  39    0xe3c96  1      OPC=nop             
  nop                                                 #  40    0xe3c97  1      OPC=nop             
  nop                                                 #  41    0xe3c98  1      OPC=nop             
  nop                                                 #  42    0xe3c99  1      OPC=nop             
  nop                                                 #  43    0xe3c9a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe3c9b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe3ca0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe3ca4  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe3ca6  1      OPC=nop             
  nop                                                 #  48    0xe3ca7  1      OPC=nop             
  nop                                                 #  49    0xe3ca8  1      OPC=nop             
  nop                                                 #  50    0xe3ca9  1      OPC=nop             
  nop                                                 #  51    0xe3caa  1      OPC=nop             
  nop                                                 #  52    0xe3cab  1      OPC=nop             
  nop                                                 #  53    0xe3cac  1      OPC=nop             
  nop                                                 #  54    0xe3cad  1      OPC=nop             
  nop                                                 #  55    0xe3cae  1      OPC=nop             
  nop                                                 #  56    0xe3caf  1      OPC=nop             
  nop                                                 #  57    0xe3cb0  1      OPC=nop             
  nop                                                 #  58    0xe3cb1  1      OPC=nop             
  nop                                                 #  59    0xe3cb2  1      OPC=nop             
  nop                                                 #  60    0xe3cb3  1      OPC=nop             
  nop                                                 #  61    0xe3cb4  1      OPC=nop             
  nop                                                 #  62    0xe3cb5  1      OPC=nop             
  nop                                                 #  63    0xe3cb6  1      OPC=nop             
  nop                                                 #  64    0xe3cb7  1      OPC=nop             
  nop                                                 #  65    0xe3cb8  1      OPC=nop             
  nop                                                 #  66    0xe3cb9  1      OPC=nop             
  nop                                                 #  67    0xe3cba  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe3cbb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7codecvtIcc10_mbstate_tED1Ev, .-_ZNSt7codecvtIcc10_mbstate_tED1Ev

