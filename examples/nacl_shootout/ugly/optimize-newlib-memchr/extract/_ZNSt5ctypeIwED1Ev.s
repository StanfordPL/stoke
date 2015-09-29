  .text
  .globl _ZNSt5ctypeIwED1Ev
  .type _ZNSt5ctypeIwED1Ev, @function

#! file-offset 0x125780
#! rip-offset  0xe5780
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED1Ev:                                  #        0xe5780  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe5780  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe5781  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe5783  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe5786  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe5789  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe578c  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe578e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe5796  1      OPC=nop             
  nop                                                 #  9     0xe5797  1      OPC=nop             
  nop                                                 #  10    0xe5798  1      OPC=nop             
  nop                                                 #  11    0xe5799  1      OPC=nop             
  nop                                                 #  12    0xe579a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe579b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe57a0  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe57a2  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe57aa  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe57ac  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe57af  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe57b2  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe57b3  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe57b8  1      OPC=nop             
  nop                                                 #  22    0xe57b9  1      OPC=nop             
  nop                                                 #  23    0xe57ba  1      OPC=nop             
  nop                                                 #  24    0xe57bb  1      OPC=nop             
  nop                                                 #  25    0xe57bc  1      OPC=nop             
  nop                                                 #  26    0xe57bd  1      OPC=nop             
  nop                                                 #  27    0xe57be  1      OPC=nop             
  nop                                                 #  28    0xe57bf  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe57c0  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe57c2  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe57c4  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe57cc  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe57d0  1      OPC=nop             
  nop                                                 #  34    0xe57d1  1      OPC=nop             
  nop                                                 #  35    0xe57d2  1      OPC=nop             
  nop                                                 #  36    0xe57d3  1      OPC=nop             
  nop                                                 #  37    0xe57d4  1      OPC=nop             
  nop                                                 #  38    0xe57d5  1      OPC=nop             
  nop                                                 #  39    0xe57d6  1      OPC=nop             
  nop                                                 #  40    0xe57d7  1      OPC=nop             
  nop                                                 #  41    0xe57d8  1      OPC=nop             
  nop                                                 #  42    0xe57d9  1      OPC=nop             
  nop                                                 #  43    0xe57da  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe57db  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe57e0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe57e4  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe57e6  1      OPC=nop             
  nop                                                 #  48    0xe57e7  1      OPC=nop             
  nop                                                 #  49    0xe57e8  1      OPC=nop             
  nop                                                 #  50    0xe57e9  1      OPC=nop             
  nop                                                 #  51    0xe57ea  1      OPC=nop             
  nop                                                 #  52    0xe57eb  1      OPC=nop             
  nop                                                 #  53    0xe57ec  1      OPC=nop             
  nop                                                 #  54    0xe57ed  1      OPC=nop             
  nop                                                 #  55    0xe57ee  1      OPC=nop             
  nop                                                 #  56    0xe57ef  1      OPC=nop             
  nop                                                 #  57    0xe57f0  1      OPC=nop             
  nop                                                 #  58    0xe57f1  1      OPC=nop             
  nop                                                 #  59    0xe57f2  1      OPC=nop             
  nop                                                 #  60    0xe57f3  1      OPC=nop             
  nop                                                 #  61    0xe57f4  1      OPC=nop             
  nop                                                 #  62    0xe57f5  1      OPC=nop             
  nop                                                 #  63    0xe57f6  1      OPC=nop             
  nop                                                 #  64    0xe57f7  1      OPC=nop             
  nop                                                 #  65    0xe57f8  1      OPC=nop             
  nop                                                 #  66    0xe57f9  1      OPC=nop             
  nop                                                 #  67    0xe57fa  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe57fb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED1Ev, .-_ZNSt5ctypeIwED1Ev

