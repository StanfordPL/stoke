  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_, @function

#! file-offset 0x1174c0
#! rip-offset  0xd74c0
#! capacity    128 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_:                                                  #        0xd74c0  0      OPC=0     
  pushq %rbx                                                                                      #  1     0xd74c0  1      OPC=1861  
  movl %esi, %esi                                                                                 #  2     0xd74c1  2      OPC=1157  
  movl %edi, %ebx                                                                                 #  3     0xd74c3  2      OPC=1157  
  movl %r8d, %r8d                                                                                 #  4     0xd74c5  3      OPC=1157  
  subl $0x10, %esp                                                                                #  5     0xd74c8  3      OPC=2384  
  addq %r15, %rsp                                                                                 #  6     0xd74cb  3      OPC=72    
  movl %esi, %esi                                                                                 #  7     0xd74ce  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                                        #  8     0xd74d0  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                                           #  9     0xd74d4  3      OPC=1066  
  movl %eax, %eax                                                                                 #  10    0xd74d7  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                                        #  11    0xd74d9  4      OPC=1156  
  cmpl %esi, %edx                                                                                 #  12    0xd74dd  2      OPC=472   
  nop                                                                                             #  13    0xd74df  1      OPC=1343  
  ja .L_d7520                                                                                     #  14    0xd74e0  6      OPC=863   
  nop                                                                                             #  15    0xd74e6  1      OPC=1343  
  nop                                                                                             #  16    0xd74e7  1      OPC=1343  
  subl %edx, %esi                                                                                 #  17    0xd74e8  2      OPC=2386  
  movb $0x0, (%rsp)                                                                               #  18    0xd74ea  4      OPC=1140  
  cmpl %ecx, %esi                                                                                 #  19    0xd74ee  2      OPC=472   
  cmoval %ecx, %esi                                                                               #  20    0xd74f0  3      OPC=272   
  addl %edx, %esi                                                                                 #  21    0xd74f3  2      OPC=67    
  leal (%rdi,%rsi,4), %esi                                                                        #  22    0xd74f5  3      OPC=1066  
  leal (%rdi,%rdx,4), %edi                                                                        #  23    0xd74f8  3      OPC=1066  
  movl %r8d, %edx                                                                                 #  24    0xd74fb  3      OPC=1157  
  nop                                                                                             #  25    0xd74fe  1      OPC=1343  
  nop                                                                                             #  26    0xd74ff  1      OPC=1343  
  nop                                                                                             #  27    0xd7500  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  28    0xd7501  5      OPC=260   
  movl %ebx, %ebx                                                                                 #  29    0xd7506  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                                        #  30    0xd7508  4      OPC=1136  
  addl $0x10, %esp                                                                                #  31    0xd750c  3      OPC=65    
  addq %r15, %rsp                                                                                 #  32    0xd750f  3      OPC=72    
  popq %rbx                                                                                       #  33    0xd7512  1      OPC=1694  
  popq %r11                                                                                       #  34    0xd7513  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                         #  35    0xd7515  7      OPC=131   
  nop                                                                                             #  36    0xd751c  1      OPC=1343  
  nop                                                                                             #  37    0xd751d  1      OPC=1343  
  nop                                                                                             #  38    0xd751e  1      OPC=1343  
  nop                                                                                             #  39    0xd751f  1      OPC=1343  
  addq %r15, %r11                                                                                 #  40    0xd7520  3      OPC=72    
  jmpq %r11                                                                                       #  41    0xd7523  3      OPC=928   
  nop                                                                                             #  42    0xd7526  1      OPC=1343  
  nop                                                                                             #  43    0xd7527  1      OPC=1343  
  nop                                                                                             #  44    0xd7528  1      OPC=1343  
  nop                                                                                             #  45    0xd7529  1      OPC=1343  
  nop                                                                                             #  46    0xd752a  1      OPC=1343  
  nop                                                                                             #  47    0xd752b  1      OPC=1343  
  nop                                                                                             #  48    0xd752c  1      OPC=1343  
.L_d7520:                                                                                         #        0xd752d  0      OPC=0     
  movl $0x1003bafb, %edi                                                                          #  49    0xd752d  5      OPC=1154  
  nop                                                                                             #  50    0xd7532  1      OPC=1343  
  nop                                                                                             #  51    0xd7533  1      OPC=1343  
  nop                                                                                             #  52    0xd7534  1      OPC=1343  
  nop                                                                                             #  53    0xd7535  1      OPC=1343  
  nop                                                                                             #  54    0xd7536  1      OPC=1343  
  nop                                                                                             #  55    0xd7537  1      OPC=1343  
  nop                                                                                             #  56    0xd7538  1      OPC=1343  
  nop                                                                                             #  57    0xd7539  1      OPC=1343  
  nop                                                                                             #  58    0xd753a  1      OPC=1343  
  nop                                                                                             #  59    0xd753b  1      OPC=1343  
  nop                                                                                             #  60    0xd753c  1      OPC=1343  
  nop                                                                                             #  61    0xd753d  1      OPC=1343  
  nop                                                                                             #  62    0xd753e  1      OPC=1343  
  nop                                                                                             #  63    0xd753f  1      OPC=1343  
  nop                                                                                             #  64    0xd7540  1      OPC=1343  
  nop                                                                                             #  65    0xd7541  1      OPC=1343  
  nop                                                                                             #  66    0xd7542  1      OPC=1343  
  nop                                                                                             #  67    0xd7543  1      OPC=1343  
  nop                                                                                             #  68    0xd7544  1      OPC=1343  
  nop                                                                                             #  69    0xd7545  1      OPC=1343  
  nop                                                                                             #  70    0xd7546  1      OPC=1343  
  nop                                                                                             #  71    0xd7547  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  72    0xd7548  5      OPC=260   
                                                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_

