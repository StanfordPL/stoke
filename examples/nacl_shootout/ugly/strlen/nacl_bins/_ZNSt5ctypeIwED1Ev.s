  .text
  .globl _ZNSt5ctypeIwED1Ev
  .type _ZNSt5ctypeIwED1Ev, @function

#! file-offset 0x124820
#! rip-offset  0xe4820
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNSt5ctypeIwED1Ev:                                  #        0xe4820  0      OPC=0     
  pushq %rbx                                          #  1     0xe4820  1      OPC=1861  
  movl %edi, %ebx                                     #  2     0xe4821  2      OPC=1157  
  leal 0x8(%rbx), %edi                                #  3     0xe4823  3      OPC=1066  
  subl $0x10, %esp                                    #  4     0xe4826  3      OPC=2384  
  addq %r15, %rsp                                     #  5     0xe4829  3      OPC=72    
  movl %ebx, %ebx                                     #  6     0xe482c  2      OPC=1157  
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe482e  8      OPC=1135  
  nop                                                 #  8     0xe4836  1      OPC=1343  
  nop                                                 #  9     0xe4837  1      OPC=1343  
  nop                                                 #  10    0xe4838  1      OPC=1343  
  nop                                                 #  11    0xe4839  1      OPC=1343  
  nop                                                 #  12    0xe483a  1      OPC=1343  
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe483b  5      OPC=260   
  movl %ebx, %ebx                                     #  14    0xe4840  2      OPC=1157  
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe4842  8      OPC=1135  
  movl %ebx, %edi                                     #  16    0xe484a  2      OPC=1157  
  addl $0x10, %esp                                    #  17    0xe484c  3      OPC=65    
  addq %r15, %rsp                                     #  18    0xe484f  3      OPC=72    
  popq %rbx                                           #  19    0xe4852  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe4853  5      OPC=930   
  nop                                                 #  21    0xe4858  1      OPC=1343  
  nop                                                 #  22    0xe4859  1      OPC=1343  
  nop                                                 #  23    0xe485a  1      OPC=1343  
  nop                                                 #  24    0xe485b  1      OPC=1343  
  nop                                                 #  25    0xe485c  1      OPC=1343  
  nop                                                 #  26    0xe485d  1      OPC=1343  
  nop                                                 #  27    0xe485e  1      OPC=1343  
  nop                                                 #  28    0xe485f  1      OPC=1343  
  movl %ebx, %edi                                     #  29    0xe4860  2      OPC=1157  
  movl %ebx, %ebx                                     #  30    0xe4862  2      OPC=1157  
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe4864  8      OPC=1135  
  movl %eax, 0x8(%rsp)                                #  32    0xe486c  4      OPC=1136  
  nop                                                 #  33    0xe4870  1      OPC=1343  
  nop                                                 #  34    0xe4871  1      OPC=1343  
  nop                                                 #  35    0xe4872  1      OPC=1343  
  nop                                                 #  36    0xe4873  1      OPC=1343  
  nop                                                 #  37    0xe4874  1      OPC=1343  
  nop                                                 #  38    0xe4875  1      OPC=1343  
  nop                                                 #  39    0xe4876  1      OPC=1343  
  nop                                                 #  40    0xe4877  1      OPC=1343  
  nop                                                 #  41    0xe4878  1      OPC=1343  
  nop                                                 #  42    0xe4879  1      OPC=1343  
  nop                                                 #  43    0xe487a  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe487b  5      OPC=260   
  movl 0x8(%rsp), %eax                                #  45    0xe4880  4      OPC=1156  
  movl %eax, %edi                                     #  46    0xe4884  2      OPC=1157  
  nop                                                 #  47    0xe4886  1      OPC=1343  
  nop                                                 #  48    0xe4887  1      OPC=1343  
  nop                                                 #  49    0xe4888  1      OPC=1343  
  nop                                                 #  50    0xe4889  1      OPC=1343  
  nop                                                 #  51    0xe488a  1      OPC=1343  
  nop                                                 #  52    0xe488b  1      OPC=1343  
  nop                                                 #  53    0xe488c  1      OPC=1343  
  nop                                                 #  54    0xe488d  1      OPC=1343  
  nop                                                 #  55    0xe488e  1      OPC=1343  
  nop                                                 #  56    0xe488f  1      OPC=1343  
  nop                                                 #  57    0xe4890  1      OPC=1343  
  nop                                                 #  58    0xe4891  1      OPC=1343  
  nop                                                 #  59    0xe4892  1      OPC=1343  
  nop                                                 #  60    0xe4893  1      OPC=1343  
  nop                                                 #  61    0xe4894  1      OPC=1343  
  nop                                                 #  62    0xe4895  1      OPC=1343  
  nop                                                 #  63    0xe4896  1      OPC=1343  
  nop                                                 #  64    0xe4897  1      OPC=1343  
  nop                                                 #  65    0xe4898  1      OPC=1343  
  nop                                                 #  66    0xe4899  1      OPC=1343  
  nop                                                 #  67    0xe489a  1      OPC=1343  
  callq ._Unwind_Resume                               #  68    0xe489b  5      OPC=260   
                                                                                         
.size _ZNSt5ctypeIwED1Ev, .-_ZNSt5ctypeIwED1Ev

