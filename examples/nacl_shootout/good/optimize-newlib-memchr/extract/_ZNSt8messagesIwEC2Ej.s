  .text
  .globl _ZNSt8messagesIwEC2Ej
  .type _ZNSt8messagesIwEC2Ej, @function

#! file-offset 0xf5c40
#! rip-offset  0xb5c40
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwEC2Ej:                         #        0xb5c40  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5c40  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5c41  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5c43  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5c45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5c48  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb5c4b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb5c4d  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)               #  8     0xb5c4f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5c57  3      OPC=setne_r8        
  nop                                           #  10    0xb5c5a  1      OPC=nop             
  nop                                           #  11    0xb5c5b  1      OPC=nop             
  nop                                           #  12    0xb5c5c  1      OPC=nop             
  nop                                           #  13    0xb5c5d  1      OPC=nop             
  nop                                           #  14    0xb5c5e  1      OPC=nop             
  nop                                           #  15    0xb5c5f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5c60  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5c62  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5c67  1      OPC=nop             
  nop                                           #  19    0xb5c68  1      OPC=nop             
  nop                                           #  20    0xb5c69  1      OPC=nop             
  nop                                           #  21    0xb5c6a  1      OPC=nop             
  nop                                           #  22    0xb5c6b  1      OPC=nop             
  nop                                           #  23    0xb5c6c  1      OPC=nop             
  nop                                           #  24    0xb5c6d  1      OPC=nop             
  nop                                           #  25    0xb5c6e  1      OPC=nop             
  nop                                           #  26    0xb5c6f  1      OPC=nop             
  nop                                           #  27    0xb5c70  1      OPC=nop             
  nop                                           #  28    0xb5c71  1      OPC=nop             
  nop                                           #  29    0xb5c72  1      OPC=nop             
  nop                                           #  30    0xb5c73  1      OPC=nop             
  nop                                           #  31    0xb5c74  1      OPC=nop             
  nop                                           #  32    0xb5c75  1      OPC=nop             
  nop                                           #  33    0xb5c76  1      OPC=nop             
  nop                                           #  34    0xb5c77  1      OPC=nop             
  nop                                           #  35    0xb5c78  1      OPC=nop             
  nop                                           #  36    0xb5c79  1      OPC=nop             
  nop                                           #  37    0xb5c7a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb5c7b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5c80  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5c82  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5c87  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb5c8a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb5c8d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb5c8e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5c90  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5c97  1      OPC=nop             
  nop                                           #  47    0xb5c98  1      OPC=nop             
  nop                                           #  48    0xb5c99  1      OPC=nop             
  nop                                           #  49    0xb5c9a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb5c9b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb5c9e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5ca1  1      OPC=nop             
  nop                                           #  53    0xb5ca2  1      OPC=nop             
  nop                                           #  54    0xb5ca3  1      OPC=nop             
  nop                                           #  55    0xb5ca4  1      OPC=nop             
  nop                                           #  56    0xb5ca5  1      OPC=nop             
  nop                                           #  57    0xb5ca6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5ca7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5ca9  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb5cad  1      OPC=nop             
  nop                                           #  61    0xb5cae  1      OPC=nop             
  nop                                           #  62    0xb5caf  1      OPC=nop             
  nop                                           #  63    0xb5cb0  1      OPC=nop             
  nop                                           #  64    0xb5cb1  1      OPC=nop             
  nop                                           #  65    0xb5cb2  1      OPC=nop             
  nop                                           #  66    0xb5cb3  1      OPC=nop             
  nop                                           #  67    0xb5cb4  1      OPC=nop             
  nop                                           #  68    0xb5cb5  1      OPC=nop             
  nop                                           #  69    0xb5cb6  1      OPC=nop             
  nop                                           #  70    0xb5cb7  1      OPC=nop             
  nop                                           #  71    0xb5cb8  1      OPC=nop             
  nop                                           #  72    0xb5cb9  1      OPC=nop             
  nop                                           #  73    0xb5cba  1      OPC=nop             
  nop                                           #  74    0xb5cbb  1      OPC=nop             
  nop                                           #  75    0xb5cbc  1      OPC=nop             
  nop                                           #  76    0xb5cbd  1      OPC=nop             
  nop                                           #  77    0xb5cbe  1      OPC=nop             
  nop                                           #  78    0xb5cbf  1      OPC=nop             
  nop                                           #  79    0xb5cc0  1      OPC=nop             
  nop                                           #  80    0xb5cc1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5cc2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5cc7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb5ccb  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb5ccd  1      OPC=nop             
  nop                                           #  85    0xb5cce  1      OPC=nop             
  nop                                           #  86    0xb5ccf  1      OPC=nop             
  nop                                           #  87    0xb5cd0  1      OPC=nop             
  nop                                           #  88    0xb5cd1  1      OPC=nop             
  nop                                           #  89    0xb5cd2  1      OPC=nop             
  nop                                           #  90    0xb5cd3  1      OPC=nop             
  nop                                           #  91    0xb5cd4  1      OPC=nop             
  nop                                           #  92    0xb5cd5  1      OPC=nop             
  nop                                           #  93    0xb5cd6  1      OPC=nop             
  nop                                           #  94    0xb5cd7  1      OPC=nop             
  nop                                           #  95    0xb5cd8  1      OPC=nop             
  nop                                           #  96    0xb5cd9  1      OPC=nop             
  nop                                           #  97    0xb5cda  1      OPC=nop             
  nop                                           #  98    0xb5cdb  1      OPC=nop             
  nop                                           #  99    0xb5cdc  1      OPC=nop             
  nop                                           #  100   0xb5cdd  1      OPC=nop             
  nop                                           #  101   0xb5cde  1      OPC=nop             
  nop                                           #  102   0xb5cdf  1      OPC=nop             
  nop                                           #  103   0xb5ce0  1      OPC=nop             
  nop                                           #  104   0xb5ce1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5ce2  5      OPC=callq_label     
                                                                                             
.size _ZNSt8messagesIwEC2Ej, .-_ZNSt8messagesIwEC2Ej

