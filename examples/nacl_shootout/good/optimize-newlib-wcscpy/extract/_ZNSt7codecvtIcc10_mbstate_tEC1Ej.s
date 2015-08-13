  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1Ej
  .type _ZNSt7codecvtIcc10_mbstate_tEC1Ej, @function

#! file-offset 0x123e00
#! rip-offset  0xe3e00
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC1Ej:             #        0xe3e00  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe3e00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe3e01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe3e03  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe3e05  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe3e08  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe3e0b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe3e0d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)               #  8     0xe3e0f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe3e17  3      OPC=setne_r8        
  nop                                           #  10    0xe3e1a  1      OPC=nop             
  nop                                           #  11    0xe3e1b  1      OPC=nop             
  nop                                           #  12    0xe3e1c  1      OPC=nop             
  nop                                           #  13    0xe3e1d  1      OPC=nop             
  nop                                           #  14    0xe3e1e  1      OPC=nop             
  nop                                           #  15    0xe3e1f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe3e20  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe3e22  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe3e27  1      OPC=nop             
  nop                                           #  19    0xe3e28  1      OPC=nop             
  nop                                           #  20    0xe3e29  1      OPC=nop             
  nop                                           #  21    0xe3e2a  1      OPC=nop             
  nop                                           #  22    0xe3e2b  1      OPC=nop             
  nop                                           #  23    0xe3e2c  1      OPC=nop             
  nop                                           #  24    0xe3e2d  1      OPC=nop             
  nop                                           #  25    0xe3e2e  1      OPC=nop             
  nop                                           #  26    0xe3e2f  1      OPC=nop             
  nop                                           #  27    0xe3e30  1      OPC=nop             
  nop                                           #  28    0xe3e31  1      OPC=nop             
  nop                                           #  29    0xe3e32  1      OPC=nop             
  nop                                           #  30    0xe3e33  1      OPC=nop             
  nop                                           #  31    0xe3e34  1      OPC=nop             
  nop                                           #  32    0xe3e35  1      OPC=nop             
  nop                                           #  33    0xe3e36  1      OPC=nop             
  nop                                           #  34    0xe3e37  1      OPC=nop             
  nop                                           #  35    0xe3e38  1      OPC=nop             
  nop                                           #  36    0xe3e39  1      OPC=nop             
  nop                                           #  37    0xe3e3a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe3e3b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe3e40  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe3e42  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe3e47  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe3e4a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe3e4d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe3e4e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe3e50  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe3e57  1      OPC=nop             
  nop                                           #  47    0xe3e58  1      OPC=nop             
  nop                                           #  48    0xe3e59  1      OPC=nop             
  nop                                           #  49    0xe3e5a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe3e5b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe3e5e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe3e61  1      OPC=nop             
  nop                                           #  53    0xe3e62  1      OPC=nop             
  nop                                           #  54    0xe3e63  1      OPC=nop             
  nop                                           #  55    0xe3e64  1      OPC=nop             
  nop                                           #  56    0xe3e65  1      OPC=nop             
  nop                                           #  57    0xe3e66  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe3e67  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe3e69  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)               #  60    0xe3e6b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe3e73  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe3e77  1      OPC=nop             
  nop                                           #  63    0xe3e78  1      OPC=nop             
  nop                                           #  64    0xe3e79  1      OPC=nop             
  nop                                           #  65    0xe3e7a  1      OPC=nop             
  nop                                           #  66    0xe3e7b  1      OPC=nop             
  nop                                           #  67    0xe3e7c  1      OPC=nop             
  nop                                           #  68    0xe3e7d  1      OPC=nop             
  nop                                           #  69    0xe3e7e  1      OPC=nop             
  nop                                           #  70    0xe3e7f  1      OPC=nop             
  nop                                           #  71    0xe3e80  1      OPC=nop             
  nop                                           #  72    0xe3e81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe3e82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe3e87  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe3e8b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe3e8d  1      OPC=nop             
  nop                                           #  77    0xe3e8e  1      OPC=nop             
  nop                                           #  78    0xe3e8f  1      OPC=nop             
  nop                                           #  79    0xe3e90  1      OPC=nop             
  nop                                           #  80    0xe3e91  1      OPC=nop             
  nop                                           #  81    0xe3e92  1      OPC=nop             
  nop                                           #  82    0xe3e93  1      OPC=nop             
  nop                                           #  83    0xe3e94  1      OPC=nop             
  nop                                           #  84    0xe3e95  1      OPC=nop             
  nop                                           #  85    0xe3e96  1      OPC=nop             
  nop                                           #  86    0xe3e97  1      OPC=nop             
  nop                                           #  87    0xe3e98  1      OPC=nop             
  nop                                           #  88    0xe3e99  1      OPC=nop             
  nop                                           #  89    0xe3e9a  1      OPC=nop             
  nop                                           #  90    0xe3e9b  1      OPC=nop             
  nop                                           #  91    0xe3e9c  1      OPC=nop             
  nop                                           #  92    0xe3e9d  1      OPC=nop             
  nop                                           #  93    0xe3e9e  1      OPC=nop             
  nop                                           #  94    0xe3e9f  1      OPC=nop             
  nop                                           #  95    0xe3ea0  1      OPC=nop             
  nop                                           #  96    0xe3ea1  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe3ea2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIcc10_mbstate_tEC1Ej, .-_ZNSt7codecvtIcc10_mbstate_tEC1Ej

