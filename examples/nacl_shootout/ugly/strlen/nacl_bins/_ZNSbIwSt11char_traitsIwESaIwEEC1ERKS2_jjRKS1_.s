  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_, @function

#! file-offset 0x117440
#! rip-offset  0xd7440
#! capacity    128 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_:                                                  #        0xd7440  0      OPC=0     
  pushq %rbx                                                                                      #  1     0xd7440  1      OPC=1861  
  movl %esi, %esi                                                                                 #  2     0xd7441  2      OPC=1157  
  movl %edi, %ebx                                                                                 #  3     0xd7443  2      OPC=1157  
  movl %r8d, %r8d                                                                                 #  4     0xd7445  3      OPC=1157  
  subl $0x10, %esp                                                                                #  5     0xd7448  3      OPC=2384  
  addq %r15, %rsp                                                                                 #  6     0xd744b  3      OPC=72    
  movl %esi, %esi                                                                                 #  7     0xd744e  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                                        #  8     0xd7450  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                                           #  9     0xd7454  3      OPC=1066  
  movl %eax, %eax                                                                                 #  10    0xd7457  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                                        #  11    0xd7459  4      OPC=1156  
  cmpl %esi, %edx                                                                                 #  12    0xd745d  2      OPC=472   
  nop                                                                                             #  13    0xd745f  1      OPC=1343  
  ja .L_d74a0                                                                                     #  14    0xd7460  6      OPC=863   
  nop                                                                                             #  15    0xd7466  1      OPC=1343  
  nop                                                                                             #  16    0xd7467  1      OPC=1343  
  subl %edx, %esi                                                                                 #  17    0xd7468  2      OPC=2386  
  movb $0x0, (%rsp)                                                                               #  18    0xd746a  4      OPC=1140  
  cmpl %ecx, %esi                                                                                 #  19    0xd746e  2      OPC=472   
  cmoval %ecx, %esi                                                                               #  20    0xd7470  3      OPC=272   
  addl %edx, %esi                                                                                 #  21    0xd7473  2      OPC=67    
  leal (%rdi,%rsi,4), %esi                                                                        #  22    0xd7475  3      OPC=1066  
  leal (%rdi,%rdx,4), %edi                                                                        #  23    0xd7478  3      OPC=1066  
  movl %r8d, %edx                                                                                 #  24    0xd747b  3      OPC=1157  
  nop                                                                                             #  25    0xd747e  1      OPC=1343  
  nop                                                                                             #  26    0xd747f  1      OPC=1343  
  nop                                                                                             #  27    0xd7480  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  28    0xd7481  5      OPC=260   
  movl %ebx, %ebx                                                                                 #  29    0xd7486  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                                        #  30    0xd7488  4      OPC=1136  
  addl $0x10, %esp                                                                                #  31    0xd748c  3      OPC=65    
  addq %r15, %rsp                                                                                 #  32    0xd748f  3      OPC=72    
  popq %rbx                                                                                       #  33    0xd7492  1      OPC=1694  
  popq %r11                                                                                       #  34    0xd7493  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                         #  35    0xd7495  7      OPC=131   
  nop                                                                                             #  36    0xd749c  1      OPC=1343  
  nop                                                                                             #  37    0xd749d  1      OPC=1343  
  nop                                                                                             #  38    0xd749e  1      OPC=1343  
  nop                                                                                             #  39    0xd749f  1      OPC=1343  
  addq %r15, %r11                                                                                 #  40    0xd74a0  3      OPC=72    
  jmpq %r11                                                                                       #  41    0xd74a3  3      OPC=928   
  nop                                                                                             #  42    0xd74a6  1      OPC=1343  
  nop                                                                                             #  43    0xd74a7  1      OPC=1343  
  nop                                                                                             #  44    0xd74a8  1      OPC=1343  
  nop                                                                                             #  45    0xd74a9  1      OPC=1343  
  nop                                                                                             #  46    0xd74aa  1      OPC=1343  
  nop                                                                                             #  47    0xd74ab  1      OPC=1343  
  nop                                                                                             #  48    0xd74ac  1      OPC=1343  
.L_d74a0:                                                                                         #        0xd74ad  0      OPC=0     
  movl $0x1003bafb, %edi                                                                          #  49    0xd74ad  5      OPC=1154  
  nop                                                                                             #  50    0xd74b2  1      OPC=1343  
  nop                                                                                             #  51    0xd74b3  1      OPC=1343  
  nop                                                                                             #  52    0xd74b4  1      OPC=1343  
  nop                                                                                             #  53    0xd74b5  1      OPC=1343  
  nop                                                                                             #  54    0xd74b6  1      OPC=1343  
  nop                                                                                             #  55    0xd74b7  1      OPC=1343  
  nop                                                                                             #  56    0xd74b8  1      OPC=1343  
  nop                                                                                             #  57    0xd74b9  1      OPC=1343  
  nop                                                                                             #  58    0xd74ba  1      OPC=1343  
  nop                                                                                             #  59    0xd74bb  1      OPC=1343  
  nop                                                                                             #  60    0xd74bc  1      OPC=1343  
  nop                                                                                             #  61    0xd74bd  1      OPC=1343  
  nop                                                                                             #  62    0xd74be  1      OPC=1343  
  nop                                                                                             #  63    0xd74bf  1      OPC=1343  
  nop                                                                                             #  64    0xd74c0  1      OPC=1343  
  nop                                                                                             #  65    0xd74c1  1      OPC=1343  
  nop                                                                                             #  66    0xd74c2  1      OPC=1343  
  nop                                                                                             #  67    0xd74c3  1      OPC=1343  
  nop                                                                                             #  68    0xd74c4  1      OPC=1343  
  nop                                                                                             #  69    0xd74c5  1      OPC=1343  
  nop                                                                                             #  70    0xd74c6  1      OPC=1343  
  nop                                                                                             #  71    0xd74c7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  72    0xd74c8  5      OPC=260   
                                                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_

