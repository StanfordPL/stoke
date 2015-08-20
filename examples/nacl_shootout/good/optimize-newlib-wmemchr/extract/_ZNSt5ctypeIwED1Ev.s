  .text
  .globl _ZNSt5ctypeIwED1Ev
  .type _ZNSt5ctypeIwED1Ev, @function

#! file-offset 0x125060
#! rip-offset  0xe5060
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwED1Ev:                                  #        0xe5060  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe5060  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe5061  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe5063  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe5066  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe5069  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe506c  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe506e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe5076  1      OPC=nop             
  nop                                                 #  9     0xe5077  1      OPC=nop             
  nop                                                 #  10    0xe5078  1      OPC=nop             
  nop                                                 #  11    0xe5079  1      OPC=nop             
  nop                                                 #  12    0xe507a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe507b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe5080  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe5082  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe508a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe508c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe508f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe5092  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe5093  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe5098  1      OPC=nop             
  nop                                                 #  22    0xe5099  1      OPC=nop             
  nop                                                 #  23    0xe509a  1      OPC=nop             
  nop                                                 #  24    0xe509b  1      OPC=nop             
  nop                                                 #  25    0xe509c  1      OPC=nop             
  nop                                                 #  26    0xe509d  1      OPC=nop             
  nop                                                 #  27    0xe509e  1      OPC=nop             
  nop                                                 #  28    0xe509f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe50a0  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe50a2  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe50a4  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe50ac  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe50b0  1      OPC=nop             
  nop                                                 #  34    0xe50b1  1      OPC=nop             
  nop                                                 #  35    0xe50b2  1      OPC=nop             
  nop                                                 #  36    0xe50b3  1      OPC=nop             
  nop                                                 #  37    0xe50b4  1      OPC=nop             
  nop                                                 #  38    0xe50b5  1      OPC=nop             
  nop                                                 #  39    0xe50b6  1      OPC=nop             
  nop                                                 #  40    0xe50b7  1      OPC=nop             
  nop                                                 #  41    0xe50b8  1      OPC=nop             
  nop                                                 #  42    0xe50b9  1      OPC=nop             
  nop                                                 #  43    0xe50ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe50bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe50c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe50c4  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe50c6  1      OPC=nop             
  nop                                                 #  48    0xe50c7  1      OPC=nop             
  nop                                                 #  49    0xe50c8  1      OPC=nop             
  nop                                                 #  50    0xe50c9  1      OPC=nop             
  nop                                                 #  51    0xe50ca  1      OPC=nop             
  nop                                                 #  52    0xe50cb  1      OPC=nop             
  nop                                                 #  53    0xe50cc  1      OPC=nop             
  nop                                                 #  54    0xe50cd  1      OPC=nop             
  nop                                                 #  55    0xe50ce  1      OPC=nop             
  nop                                                 #  56    0xe50cf  1      OPC=nop             
  nop                                                 #  57    0xe50d0  1      OPC=nop             
  nop                                                 #  58    0xe50d1  1      OPC=nop             
  nop                                                 #  59    0xe50d2  1      OPC=nop             
  nop                                                 #  60    0xe50d3  1      OPC=nop             
  nop                                                 #  61    0xe50d4  1      OPC=nop             
  nop                                                 #  62    0xe50d5  1      OPC=nop             
  nop                                                 #  63    0xe50d6  1      OPC=nop             
  nop                                                 #  64    0xe50d7  1      OPC=nop             
  nop                                                 #  65    0xe50d8  1      OPC=nop             
  nop                                                 #  66    0xe50d9  1      OPC=nop             
  nop                                                 #  67    0xe50da  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe50db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIwED1Ev, .-_ZNSt5ctypeIwED1Ev

