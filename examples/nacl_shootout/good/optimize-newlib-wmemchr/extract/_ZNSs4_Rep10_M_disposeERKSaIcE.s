  .text
  .globl _ZNSs4_Rep10_M_disposeERKSaIcE
  .type _ZNSs4_Rep10_M_disposeERKSaIcE, @function

#! file-offset 0xead80
#! rip-offset  0xaad80
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep10_M_disposeERKSaIcE:        #        0xaad80  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaad80  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0xaad82  2      OPC=movl_r32_r32    
  cmpl $0x10073580, %edi                #  3     0xaad84  6      OPC=cmpl_r32_imm32  
  jne .L_aadc0                          #  4     0xaad8a  2      OPC=jne_label       
  nop                                   #  5     0xaad8c  1      OPC=nop             
  nop                                   #  6     0xaad8d  1      OPC=nop             
  nop                                   #  7     0xaad8e  1      OPC=nop             
  nop                                   #  8     0xaad8f  1      OPC=nop             
  nop                                   #  9     0xaad90  1      OPC=nop             
  nop                                   #  10    0xaad91  1      OPC=nop             
  nop                                   #  11    0xaad92  1      OPC=nop             
  nop                                   #  12    0xaad93  1      OPC=nop             
  nop                                   #  13    0xaad94  1      OPC=nop             
  nop                                   #  14    0xaad95  1      OPC=nop             
  nop                                   #  15    0xaad96  1      OPC=nop             
  nop                                   #  16    0xaad97  1      OPC=nop             
  nop                                   #  17    0xaad98  1      OPC=nop             
  nop                                   #  18    0xaad99  1      OPC=nop             
  nop                                   #  19    0xaad9a  1      OPC=nop             
  nop                                   #  20    0xaad9b  1      OPC=nop             
  nop                                   #  21    0xaad9c  1      OPC=nop             
  nop                                   #  22    0xaad9d  1      OPC=nop             
  nop                                   #  23    0xaad9e  1      OPC=nop             
  nop                                   #  24    0xaad9f  1      OPC=nop             
.L_aada0:                               #        0xaada0  0      OPC=<label>         
  popq %r11                             #  25    0xaada0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xaada2  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xaada9  1      OPC=nop             
  nop                                   #  28    0xaadaa  1      OPC=nop             
  nop                                   #  29    0xaadab  1      OPC=nop             
  nop                                   #  30    0xaadac  1      OPC=nop             
  addq %r15, %r11                       #  31    0xaadad  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xaadb0  3      OPC=jmpq_r64        
  nop                                   #  33    0xaadb3  1      OPC=nop             
  nop                                   #  34    0xaadb4  1      OPC=nop             
  nop                                   #  35    0xaadb5  1      OPC=nop             
  nop                                   #  36    0xaadb6  1      OPC=nop             
  nop                                   #  37    0xaadb7  1      OPC=nop             
  nop                                   #  38    0xaadb8  1      OPC=nop             
  nop                                   #  39    0xaadb9  1      OPC=nop             
  nop                                   #  40    0xaadba  1      OPC=nop             
  nop                                   #  41    0xaadbb  1      OPC=nop             
  nop                                   #  42    0xaadbc  1      OPC=nop             
  nop                                   #  43    0xaadbd  1      OPC=nop             
  nop                                   #  44    0xaadbe  1      OPC=nop             
  nop                                   #  45    0xaadbf  1      OPC=nop             
  nop                                   #  46    0xaadc0  1      OPC=nop             
  nop                                   #  47    0xaadc1  1      OPC=nop             
  nop                                   #  48    0xaadc2  1      OPC=nop             
  nop                                   #  49    0xaadc3  1      OPC=nop             
  nop                                   #  50    0xaadc4  1      OPC=nop             
  nop                                   #  51    0xaadc5  1      OPC=nop             
  nop                                   #  52    0xaadc6  1      OPC=nop             
.L_aadc0:                               #        0xaadc7  0      OPC=<label>         
  movl %edi, %edi                       #  53    0xaadc7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  54    0xaadc9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                 #  55    0xaadce  3      OPC=leal_r32_m16    
  testl %eax, %eax                      #  56    0xaadd1  2      OPC=testl_r32_r32   
  movl %edi, %edi                       #  57    0xaadd3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)           #  58    0xaadd5  5      OPC=movl_m32_r32    
  jg .L_aada0                           #  59    0xaadda  2      OPC=jg_label        
  jmpq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  60    0xaaddc  5      OPC=jmpq_label_1    
  nop                                   #  61    0xaade1  1      OPC=nop             
  nop                                   #  62    0xaade2  1      OPC=nop             
  nop                                   #  63    0xaade3  1      OPC=nop             
  nop                                   #  64    0xaade4  1      OPC=nop             
  nop                                   #  65    0xaade5  1      OPC=nop             
  nop                                   #  66    0xaade6  1      OPC=nop             
                                                                                     
.size _ZNSs4_Rep10_M_disposeERKSaIcE, .-_ZNSs4_Rep10_M_disposeERKSaIcE

