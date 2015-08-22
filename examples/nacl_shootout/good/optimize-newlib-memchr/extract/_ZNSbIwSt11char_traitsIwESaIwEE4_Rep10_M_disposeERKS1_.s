  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, @function

#! file-offset 0x1163e0
#! rip-offset  0xd63e0
#! capacity    96 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_:        #        0xd63e0  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xd63e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                               #  2     0xd63e2  2      OPC=movl_r32_r32    
  cmpl $0x10073620, %edi                                        #  3     0xd63e4  6      OPC=cmpl_r32_imm32  
  jne .L_d6420                                                  #  4     0xd63ea  2      OPC=jne_label       
  nop                                                           #  5     0xd63ec  1      OPC=nop             
  nop                                                           #  6     0xd63ed  1      OPC=nop             
  nop                                                           #  7     0xd63ee  1      OPC=nop             
  nop                                                           #  8     0xd63ef  1      OPC=nop             
  nop                                                           #  9     0xd63f0  1      OPC=nop             
  nop                                                           #  10    0xd63f1  1      OPC=nop             
  nop                                                           #  11    0xd63f2  1      OPC=nop             
  nop                                                           #  12    0xd63f3  1      OPC=nop             
  nop                                                           #  13    0xd63f4  1      OPC=nop             
  nop                                                           #  14    0xd63f5  1      OPC=nop             
  nop                                                           #  15    0xd63f6  1      OPC=nop             
  nop                                                           #  16    0xd63f7  1      OPC=nop             
  nop                                                           #  17    0xd63f8  1      OPC=nop             
  nop                                                           #  18    0xd63f9  1      OPC=nop             
  nop                                                           #  19    0xd63fa  1      OPC=nop             
  nop                                                           #  20    0xd63fb  1      OPC=nop             
  nop                                                           #  21    0xd63fc  1      OPC=nop             
  nop                                                           #  22    0xd63fd  1      OPC=nop             
  nop                                                           #  23    0xd63fe  1      OPC=nop             
  nop                                                           #  24    0xd63ff  1      OPC=nop             
.L_d6400:                                                       #        0xd6400  0      OPC=<label>         
  popq %r11                                                     #  25    0xd6400  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  26    0xd6402  7      OPC=andl_r32_imm32  
  nop                                                           #  27    0xd6409  1      OPC=nop             
  nop                                                           #  28    0xd640a  1      OPC=nop             
  nop                                                           #  29    0xd640b  1      OPC=nop             
  nop                                                           #  30    0xd640c  1      OPC=nop             
  addq %r15, %r11                                               #  31    0xd640d  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  32    0xd6410  3      OPC=jmpq_r64        
  nop                                                           #  33    0xd6413  1      OPC=nop             
  nop                                                           #  34    0xd6414  1      OPC=nop             
  nop                                                           #  35    0xd6415  1      OPC=nop             
  nop                                                           #  36    0xd6416  1      OPC=nop             
  nop                                                           #  37    0xd6417  1      OPC=nop             
  nop                                                           #  38    0xd6418  1      OPC=nop             
  nop                                                           #  39    0xd6419  1      OPC=nop             
  nop                                                           #  40    0xd641a  1      OPC=nop             
  nop                                                           #  41    0xd641b  1      OPC=nop             
  nop                                                           #  42    0xd641c  1      OPC=nop             
  nop                                                           #  43    0xd641d  1      OPC=nop             
  nop                                                           #  44    0xd641e  1      OPC=nop             
  nop                                                           #  45    0xd641f  1      OPC=nop             
  nop                                                           #  46    0xd6420  1      OPC=nop             
  nop                                                           #  47    0xd6421  1      OPC=nop             
  nop                                                           #  48    0xd6422  1      OPC=nop             
  nop                                                           #  49    0xd6423  1      OPC=nop             
  nop                                                           #  50    0xd6424  1      OPC=nop             
  nop                                                           #  51    0xd6425  1      OPC=nop             
  nop                                                           #  52    0xd6426  1      OPC=nop             
.L_d6420:                                                       #        0xd6427  0      OPC=<label>         
  movl %edi, %edi                                               #  53    0xd6427  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  54    0xd6429  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                         #  55    0xd642e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                              #  56    0xd6431  2      OPC=testl_r32_r32   
  movl %edi, %edi                                               #  57    0xd6433  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                   #  58    0xd6435  5      OPC=movl_m32_r32    
  jg .L_d6400                                                   #  59    0xd643a  2      OPC=jg_label        
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  60    0xd643c  5      OPC=jmpq_label_1    
  nop                                                           #  61    0xd6441  1      OPC=nop             
  nop                                                           #  62    0xd6442  1      OPC=nop             
  nop                                                           #  63    0xd6443  1      OPC=nop             
  nop                                                           #  64    0xd6444  1      OPC=nop             
  nop                                                           #  65    0xd6445  1      OPC=nop             
  nop                                                           #  66    0xd6446  1      OPC=nop             
                                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_

