  .text
  .globl _ZNSt5ctypeIwED2Ev
  .type _ZNSt5ctypeIwED2Ev, @function

#! file-offset 0x1250e0
#! rip-offset  0xe50e0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED2Ev:                                  #        0xe50e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe50e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe50e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe50e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe50e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe50e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe50ec  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe50ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe50f6  1      OPC=nop             
  nop                                                 #  9     0xe50f7  1      OPC=nop             
  nop                                                 #  10    0xe50f8  1      OPC=nop             
  nop                                                 #  11    0xe50f9  1      OPC=nop             
  nop                                                 #  12    0xe50fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe50fb  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe5100  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe5102  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe510a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe510c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe510f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe5112  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe5113  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe5118  1      OPC=nop             
  nop                                                 #  22    0xe5119  1      OPC=nop             
  nop                                                 #  23    0xe511a  1      OPC=nop             
  nop                                                 #  24    0xe511b  1      OPC=nop             
  nop                                                 #  25    0xe511c  1      OPC=nop             
  nop                                                 #  26    0xe511d  1      OPC=nop             
  nop                                                 #  27    0xe511e  1      OPC=nop             
  nop                                                 #  28    0xe511f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe5120  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe5122  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe5124  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe512c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe5130  1      OPC=nop             
  nop                                                 #  34    0xe5131  1      OPC=nop             
  nop                                                 #  35    0xe5132  1      OPC=nop             
  nop                                                 #  36    0xe5133  1      OPC=nop             
  nop                                                 #  37    0xe5134  1      OPC=nop             
  nop                                                 #  38    0xe5135  1      OPC=nop             
  nop                                                 #  39    0xe5136  1      OPC=nop             
  nop                                                 #  40    0xe5137  1      OPC=nop             
  nop                                                 #  41    0xe5138  1      OPC=nop             
  nop                                                 #  42    0xe5139  1      OPC=nop             
  nop                                                 #  43    0xe513a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe513b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe5140  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe5144  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe5146  1      OPC=nop             
  nop                                                 #  48    0xe5147  1      OPC=nop             
  nop                                                 #  49    0xe5148  1      OPC=nop             
  nop                                                 #  50    0xe5149  1      OPC=nop             
  nop                                                 #  51    0xe514a  1      OPC=nop             
  nop                                                 #  52    0xe514b  1      OPC=nop             
  nop                                                 #  53    0xe514c  1      OPC=nop             
  nop                                                 #  54    0xe514d  1      OPC=nop             
  nop                                                 #  55    0xe514e  1      OPC=nop             
  nop                                                 #  56    0xe514f  1      OPC=nop             
  nop                                                 #  57    0xe5150  1      OPC=nop             
  nop                                                 #  58    0xe5151  1      OPC=nop             
  nop                                                 #  59    0xe5152  1      OPC=nop             
  nop                                                 #  60    0xe5153  1      OPC=nop             
  nop                                                 #  61    0xe5154  1      OPC=nop             
  nop                                                 #  62    0xe5155  1      OPC=nop             
  nop                                                 #  63    0xe5156  1      OPC=nop             
  nop                                                 #  64    0xe5157  1      OPC=nop             
  nop                                                 #  65    0xe5158  1      OPC=nop             
  nop                                                 #  66    0xe5159  1      OPC=nop             
  nop                                                 #  67    0xe515a  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe515b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED2Ev, .-_ZNSt5ctypeIwED2Ev

