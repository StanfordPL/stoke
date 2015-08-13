  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tED2Ev
  .type _ZNSt7codecvtIcc10_mbstate_tED2Ev, @function

#! file-offset 0x1239c0
#! rip-offset  0xe39c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tED2Ev:                   #        0xe39c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe39c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe39c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe39c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe39c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe39c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe39cc  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                     #  7     0xe39ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe39d6  1      OPC=nop             
  nop                                                 #  9     0xe39d7  1      OPC=nop             
  nop                                                 #  10    0xe39d8  1      OPC=nop             
  nop                                                 #  11    0xe39d9  1      OPC=nop             
  nop                                                 #  12    0xe39da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe39db  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe39e0  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  15    0xe39e2  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe39ea  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe39ec  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe39ef  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe39f2  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe39f3  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe39f8  1      OPC=nop             
  nop                                                 #  22    0xe39f9  1      OPC=nop             
  nop                                                 #  23    0xe39fa  1      OPC=nop             
  nop                                                 #  24    0xe39fb  1      OPC=nop             
  nop                                                 #  25    0xe39fc  1      OPC=nop             
  nop                                                 #  26    0xe39fd  1      OPC=nop             
  nop                                                 #  27    0xe39fe  1      OPC=nop             
  nop                                                 #  28    0xe39ff  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe3a00  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe3a02  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  31    0xe3a04  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe3a0c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe3a10  1      OPC=nop             
  nop                                                 #  34    0xe3a11  1      OPC=nop             
  nop                                                 #  35    0xe3a12  1      OPC=nop             
  nop                                                 #  36    0xe3a13  1      OPC=nop             
  nop                                                 #  37    0xe3a14  1      OPC=nop             
  nop                                                 #  38    0xe3a15  1      OPC=nop             
  nop                                                 #  39    0xe3a16  1      OPC=nop             
  nop                                                 #  40    0xe3a17  1      OPC=nop             
  nop                                                 #  41    0xe3a18  1      OPC=nop             
  nop                                                 #  42    0xe3a19  1      OPC=nop             
  nop                                                 #  43    0xe3a1a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe3a1b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe3a20  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe3a24  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe3a26  1      OPC=nop             
  nop                                                 #  48    0xe3a27  1      OPC=nop             
  nop                                                 #  49    0xe3a28  1      OPC=nop             
  nop                                                 #  50    0xe3a29  1      OPC=nop             
  nop                                                 #  51    0xe3a2a  1      OPC=nop             
  nop                                                 #  52    0xe3a2b  1      OPC=nop             
  nop                                                 #  53    0xe3a2c  1      OPC=nop             
  nop                                                 #  54    0xe3a2d  1      OPC=nop             
  nop                                                 #  55    0xe3a2e  1      OPC=nop             
  nop                                                 #  56    0xe3a2f  1      OPC=nop             
  nop                                                 #  57    0xe3a30  1      OPC=nop             
  nop                                                 #  58    0xe3a31  1      OPC=nop             
  nop                                                 #  59    0xe3a32  1      OPC=nop             
  nop                                                 #  60    0xe3a33  1      OPC=nop             
  nop                                                 #  61    0xe3a34  1      OPC=nop             
  nop                                                 #  62    0xe3a35  1      OPC=nop             
  nop                                                 #  63    0xe3a36  1      OPC=nop             
  nop                                                 #  64    0xe3a37  1      OPC=nop             
  nop                                                 #  65    0xe3a38  1      OPC=nop             
  nop                                                 #  66    0xe3a39  1      OPC=nop             
  nop                                                 #  67    0xe3a3a  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe3a3b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7codecvtIcc10_mbstate_tED2Ev, .-_ZNSt7codecvtIcc10_mbstate_tED2Ev

