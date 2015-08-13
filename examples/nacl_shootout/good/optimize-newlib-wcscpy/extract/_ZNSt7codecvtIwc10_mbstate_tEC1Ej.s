  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1Ej
  .type _ZNSt7codecvtIwc10_mbstate_tEC1Ej, @function

#! file-offset 0x123cc0
#! rip-offset  0xe3cc0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC1Ej:             #        0xe3cc0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe3cc0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe3cc1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe3cc3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe3cc5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe3cc8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe3ccb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe3ccd  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)               #  8     0xe3ccf  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe3cd7  3      OPC=setne_r8        
  nop                                           #  10    0xe3cda  1      OPC=nop             
  nop                                           #  11    0xe3cdb  1      OPC=nop             
  nop                                           #  12    0xe3cdc  1      OPC=nop             
  nop                                           #  13    0xe3cdd  1      OPC=nop             
  nop                                           #  14    0xe3cde  1      OPC=nop             
  nop                                           #  15    0xe3cdf  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe3ce0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe3ce2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe3ce7  1      OPC=nop             
  nop                                           #  19    0xe3ce8  1      OPC=nop             
  nop                                           #  20    0xe3ce9  1      OPC=nop             
  nop                                           #  21    0xe3cea  1      OPC=nop             
  nop                                           #  22    0xe3ceb  1      OPC=nop             
  nop                                           #  23    0xe3cec  1      OPC=nop             
  nop                                           #  24    0xe3ced  1      OPC=nop             
  nop                                           #  25    0xe3cee  1      OPC=nop             
  nop                                           #  26    0xe3cef  1      OPC=nop             
  nop                                           #  27    0xe3cf0  1      OPC=nop             
  nop                                           #  28    0xe3cf1  1      OPC=nop             
  nop                                           #  29    0xe3cf2  1      OPC=nop             
  nop                                           #  30    0xe3cf3  1      OPC=nop             
  nop                                           #  31    0xe3cf4  1      OPC=nop             
  nop                                           #  32    0xe3cf5  1      OPC=nop             
  nop                                           #  33    0xe3cf6  1      OPC=nop             
  nop                                           #  34    0xe3cf7  1      OPC=nop             
  nop                                           #  35    0xe3cf8  1      OPC=nop             
  nop                                           #  36    0xe3cf9  1      OPC=nop             
  nop                                           #  37    0xe3cfa  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe3cfb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe3d00  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe3d02  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe3d07  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe3d0a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe3d0d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe3d0e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe3d10  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe3d17  1      OPC=nop             
  nop                                           #  47    0xe3d18  1      OPC=nop             
  nop                                           #  48    0xe3d19  1      OPC=nop             
  nop                                           #  49    0xe3d1a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe3d1b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe3d1e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe3d21  1      OPC=nop             
  nop                                           #  53    0xe3d22  1      OPC=nop             
  nop                                           #  54    0xe3d23  1      OPC=nop             
  nop                                           #  55    0xe3d24  1      OPC=nop             
  nop                                           #  56    0xe3d25  1      OPC=nop             
  nop                                           #  57    0xe3d26  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe3d27  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe3d29  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)               #  60    0xe3d2b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe3d33  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe3d37  1      OPC=nop             
  nop                                           #  63    0xe3d38  1      OPC=nop             
  nop                                           #  64    0xe3d39  1      OPC=nop             
  nop                                           #  65    0xe3d3a  1      OPC=nop             
  nop                                           #  66    0xe3d3b  1      OPC=nop             
  nop                                           #  67    0xe3d3c  1      OPC=nop             
  nop                                           #  68    0xe3d3d  1      OPC=nop             
  nop                                           #  69    0xe3d3e  1      OPC=nop             
  nop                                           #  70    0xe3d3f  1      OPC=nop             
  nop                                           #  71    0xe3d40  1      OPC=nop             
  nop                                           #  72    0xe3d41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe3d42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe3d47  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe3d4b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe3d4d  1      OPC=nop             
  nop                                           #  77    0xe3d4e  1      OPC=nop             
  nop                                           #  78    0xe3d4f  1      OPC=nop             
  nop                                           #  79    0xe3d50  1      OPC=nop             
  nop                                           #  80    0xe3d51  1      OPC=nop             
  nop                                           #  81    0xe3d52  1      OPC=nop             
  nop                                           #  82    0xe3d53  1      OPC=nop             
  nop                                           #  83    0xe3d54  1      OPC=nop             
  nop                                           #  84    0xe3d55  1      OPC=nop             
  nop                                           #  85    0xe3d56  1      OPC=nop             
  nop                                           #  86    0xe3d57  1      OPC=nop             
  nop                                           #  87    0xe3d58  1      OPC=nop             
  nop                                           #  88    0xe3d59  1      OPC=nop             
  nop                                           #  89    0xe3d5a  1      OPC=nop             
  nop                                           #  90    0xe3d5b  1      OPC=nop             
  nop                                           #  91    0xe3d5c  1      OPC=nop             
  nop                                           #  92    0xe3d5d  1      OPC=nop             
  nop                                           #  93    0xe3d5e  1      OPC=nop             
  nop                                           #  94    0xe3d5f  1      OPC=nop             
  nop                                           #  95    0xe3d60  1      OPC=nop             
  nop                                           #  96    0xe3d61  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe3d62  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIwc10_mbstate_tEC1Ej, .-_ZNSt7codecvtIwc10_mbstate_tEC1Ej

