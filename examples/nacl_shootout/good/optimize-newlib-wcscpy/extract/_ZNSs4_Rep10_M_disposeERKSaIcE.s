  .text
  .globl _ZNSs4_Rep10_M_disposeERKSaIcE
  .type _ZNSs4_Rep10_M_disposeERKSaIcE, @function

#! file-offset 0xeaa80
#! rip-offset  0xaaa80
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep10_M_disposeERKSaIcE:        #        0xaaa80  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaaa80  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0xaaa82  2      OPC=movl_r32_r32    
  cmpl $0x10073580, %edi                #  3     0xaaa84  6      OPC=cmpl_r32_imm32  
  jne .L_aaac0                          #  4     0xaaa8a  2      OPC=jne_label       
  nop                                   #  5     0xaaa8c  1      OPC=nop             
  nop                                   #  6     0xaaa8d  1      OPC=nop             
  nop                                   #  7     0xaaa8e  1      OPC=nop             
  nop                                   #  8     0xaaa8f  1      OPC=nop             
  nop                                   #  9     0xaaa90  1      OPC=nop             
  nop                                   #  10    0xaaa91  1      OPC=nop             
  nop                                   #  11    0xaaa92  1      OPC=nop             
  nop                                   #  12    0xaaa93  1      OPC=nop             
  nop                                   #  13    0xaaa94  1      OPC=nop             
  nop                                   #  14    0xaaa95  1      OPC=nop             
  nop                                   #  15    0xaaa96  1      OPC=nop             
  nop                                   #  16    0xaaa97  1      OPC=nop             
  nop                                   #  17    0xaaa98  1      OPC=nop             
  nop                                   #  18    0xaaa99  1      OPC=nop             
  nop                                   #  19    0xaaa9a  1      OPC=nop             
  nop                                   #  20    0xaaa9b  1      OPC=nop             
  nop                                   #  21    0xaaa9c  1      OPC=nop             
  nop                                   #  22    0xaaa9d  1      OPC=nop             
  nop                                   #  23    0xaaa9e  1      OPC=nop             
  nop                                   #  24    0xaaa9f  1      OPC=nop             
.L_aaaa0:                               #        0xaaaa0  0      OPC=<label>         
  popq %r11                             #  25    0xaaaa0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xaaaa2  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xaaaa9  1      OPC=nop             
  nop                                   #  28    0xaaaaa  1      OPC=nop             
  nop                                   #  29    0xaaaab  1      OPC=nop             
  nop                                   #  30    0xaaaac  1      OPC=nop             
  addq %r15, %r11                       #  31    0xaaaad  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xaaab0  3      OPC=jmpq_r64        
  nop                                   #  33    0xaaab3  1      OPC=nop             
  nop                                   #  34    0xaaab4  1      OPC=nop             
  nop                                   #  35    0xaaab5  1      OPC=nop             
  nop                                   #  36    0xaaab6  1      OPC=nop             
  nop                                   #  37    0xaaab7  1      OPC=nop             
  nop                                   #  38    0xaaab8  1      OPC=nop             
  nop                                   #  39    0xaaab9  1      OPC=nop             
  nop                                   #  40    0xaaaba  1      OPC=nop             
  nop                                   #  41    0xaaabb  1      OPC=nop             
  nop                                   #  42    0xaaabc  1      OPC=nop             
  nop                                   #  43    0xaaabd  1      OPC=nop             
  nop                                   #  44    0xaaabe  1      OPC=nop             
  nop                                   #  45    0xaaabf  1      OPC=nop             
  nop                                   #  46    0xaaac0  1      OPC=nop             
  nop                                   #  47    0xaaac1  1      OPC=nop             
  nop                                   #  48    0xaaac2  1      OPC=nop             
  nop                                   #  49    0xaaac3  1      OPC=nop             
  nop                                   #  50    0xaaac4  1      OPC=nop             
  nop                                   #  51    0xaaac5  1      OPC=nop             
  nop                                   #  52    0xaaac6  1      OPC=nop             
.L_aaac0:                               #        0xaaac7  0      OPC=<label>         
  movl %edi, %edi                       #  53    0xaaac7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  54    0xaaac9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                 #  55    0xaaace  3      OPC=leal_r32_m16    
  testl %eax, %eax                      #  56    0xaaad1  2      OPC=testl_r32_r32   
  movl %edi, %edi                       #  57    0xaaad3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)           #  58    0xaaad5  5      OPC=movl_m32_r32    
  jg .L_aaaa0                           #  59    0xaaada  2      OPC=jg_label        
  jmpq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  60    0xaaadc  5      OPC=jmpq_label_1    
  nop                                   #  61    0xaaae1  1      OPC=nop             
  nop                                   #  62    0xaaae2  1      OPC=nop             
  nop                                   #  63    0xaaae3  1      OPC=nop             
  nop                                   #  64    0xaaae4  1      OPC=nop             
  nop                                   #  65    0xaaae5  1      OPC=nop             
  nop                                   #  66    0xaaae6  1      OPC=nop             
                                                                                     
.size _ZNSs4_Rep10_M_disposeERKSaIcE, .-_ZNSs4_Rep10_M_disposeERKSaIcE

