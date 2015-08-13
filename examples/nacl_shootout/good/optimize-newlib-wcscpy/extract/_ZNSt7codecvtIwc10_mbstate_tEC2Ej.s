  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC2Ej
  .type _ZNSt7codecvtIwc10_mbstate_tEC2Ej, @function

#! file-offset 0x123d60
#! rip-offset  0xe3d60
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC2Ej:             #        0xe3d60  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe3d60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe3d61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe3d63  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe3d65  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe3d68  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe3d6b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe3d6d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)               #  8     0xe3d6f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe3d77  3      OPC=setne_r8        
  nop                                           #  10    0xe3d7a  1      OPC=nop             
  nop                                           #  11    0xe3d7b  1      OPC=nop             
  nop                                           #  12    0xe3d7c  1      OPC=nop             
  nop                                           #  13    0xe3d7d  1      OPC=nop             
  nop                                           #  14    0xe3d7e  1      OPC=nop             
  nop                                           #  15    0xe3d7f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe3d80  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe3d82  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe3d87  1      OPC=nop             
  nop                                           #  19    0xe3d88  1      OPC=nop             
  nop                                           #  20    0xe3d89  1      OPC=nop             
  nop                                           #  21    0xe3d8a  1      OPC=nop             
  nop                                           #  22    0xe3d8b  1      OPC=nop             
  nop                                           #  23    0xe3d8c  1      OPC=nop             
  nop                                           #  24    0xe3d8d  1      OPC=nop             
  nop                                           #  25    0xe3d8e  1      OPC=nop             
  nop                                           #  26    0xe3d8f  1      OPC=nop             
  nop                                           #  27    0xe3d90  1      OPC=nop             
  nop                                           #  28    0xe3d91  1      OPC=nop             
  nop                                           #  29    0xe3d92  1      OPC=nop             
  nop                                           #  30    0xe3d93  1      OPC=nop             
  nop                                           #  31    0xe3d94  1      OPC=nop             
  nop                                           #  32    0xe3d95  1      OPC=nop             
  nop                                           #  33    0xe3d96  1      OPC=nop             
  nop                                           #  34    0xe3d97  1      OPC=nop             
  nop                                           #  35    0xe3d98  1      OPC=nop             
  nop                                           #  36    0xe3d99  1      OPC=nop             
  nop                                           #  37    0xe3d9a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe3d9b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe3da0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe3da2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe3da7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe3daa  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe3dad  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe3dae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe3db0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe3db7  1      OPC=nop             
  nop                                           #  47    0xe3db8  1      OPC=nop             
  nop                                           #  48    0xe3db9  1      OPC=nop             
  nop                                           #  49    0xe3dba  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe3dbb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe3dbe  3      OPC=jmpq_r64        
  nop                                           #  52    0xe3dc1  1      OPC=nop             
  nop                                           #  53    0xe3dc2  1      OPC=nop             
  nop                                           #  54    0xe3dc3  1      OPC=nop             
  nop                                           #  55    0xe3dc4  1      OPC=nop             
  nop                                           #  56    0xe3dc5  1      OPC=nop             
  nop                                           #  57    0xe3dc6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe3dc7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe3dc9  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)               #  60    0xe3dcb  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe3dd3  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe3dd7  1      OPC=nop             
  nop                                           #  63    0xe3dd8  1      OPC=nop             
  nop                                           #  64    0xe3dd9  1      OPC=nop             
  nop                                           #  65    0xe3dda  1      OPC=nop             
  nop                                           #  66    0xe3ddb  1      OPC=nop             
  nop                                           #  67    0xe3ddc  1      OPC=nop             
  nop                                           #  68    0xe3ddd  1      OPC=nop             
  nop                                           #  69    0xe3dde  1      OPC=nop             
  nop                                           #  70    0xe3ddf  1      OPC=nop             
  nop                                           #  71    0xe3de0  1      OPC=nop             
  nop                                           #  72    0xe3de1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe3de2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe3de7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe3deb  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe3ded  1      OPC=nop             
  nop                                           #  77    0xe3dee  1      OPC=nop             
  nop                                           #  78    0xe3def  1      OPC=nop             
  nop                                           #  79    0xe3df0  1      OPC=nop             
  nop                                           #  80    0xe3df1  1      OPC=nop             
  nop                                           #  81    0xe3df2  1      OPC=nop             
  nop                                           #  82    0xe3df3  1      OPC=nop             
  nop                                           #  83    0xe3df4  1      OPC=nop             
  nop                                           #  84    0xe3df5  1      OPC=nop             
  nop                                           #  85    0xe3df6  1      OPC=nop             
  nop                                           #  86    0xe3df7  1      OPC=nop             
  nop                                           #  87    0xe3df8  1      OPC=nop             
  nop                                           #  88    0xe3df9  1      OPC=nop             
  nop                                           #  89    0xe3dfa  1      OPC=nop             
  nop                                           #  90    0xe3dfb  1      OPC=nop             
  nop                                           #  91    0xe3dfc  1      OPC=nop             
  nop                                           #  92    0xe3dfd  1      OPC=nop             
  nop                                           #  93    0xe3dfe  1      OPC=nop             
  nop                                           #  94    0xe3dff  1      OPC=nop             
  nop                                           #  95    0xe3e00  1      OPC=nop             
  nop                                           #  96    0xe3e01  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe3e02  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIwc10_mbstate_tEC2Ej, .-_ZNSt7codecvtIwc10_mbstate_tEC2Ej

