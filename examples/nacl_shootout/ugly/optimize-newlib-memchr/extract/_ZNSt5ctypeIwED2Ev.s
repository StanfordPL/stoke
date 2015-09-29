  .text
  .globl _ZNSt5ctypeIwED2Ev
  .type _ZNSt5ctypeIwED2Ev, @function

#! file-offset 0x125800
#! rip-offset  0xe5800
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED2Ev:                                  #        0xe5800  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe5800  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe5801  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe5803  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe5806  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe5809  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe580c  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe580e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe5816  1      OPC=nop             
  nop                                                 #  9     0xe5817  1      OPC=nop             
  nop                                                 #  10    0xe5818  1      OPC=nop             
  nop                                                 #  11    0xe5819  1      OPC=nop             
  nop                                                 #  12    0xe581a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe581b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe5820  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe5822  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe582a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe582c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe582f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe5832  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe5833  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe5838  1      OPC=nop             
  nop                                                 #  22    0xe5839  1      OPC=nop             
  nop                                                 #  23    0xe583a  1      OPC=nop             
  nop                                                 #  24    0xe583b  1      OPC=nop             
  nop                                                 #  25    0xe583c  1      OPC=nop             
  nop                                                 #  26    0xe583d  1      OPC=nop             
  nop                                                 #  27    0xe583e  1      OPC=nop             
  nop                                                 #  28    0xe583f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe5840  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe5842  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe5844  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe584c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe5850  1      OPC=nop             
  nop                                                 #  34    0xe5851  1      OPC=nop             
  nop                                                 #  35    0xe5852  1      OPC=nop             
  nop                                                 #  36    0xe5853  1      OPC=nop             
  nop                                                 #  37    0xe5854  1      OPC=nop             
  nop                                                 #  38    0xe5855  1      OPC=nop             
  nop                                                 #  39    0xe5856  1      OPC=nop             
  nop                                                 #  40    0xe5857  1      OPC=nop             
  nop                                                 #  41    0xe5858  1      OPC=nop             
  nop                                                 #  42    0xe5859  1      OPC=nop             
  nop                                                 #  43    0xe585a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe585b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe5860  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe5864  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe5866  1      OPC=nop             
  nop                                                 #  48    0xe5867  1      OPC=nop             
  nop                                                 #  49    0xe5868  1      OPC=nop             
  nop                                                 #  50    0xe5869  1      OPC=nop             
  nop                                                 #  51    0xe586a  1      OPC=nop             
  nop                                                 #  52    0xe586b  1      OPC=nop             
  nop                                                 #  53    0xe586c  1      OPC=nop             
  nop                                                 #  54    0xe586d  1      OPC=nop             
  nop                                                 #  55    0xe586e  1      OPC=nop             
  nop                                                 #  56    0xe586f  1      OPC=nop             
  nop                                                 #  57    0xe5870  1      OPC=nop             
  nop                                                 #  58    0xe5871  1      OPC=nop             
  nop                                                 #  59    0xe5872  1      OPC=nop             
  nop                                                 #  60    0xe5873  1      OPC=nop             
  nop                                                 #  61    0xe5874  1      OPC=nop             
  nop                                                 #  62    0xe5875  1      OPC=nop             
  nop                                                 #  63    0xe5876  1      OPC=nop             
  nop                                                 #  64    0xe5877  1      OPC=nop             
  nop                                                 #  65    0xe5878  1      OPC=nop             
  nop                                                 #  66    0xe5879  1      OPC=nop             
  nop                                                 #  67    0xe587a  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe587b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED2Ev, .-_ZNSt5ctypeIwED2Ev

