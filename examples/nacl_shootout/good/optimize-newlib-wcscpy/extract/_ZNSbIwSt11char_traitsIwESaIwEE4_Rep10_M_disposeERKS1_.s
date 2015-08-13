  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, @function

#! file-offset 0x1159c0
#! rip-offset  0xd59c0
#! capacity    96 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_:        #        0xd59c0  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xd59c0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                               #  2     0xd59c2  2      OPC=movl_r32_r32    
  cmpl $0x10073620, %edi                                        #  3     0xd59c4  6      OPC=cmpl_r32_imm32  
  jne .L_d5a00                                                  #  4     0xd59ca  2      OPC=jne_label       
  nop                                                           #  5     0xd59cc  1      OPC=nop             
  nop                                                           #  6     0xd59cd  1      OPC=nop             
  nop                                                           #  7     0xd59ce  1      OPC=nop             
  nop                                                           #  8     0xd59cf  1      OPC=nop             
  nop                                                           #  9     0xd59d0  1      OPC=nop             
  nop                                                           #  10    0xd59d1  1      OPC=nop             
  nop                                                           #  11    0xd59d2  1      OPC=nop             
  nop                                                           #  12    0xd59d3  1      OPC=nop             
  nop                                                           #  13    0xd59d4  1      OPC=nop             
  nop                                                           #  14    0xd59d5  1      OPC=nop             
  nop                                                           #  15    0xd59d6  1      OPC=nop             
  nop                                                           #  16    0xd59d7  1      OPC=nop             
  nop                                                           #  17    0xd59d8  1      OPC=nop             
  nop                                                           #  18    0xd59d9  1      OPC=nop             
  nop                                                           #  19    0xd59da  1      OPC=nop             
  nop                                                           #  20    0xd59db  1      OPC=nop             
  nop                                                           #  21    0xd59dc  1      OPC=nop             
  nop                                                           #  22    0xd59dd  1      OPC=nop             
  nop                                                           #  23    0xd59de  1      OPC=nop             
  nop                                                           #  24    0xd59df  1      OPC=nop             
.L_d59e0:                                                       #        0xd59e0  0      OPC=<label>         
  popq %r11                                                     #  25    0xd59e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  26    0xd59e2  7      OPC=andl_r32_imm32  
  nop                                                           #  27    0xd59e9  1      OPC=nop             
  nop                                                           #  28    0xd59ea  1      OPC=nop             
  nop                                                           #  29    0xd59eb  1      OPC=nop             
  nop                                                           #  30    0xd59ec  1      OPC=nop             
  addq %r15, %r11                                               #  31    0xd59ed  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  32    0xd59f0  3      OPC=jmpq_r64        
  nop                                                           #  33    0xd59f3  1      OPC=nop             
  nop                                                           #  34    0xd59f4  1      OPC=nop             
  nop                                                           #  35    0xd59f5  1      OPC=nop             
  nop                                                           #  36    0xd59f6  1      OPC=nop             
  nop                                                           #  37    0xd59f7  1      OPC=nop             
  nop                                                           #  38    0xd59f8  1      OPC=nop             
  nop                                                           #  39    0xd59f9  1      OPC=nop             
  nop                                                           #  40    0xd59fa  1      OPC=nop             
  nop                                                           #  41    0xd59fb  1      OPC=nop             
  nop                                                           #  42    0xd59fc  1      OPC=nop             
  nop                                                           #  43    0xd59fd  1      OPC=nop             
  nop                                                           #  44    0xd59fe  1      OPC=nop             
  nop                                                           #  45    0xd59ff  1      OPC=nop             
  nop                                                           #  46    0xd5a00  1      OPC=nop             
  nop                                                           #  47    0xd5a01  1      OPC=nop             
  nop                                                           #  48    0xd5a02  1      OPC=nop             
  nop                                                           #  49    0xd5a03  1      OPC=nop             
  nop                                                           #  50    0xd5a04  1      OPC=nop             
  nop                                                           #  51    0xd5a05  1      OPC=nop             
  nop                                                           #  52    0xd5a06  1      OPC=nop             
.L_d5a00:                                                       #        0xd5a07  0      OPC=<label>         
  movl %edi, %edi                                               #  53    0xd5a07  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  54    0xd5a09  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                         #  55    0xd5a0e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                              #  56    0xd5a11  2      OPC=testl_r32_r32   
  movl %edi, %edi                                               #  57    0xd5a13  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                   #  58    0xd5a15  5      OPC=movl_m32_r32    
  jg .L_d59e0                                                   #  59    0xd5a1a  2      OPC=jg_label        
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  60    0xd5a1c  5      OPC=jmpq_label_1    
  nop                                                           #  61    0xd5a21  1      OPC=nop             
  nop                                                           #  62    0xd5a22  1      OPC=nop             
  nop                                                           #  63    0xd5a23  1      OPC=nop             
  nop                                                           #  64    0xd5a24  1      OPC=nop             
  nop                                                           #  65    0xd5a25  1      OPC=nop             
  nop                                                           #  66    0xd5a26  1      OPC=nop             
                                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_

