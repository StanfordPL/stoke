  .text
  .globl _ZNSt8messagesIcED1Ev
  .type _ZNSt8messagesIcED1Ev, @function

#! file-offset 0xbb7c0
#! rip-offset  0x7b7c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIcED1Ev:                               #        0x7b7c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b7c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b7c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b7c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b7c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b7c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b7cc  2      OPC=movl_r32_r32    
  movl $0x1003ae18, (%r15,%rbx,1)                     #  7     0x7b7ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b7d6  1      OPC=nop             
  nop                                                 #  9     0x7b7d7  1      OPC=nop             
  nop                                                 #  10    0x7b7d8  1      OPC=nop             
  nop                                                 #  11    0x7b7d9  1      OPC=nop             
  nop                                                 #  12    0x7b7da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b7db  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b7e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7b7e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7b7e5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7b7e8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7b7e9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7b7ee  1      OPC=nop             
  nop                                                 #  20    0x7b7ef  1      OPC=nop             
  nop                                                 #  21    0x7b7f0  1      OPC=nop             
  nop                                                 #  22    0x7b7f1  1      OPC=nop             
  nop                                                 #  23    0x7b7f2  1      OPC=nop             
  nop                                                 #  24    0x7b7f3  1      OPC=nop             
  nop                                                 #  25    0x7b7f4  1      OPC=nop             
  nop                                                 #  26    0x7b7f5  1      OPC=nop             
  nop                                                 #  27    0x7b7f6  1      OPC=nop             
  nop                                                 #  28    0x7b7f7  1      OPC=nop             
  nop                                                 #  29    0x7b7f8  1      OPC=nop             
  nop                                                 #  30    0x7b7f9  1      OPC=nop             
  nop                                                 #  31    0x7b7fa  1      OPC=nop             
  nop                                                 #  32    0x7b7fb  1      OPC=nop             
  nop                                                 #  33    0x7b7fc  1      OPC=nop             
  nop                                                 #  34    0x7b7fd  1      OPC=nop             
  nop                                                 #  35    0x7b7fe  1      OPC=nop             
  nop                                                 #  36    0x7b7ff  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7b800  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7b802  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7b806  1      OPC=nop             
  nop                                                 #  40    0x7b807  1      OPC=nop             
  nop                                                 #  41    0x7b808  1      OPC=nop             
  nop                                                 #  42    0x7b809  1      OPC=nop             
  nop                                                 #  43    0x7b80a  1      OPC=nop             
  nop                                                 #  44    0x7b80b  1      OPC=nop             
  nop                                                 #  45    0x7b80c  1      OPC=nop             
  nop                                                 #  46    0x7b80d  1      OPC=nop             
  nop                                                 #  47    0x7b80e  1      OPC=nop             
  nop                                                 #  48    0x7b80f  1      OPC=nop             
  nop                                                 #  49    0x7b810  1      OPC=nop             
  nop                                                 #  50    0x7b811  1      OPC=nop             
  nop                                                 #  51    0x7b812  1      OPC=nop             
  nop                                                 #  52    0x7b813  1      OPC=nop             
  nop                                                 #  53    0x7b814  1      OPC=nop             
  nop                                                 #  54    0x7b815  1      OPC=nop             
  nop                                                 #  55    0x7b816  1      OPC=nop             
  nop                                                 #  56    0x7b817  1      OPC=nop             
  nop                                                 #  57    0x7b818  1      OPC=nop             
  nop                                                 #  58    0x7b819  1      OPC=nop             
  nop                                                 #  59    0x7b81a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7b81b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7b820  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7b824  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7b826  1      OPC=nop             
  nop                                                 #  64    0x7b827  1      OPC=nop             
  nop                                                 #  65    0x7b828  1      OPC=nop             
  nop                                                 #  66    0x7b829  1      OPC=nop             
  nop                                                 #  67    0x7b82a  1      OPC=nop             
  nop                                                 #  68    0x7b82b  1      OPC=nop             
  nop                                                 #  69    0x7b82c  1      OPC=nop             
  nop                                                 #  70    0x7b82d  1      OPC=nop             
  nop                                                 #  71    0x7b82e  1      OPC=nop             
  nop                                                 #  72    0x7b82f  1      OPC=nop             
  nop                                                 #  73    0x7b830  1      OPC=nop             
  nop                                                 #  74    0x7b831  1      OPC=nop             
  nop                                                 #  75    0x7b832  1      OPC=nop             
  nop                                                 #  76    0x7b833  1      OPC=nop             
  nop                                                 #  77    0x7b834  1      OPC=nop             
  nop                                                 #  78    0x7b835  1      OPC=nop             
  nop                                                 #  79    0x7b836  1      OPC=nop             
  nop                                                 #  80    0x7b837  1      OPC=nop             
  nop                                                 #  81    0x7b838  1      OPC=nop             
  nop                                                 #  82    0x7b839  1      OPC=nop             
  nop                                                 #  83    0x7b83a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7b83b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIcED1Ev, .-_ZNSt8messagesIcED1Ev

