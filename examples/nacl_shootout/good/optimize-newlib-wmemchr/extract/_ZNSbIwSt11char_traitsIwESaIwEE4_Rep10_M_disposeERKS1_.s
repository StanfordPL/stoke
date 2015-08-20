  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, @function

#! file-offset 0x115cc0
#! rip-offset  0xd5cc0
#! capacity    96 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_:        #        0xd5cc0  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xd5cc0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                               #  2     0xd5cc2  2      OPC=movl_r32_r32    
  cmpl $0x10073620, %edi                                        #  3     0xd5cc4  6      OPC=cmpl_r32_imm32  
  jne .L_d5d00                                                  #  4     0xd5cca  2      OPC=jne_label       
  nop                                                           #  5     0xd5ccc  1      OPC=nop             
  nop                                                           #  6     0xd5ccd  1      OPC=nop             
  nop                                                           #  7     0xd5cce  1      OPC=nop             
  nop                                                           #  8     0xd5ccf  1      OPC=nop             
  nop                                                           #  9     0xd5cd0  1      OPC=nop             
  nop                                                           #  10    0xd5cd1  1      OPC=nop             
  nop                                                           #  11    0xd5cd2  1      OPC=nop             
  nop                                                           #  12    0xd5cd3  1      OPC=nop             
  nop                                                           #  13    0xd5cd4  1      OPC=nop             
  nop                                                           #  14    0xd5cd5  1      OPC=nop             
  nop                                                           #  15    0xd5cd6  1      OPC=nop             
  nop                                                           #  16    0xd5cd7  1      OPC=nop             
  nop                                                           #  17    0xd5cd8  1      OPC=nop             
  nop                                                           #  18    0xd5cd9  1      OPC=nop             
  nop                                                           #  19    0xd5cda  1      OPC=nop             
  nop                                                           #  20    0xd5cdb  1      OPC=nop             
  nop                                                           #  21    0xd5cdc  1      OPC=nop             
  nop                                                           #  22    0xd5cdd  1      OPC=nop             
  nop                                                           #  23    0xd5cde  1      OPC=nop             
  nop                                                           #  24    0xd5cdf  1      OPC=nop             
.L_d5ce0:                                                       #        0xd5ce0  0      OPC=<label>         
  popq %r11                                                     #  25    0xd5ce0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  26    0xd5ce2  7      OPC=andl_r32_imm32  
  nop                                                           #  27    0xd5ce9  1      OPC=nop             
  nop                                                           #  28    0xd5cea  1      OPC=nop             
  nop                                                           #  29    0xd5ceb  1      OPC=nop             
  nop                                                           #  30    0xd5cec  1      OPC=nop             
  addq %r15, %r11                                               #  31    0xd5ced  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  32    0xd5cf0  3      OPC=jmpq_r64        
  nop                                                           #  33    0xd5cf3  1      OPC=nop             
  nop                                                           #  34    0xd5cf4  1      OPC=nop             
  nop                                                           #  35    0xd5cf5  1      OPC=nop             
  nop                                                           #  36    0xd5cf6  1      OPC=nop             
  nop                                                           #  37    0xd5cf7  1      OPC=nop             
  nop                                                           #  38    0xd5cf8  1      OPC=nop             
  nop                                                           #  39    0xd5cf9  1      OPC=nop             
  nop                                                           #  40    0xd5cfa  1      OPC=nop             
  nop                                                           #  41    0xd5cfb  1      OPC=nop             
  nop                                                           #  42    0xd5cfc  1      OPC=nop             
  nop                                                           #  43    0xd5cfd  1      OPC=nop             
  nop                                                           #  44    0xd5cfe  1      OPC=nop             
  nop                                                           #  45    0xd5cff  1      OPC=nop             
  nop                                                           #  46    0xd5d00  1      OPC=nop             
  nop                                                           #  47    0xd5d01  1      OPC=nop             
  nop                                                           #  48    0xd5d02  1      OPC=nop             
  nop                                                           #  49    0xd5d03  1      OPC=nop             
  nop                                                           #  50    0xd5d04  1      OPC=nop             
  nop                                                           #  51    0xd5d05  1      OPC=nop             
  nop                                                           #  52    0xd5d06  1      OPC=nop             
.L_d5d00:                                                       #        0xd5d07  0      OPC=<label>         
  movl %edi, %edi                                               #  53    0xd5d07  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  54    0xd5d09  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                         #  55    0xd5d0e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                              #  56    0xd5d11  2      OPC=testl_r32_r32   
  movl %edi, %edi                                               #  57    0xd5d13  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                   #  58    0xd5d15  5      OPC=movl_m32_r32    
  jg .L_d5ce0                                                   #  59    0xd5d1a  2      OPC=jg_label        
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  60    0xd5d1c  5      OPC=jmpq_label_1    
  nop                                                           #  61    0xd5d21  1      OPC=nop             
  nop                                                           #  62    0xd5d22  1      OPC=nop             
  nop                                                           #  63    0xd5d23  1      OPC=nop             
  nop                                                           #  64    0xd5d24  1      OPC=nop             
  nop                                                           #  65    0xd5d25  1      OPC=nop             
  nop                                                           #  66    0xd5d26  1      OPC=nop             
                                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_

