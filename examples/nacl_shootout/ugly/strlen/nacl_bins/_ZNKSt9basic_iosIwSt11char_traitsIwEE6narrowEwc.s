  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, @function

#! file-offset 0xa4a60
#! rip-offset  0x64a60
#! capacity    96 bytes

# Text                                             #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc:  #        0x64a60  0      OPC=0     
  movl %edi, %edi                                  #  1     0x64a60  2      OPC=1157  
  subl $0x8, %esp                                  #  2     0x64a62  3      OPC=2384  
  addq %r15, %rsp                                  #  3     0x64a65  3      OPC=72    
  movl %edi, %edi                                  #  4     0x64a68  2      OPC=1157  
  movl 0x80(%r15,%rdi,1), %edi                     #  5     0x64a6a  8      OPC=1156  
  testq %rdi, %rdi                                 #  6     0x64a72  3      OPC=2438  
  je .L_64aa0                                      #  7     0x64a75  6      OPC=893   
  nop                                              #  8     0x64a7b  1      OPC=1343  
  nop                                              #  9     0x64a7c  1      OPC=1343  
  movl %edi, %edi                                  #  10    0x64a7d  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                         #  11    0x64a7f  4      OPC=1156  
  movsbl %dl, %edx                                 #  12    0x64a83  3      OPC=1282  
  movl %eax, %eax                                  #  13    0x64a86  2      OPC=1157  
  movl 0x30(%r15,%rax,1), %eax                     #  14    0x64a88  5      OPC=1156  
  addl $0x8, %esp                                  #  15    0x64a8d  3      OPC=65    
  addq %r15, %rsp                                  #  16    0x64a90  3      OPC=72    
  andl $0xffffffe0, %eax                           #  17    0x64a93  6      OPC=131   
  nop                                              #  18    0x64a99  1      OPC=1343  
  nop                                              #  19    0x64a9a  1      OPC=1343  
  nop                                              #  20    0x64a9b  1      OPC=1343  
  addq %r15, %rax                                  #  21    0x64a9c  3      OPC=72    
  jmpq %rax                                        #  22    0x64a9f  2      OPC=928   
  nop                                              #  23    0x64aa1  1      OPC=1343  
  nop                                              #  24    0x64aa2  1      OPC=1343  
  nop                                              #  25    0x64aa3  1      OPC=1343  
  nop                                              #  26    0x64aa4  1      OPC=1343  
  nop                                              #  27    0x64aa5  1      OPC=1343  
  nop                                              #  28    0x64aa6  1      OPC=1343  
  nop                                              #  29    0x64aa7  1      OPC=1343  
  nop                                              #  30    0x64aa8  1      OPC=1343  
  nop                                              #  31    0x64aa9  1      OPC=1343  
  nop                                              #  32    0x64aaa  1      OPC=1343  
  nop                                              #  33    0x64aab  1      OPC=1343  
.L_64aa0:                                          #        0x64aac  0      OPC=0     
  nop                                              #  34    0x64aac  1      OPC=1343  
  nop                                              #  35    0x64aad  1      OPC=1343  
  nop                                              #  36    0x64aae  1      OPC=1343  
  nop                                              #  37    0x64aaf  1      OPC=1343  
  nop                                              #  38    0x64ab0  1      OPC=1343  
  nop                                              #  39    0x64ab1  1      OPC=1343  
  nop                                              #  40    0x64ab2  1      OPC=1343  
  nop                                              #  41    0x64ab3  1      OPC=1343  
  nop                                              #  42    0x64ab4  1      OPC=1343  
  nop                                              #  43    0x64ab5  1      OPC=1343  
  nop                                              #  44    0x64ab6  1      OPC=1343  
  nop                                              #  45    0x64ab7  1      OPC=1343  
  nop                                              #  46    0x64ab8  1      OPC=1343  
  nop                                              #  47    0x64ab9  1      OPC=1343  
  nop                                              #  48    0x64aba  1      OPC=1343  
  nop                                              #  49    0x64abb  1      OPC=1343  
  nop                                              #  50    0x64abc  1      OPC=1343  
  nop                                              #  51    0x64abd  1      OPC=1343  
  nop                                              #  52    0x64abe  1      OPC=1343  
  nop                                              #  53    0x64abf  1      OPC=1343  
  nop                                              #  54    0x64ac0  1      OPC=1343  
  nop                                              #  55    0x64ac1  1      OPC=1343  
  nop                                              #  56    0x64ac2  1      OPC=1343  
  nop                                              #  57    0x64ac3  1      OPC=1343  
  nop                                              #  58    0x64ac4  1      OPC=1343  
  nop                                              #  59    0x64ac5  1      OPC=1343  
  nop                                              #  60    0x64ac6  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                   #  61    0x64ac7  5      OPC=260   
                                                                                      
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc

