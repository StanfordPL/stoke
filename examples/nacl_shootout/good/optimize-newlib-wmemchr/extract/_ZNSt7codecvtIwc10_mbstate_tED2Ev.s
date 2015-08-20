  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tED2Ev
  .type _ZNSt7codecvtIwc10_mbstate_tED2Ev, @function

#! file-offset 0x123b20
#! rip-offset  0xe3b20
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tED2Ev:                   #        0xe3b20  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe3b20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe3b21  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe3b23  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe3b26  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe3b29  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe3b2c  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                     #  7     0xe3b2e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe3b36  1      OPC=nop             
  nop                                                 #  9     0xe3b37  1      OPC=nop             
  nop                                                 #  10    0xe3b38  1      OPC=nop             
  nop                                                 #  11    0xe3b39  1      OPC=nop             
  nop                                                 #  12    0xe3b3a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe3b3b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe3b40  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                     #  15    0xe3b42  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe3b4a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe3b4c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe3b4f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe3b52  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe3b53  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe3b58  1      OPC=nop             
  nop                                                 #  22    0xe3b59  1      OPC=nop             
  nop                                                 #  23    0xe3b5a  1      OPC=nop             
  nop                                                 #  24    0xe3b5b  1      OPC=nop             
  nop                                                 #  25    0xe3b5c  1      OPC=nop             
  nop                                                 #  26    0xe3b5d  1      OPC=nop             
  nop                                                 #  27    0xe3b5e  1      OPC=nop             
  nop                                                 #  28    0xe3b5f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe3b60  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe3b62  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                     #  31    0xe3b64  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe3b6c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe3b70  1      OPC=nop             
  nop                                                 #  34    0xe3b71  1      OPC=nop             
  nop                                                 #  35    0xe3b72  1      OPC=nop             
  nop                                                 #  36    0xe3b73  1      OPC=nop             
  nop                                                 #  37    0xe3b74  1      OPC=nop             
  nop                                                 #  38    0xe3b75  1      OPC=nop             
  nop                                                 #  39    0xe3b76  1      OPC=nop             
  nop                                                 #  40    0xe3b77  1      OPC=nop             
  nop                                                 #  41    0xe3b78  1      OPC=nop             
  nop                                                 #  42    0xe3b79  1      OPC=nop             
  nop                                                 #  43    0xe3b7a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe3b7b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe3b80  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe3b84  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe3b86  1      OPC=nop             
  nop                                                 #  48    0xe3b87  1      OPC=nop             
  nop                                                 #  49    0xe3b88  1      OPC=nop             
  nop                                                 #  50    0xe3b89  1      OPC=nop             
  nop                                                 #  51    0xe3b8a  1      OPC=nop             
  nop                                                 #  52    0xe3b8b  1      OPC=nop             
  nop                                                 #  53    0xe3b8c  1      OPC=nop             
  nop                                                 #  54    0xe3b8d  1      OPC=nop             
  nop                                                 #  55    0xe3b8e  1      OPC=nop             
  nop                                                 #  56    0xe3b8f  1      OPC=nop             
  nop                                                 #  57    0xe3b90  1      OPC=nop             
  nop                                                 #  58    0xe3b91  1      OPC=nop             
  nop                                                 #  59    0xe3b92  1      OPC=nop             
  nop                                                 #  60    0xe3b93  1      OPC=nop             
  nop                                                 #  61    0xe3b94  1      OPC=nop             
  nop                                                 #  62    0xe3b95  1      OPC=nop             
  nop                                                 #  63    0xe3b96  1      OPC=nop             
  nop                                                 #  64    0xe3b97  1      OPC=nop             
  nop                                                 #  65    0xe3b98  1      OPC=nop             
  nop                                                 #  66    0xe3b99  1      OPC=nop             
  nop                                                 #  67    0xe3b9a  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe3b9b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7codecvtIwc10_mbstate_tED2Ev, .-_ZNSt7codecvtIwc10_mbstate_tED2Ev

