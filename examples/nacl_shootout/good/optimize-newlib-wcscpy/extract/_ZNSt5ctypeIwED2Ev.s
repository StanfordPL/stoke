  .text
  .globl _ZNSt5ctypeIwED2Ev
  .type _ZNSt5ctypeIwED2Ev, @function

#! file-offset 0x124de0
#! rip-offset  0xe4de0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED2Ev:                                  #        0xe4de0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe4de0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe4de1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe4de3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe4de6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe4de9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe4dec  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe4dee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe4df6  1      OPC=nop             
  nop                                                 #  9     0xe4df7  1      OPC=nop             
  nop                                                 #  10    0xe4df8  1      OPC=nop             
  nop                                                 #  11    0xe4df9  1      OPC=nop             
  nop                                                 #  12    0xe4dfa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe4dfb  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe4e00  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe4e02  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe4e0a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe4e0c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe4e0f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe4e12  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe4e13  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe4e18  1      OPC=nop             
  nop                                                 #  22    0xe4e19  1      OPC=nop             
  nop                                                 #  23    0xe4e1a  1      OPC=nop             
  nop                                                 #  24    0xe4e1b  1      OPC=nop             
  nop                                                 #  25    0xe4e1c  1      OPC=nop             
  nop                                                 #  26    0xe4e1d  1      OPC=nop             
  nop                                                 #  27    0xe4e1e  1      OPC=nop             
  nop                                                 #  28    0xe4e1f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe4e20  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe4e22  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe4e24  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe4e2c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe4e30  1      OPC=nop             
  nop                                                 #  34    0xe4e31  1      OPC=nop             
  nop                                                 #  35    0xe4e32  1      OPC=nop             
  nop                                                 #  36    0xe4e33  1      OPC=nop             
  nop                                                 #  37    0xe4e34  1      OPC=nop             
  nop                                                 #  38    0xe4e35  1      OPC=nop             
  nop                                                 #  39    0xe4e36  1      OPC=nop             
  nop                                                 #  40    0xe4e37  1      OPC=nop             
  nop                                                 #  41    0xe4e38  1      OPC=nop             
  nop                                                 #  42    0xe4e39  1      OPC=nop             
  nop                                                 #  43    0xe4e3a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe4e3b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe4e40  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe4e44  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe4e46  1      OPC=nop             
  nop                                                 #  48    0xe4e47  1      OPC=nop             
  nop                                                 #  49    0xe4e48  1      OPC=nop             
  nop                                                 #  50    0xe4e49  1      OPC=nop             
  nop                                                 #  51    0xe4e4a  1      OPC=nop             
  nop                                                 #  52    0xe4e4b  1      OPC=nop             
  nop                                                 #  53    0xe4e4c  1      OPC=nop             
  nop                                                 #  54    0xe4e4d  1      OPC=nop             
  nop                                                 #  55    0xe4e4e  1      OPC=nop             
  nop                                                 #  56    0xe4e4f  1      OPC=nop             
  nop                                                 #  57    0xe4e50  1      OPC=nop             
  nop                                                 #  58    0xe4e51  1      OPC=nop             
  nop                                                 #  59    0xe4e52  1      OPC=nop             
  nop                                                 #  60    0xe4e53  1      OPC=nop             
  nop                                                 #  61    0xe4e54  1      OPC=nop             
  nop                                                 #  62    0xe4e55  1      OPC=nop             
  nop                                                 #  63    0xe4e56  1      OPC=nop             
  nop                                                 #  64    0xe4e57  1      OPC=nop             
  nop                                                 #  65    0xe4e58  1      OPC=nop             
  nop                                                 #  66    0xe4e59  1      OPC=nop             
  nop                                                 #  67    0xe4e5a  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe4e5b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED2Ev, .-_ZNSt5ctypeIwED2Ev

