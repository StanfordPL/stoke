  .text
  .globl _ZNSt8messagesIwEC2EPiPKcj
  .type _ZNSt8messagesIwEC2EPiPKcj, @function

#! file-offset 0xf5b00
#! rip-offset  0xb5b00
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwEC2EPiPKcj:                    #        0xb5b00  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5b00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5b01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5b03  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5b05  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5b08  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                              #  6     0xb5b0b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb5b0d  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)               #  8     0xb5b0f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5b17  3      OPC=setne_r8        
  nop                                           #  10    0xb5b1a  1      OPC=nop             
  nop                                           #  11    0xb5b1b  1      OPC=nop             
  nop                                           #  12    0xb5b1c  1      OPC=nop             
  nop                                           #  13    0xb5b1d  1      OPC=nop             
  nop                                           #  14    0xb5b1e  1      OPC=nop             
  nop                                           #  15    0xb5b1f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5b20  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5b22  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5b27  1      OPC=nop             
  nop                                           #  19    0xb5b28  1      OPC=nop             
  nop                                           #  20    0xb5b29  1      OPC=nop             
  nop                                           #  21    0xb5b2a  1      OPC=nop             
  nop                                           #  22    0xb5b2b  1      OPC=nop             
  nop                                           #  23    0xb5b2c  1      OPC=nop             
  nop                                           #  24    0xb5b2d  1      OPC=nop             
  nop                                           #  25    0xb5b2e  1      OPC=nop             
  nop                                           #  26    0xb5b2f  1      OPC=nop             
  nop                                           #  27    0xb5b30  1      OPC=nop             
  nop                                           #  28    0xb5b31  1      OPC=nop             
  nop                                           #  29    0xb5b32  1      OPC=nop             
  nop                                           #  30    0xb5b33  1      OPC=nop             
  nop                                           #  31    0xb5b34  1      OPC=nop             
  nop                                           #  32    0xb5b35  1      OPC=nop             
  nop                                           #  33    0xb5b36  1      OPC=nop             
  nop                                           #  34    0xb5b37  1      OPC=nop             
  nop                                           #  35    0xb5b38  1      OPC=nop             
  nop                                           #  36    0xb5b39  1      OPC=nop             
  nop                                           #  37    0xb5b3a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb5b3b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5b40  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5b42  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5b47  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb5b4a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb5b4d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb5b4e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5b50  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5b57  1      OPC=nop             
  nop                                           #  47    0xb5b58  1      OPC=nop             
  nop                                           #  48    0xb5b59  1      OPC=nop             
  nop                                           #  49    0xb5b5a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb5b5b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb5b5e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5b61  1      OPC=nop             
  nop                                           #  53    0xb5b62  1      OPC=nop             
  nop                                           #  54    0xb5b63  1      OPC=nop             
  nop                                           #  55    0xb5b64  1      OPC=nop             
  nop                                           #  56    0xb5b65  1      OPC=nop             
  nop                                           #  57    0xb5b66  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5b67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5b69  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb5b6d  1      OPC=nop             
  nop                                           #  61    0xb5b6e  1      OPC=nop             
  nop                                           #  62    0xb5b6f  1      OPC=nop             
  nop                                           #  63    0xb5b70  1      OPC=nop             
  nop                                           #  64    0xb5b71  1      OPC=nop             
  nop                                           #  65    0xb5b72  1      OPC=nop             
  nop                                           #  66    0xb5b73  1      OPC=nop             
  nop                                           #  67    0xb5b74  1      OPC=nop             
  nop                                           #  68    0xb5b75  1      OPC=nop             
  nop                                           #  69    0xb5b76  1      OPC=nop             
  nop                                           #  70    0xb5b77  1      OPC=nop             
  nop                                           #  71    0xb5b78  1      OPC=nop             
  nop                                           #  72    0xb5b79  1      OPC=nop             
  nop                                           #  73    0xb5b7a  1      OPC=nop             
  nop                                           #  74    0xb5b7b  1      OPC=nop             
  nop                                           #  75    0xb5b7c  1      OPC=nop             
  nop                                           #  76    0xb5b7d  1      OPC=nop             
  nop                                           #  77    0xb5b7e  1      OPC=nop             
  nop                                           #  78    0xb5b7f  1      OPC=nop             
  nop                                           #  79    0xb5b80  1      OPC=nop             
  nop                                           #  80    0xb5b81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5b82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5b87  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb5b8b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb5b8d  1      OPC=nop             
  nop                                           #  85    0xb5b8e  1      OPC=nop             
  nop                                           #  86    0xb5b8f  1      OPC=nop             
  nop                                           #  87    0xb5b90  1      OPC=nop             
  nop                                           #  88    0xb5b91  1      OPC=nop             
  nop                                           #  89    0xb5b92  1      OPC=nop             
  nop                                           #  90    0xb5b93  1      OPC=nop             
  nop                                           #  91    0xb5b94  1      OPC=nop             
  nop                                           #  92    0xb5b95  1      OPC=nop             
  nop                                           #  93    0xb5b96  1      OPC=nop             
  nop                                           #  94    0xb5b97  1      OPC=nop             
  nop                                           #  95    0xb5b98  1      OPC=nop             
  nop                                           #  96    0xb5b99  1      OPC=nop             
  nop                                           #  97    0xb5b9a  1      OPC=nop             
  nop                                           #  98    0xb5b9b  1      OPC=nop             
  nop                                           #  99    0xb5b9c  1      OPC=nop             
  nop                                           #  100   0xb5b9d  1      OPC=nop             
  nop                                           #  101   0xb5b9e  1      OPC=nop             
  nop                                           #  102   0xb5b9f  1      OPC=nop             
  nop                                           #  103   0xb5ba0  1      OPC=nop             
  nop                                           #  104   0xb5ba1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5ba2  5      OPC=callq_label     
                                                                                             
.size _ZNSt8messagesIwEC2EPiPKcj, .-_ZNSt8messagesIwEC2EPiPKcj

