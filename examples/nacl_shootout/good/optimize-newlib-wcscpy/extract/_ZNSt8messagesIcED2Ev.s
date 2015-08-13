  .text
  .globl _ZNSt8messagesIcED2Ev
  .type _ZNSt8messagesIcED2Ev, @function

#! file-offset 0xbb840
#! rip-offset  0x7b840
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIcED2Ev:                               #        0x7b840  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b840  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b841  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b843  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b846  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b849  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b84c  2      OPC=movl_r32_r32    
  movl $0x1003ae18, (%r15,%rbx,1)                     #  7     0x7b84e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b856  1      OPC=nop             
  nop                                                 #  9     0x7b857  1      OPC=nop             
  nop                                                 #  10    0x7b858  1      OPC=nop             
  nop                                                 #  11    0x7b859  1      OPC=nop             
  nop                                                 #  12    0x7b85a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b85b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b860  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7b862  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7b865  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7b868  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7b869  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7b86e  1      OPC=nop             
  nop                                                 #  20    0x7b86f  1      OPC=nop             
  nop                                                 #  21    0x7b870  1      OPC=nop             
  nop                                                 #  22    0x7b871  1      OPC=nop             
  nop                                                 #  23    0x7b872  1      OPC=nop             
  nop                                                 #  24    0x7b873  1      OPC=nop             
  nop                                                 #  25    0x7b874  1      OPC=nop             
  nop                                                 #  26    0x7b875  1      OPC=nop             
  nop                                                 #  27    0x7b876  1      OPC=nop             
  nop                                                 #  28    0x7b877  1      OPC=nop             
  nop                                                 #  29    0x7b878  1      OPC=nop             
  nop                                                 #  30    0x7b879  1      OPC=nop             
  nop                                                 #  31    0x7b87a  1      OPC=nop             
  nop                                                 #  32    0x7b87b  1      OPC=nop             
  nop                                                 #  33    0x7b87c  1      OPC=nop             
  nop                                                 #  34    0x7b87d  1      OPC=nop             
  nop                                                 #  35    0x7b87e  1      OPC=nop             
  nop                                                 #  36    0x7b87f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7b880  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7b882  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7b886  1      OPC=nop             
  nop                                                 #  40    0x7b887  1      OPC=nop             
  nop                                                 #  41    0x7b888  1      OPC=nop             
  nop                                                 #  42    0x7b889  1      OPC=nop             
  nop                                                 #  43    0x7b88a  1      OPC=nop             
  nop                                                 #  44    0x7b88b  1      OPC=nop             
  nop                                                 #  45    0x7b88c  1      OPC=nop             
  nop                                                 #  46    0x7b88d  1      OPC=nop             
  nop                                                 #  47    0x7b88e  1      OPC=nop             
  nop                                                 #  48    0x7b88f  1      OPC=nop             
  nop                                                 #  49    0x7b890  1      OPC=nop             
  nop                                                 #  50    0x7b891  1      OPC=nop             
  nop                                                 #  51    0x7b892  1      OPC=nop             
  nop                                                 #  52    0x7b893  1      OPC=nop             
  nop                                                 #  53    0x7b894  1      OPC=nop             
  nop                                                 #  54    0x7b895  1      OPC=nop             
  nop                                                 #  55    0x7b896  1      OPC=nop             
  nop                                                 #  56    0x7b897  1      OPC=nop             
  nop                                                 #  57    0x7b898  1      OPC=nop             
  nop                                                 #  58    0x7b899  1      OPC=nop             
  nop                                                 #  59    0x7b89a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7b89b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7b8a0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7b8a4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7b8a6  1      OPC=nop             
  nop                                                 #  64    0x7b8a7  1      OPC=nop             
  nop                                                 #  65    0x7b8a8  1      OPC=nop             
  nop                                                 #  66    0x7b8a9  1      OPC=nop             
  nop                                                 #  67    0x7b8aa  1      OPC=nop             
  nop                                                 #  68    0x7b8ab  1      OPC=nop             
  nop                                                 #  69    0x7b8ac  1      OPC=nop             
  nop                                                 #  70    0x7b8ad  1      OPC=nop             
  nop                                                 #  71    0x7b8ae  1      OPC=nop             
  nop                                                 #  72    0x7b8af  1      OPC=nop             
  nop                                                 #  73    0x7b8b0  1      OPC=nop             
  nop                                                 #  74    0x7b8b1  1      OPC=nop             
  nop                                                 #  75    0x7b8b2  1      OPC=nop             
  nop                                                 #  76    0x7b8b3  1      OPC=nop             
  nop                                                 #  77    0x7b8b4  1      OPC=nop             
  nop                                                 #  78    0x7b8b5  1      OPC=nop             
  nop                                                 #  79    0x7b8b6  1      OPC=nop             
  nop                                                 #  80    0x7b8b7  1      OPC=nop             
  nop                                                 #  81    0x7b8b8  1      OPC=nop             
  nop                                                 #  82    0x7b8b9  1      OPC=nop             
  nop                                                 #  83    0x7b8ba  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7b8bb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIcED2Ev, .-_ZNSt8messagesIcED2Ev

