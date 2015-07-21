  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x119a60
#! rip-offset  0xd9a60
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE2atEj:                    #        0xd9a60  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                  #  1     0xd9a60  5      OPC=1138  
  movl %edi, %ebx                                         #  2     0xd9a65  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                   #  3     0xd9a67  5      OPC=1138  
  subl $0x18, %esp                                        #  4     0xd9a6c  3      OPC=2384  
  addq %r15, %rsp                                         #  5     0xd9a6f  3      OPC=72    
  movl %ebx, %ebx                                         #  6     0xd9a72  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  7     0xd9a74  4      OPC=1156  
  movl %esi, %r12d                                        #  8     0xd9a78  3      OPC=1157  
  leal -0xc(%rax), %edx                                   #  9     0xd9a7b  3      OPC=1066  
  xchgw %ax, %ax                                          #  10    0xd9a7e  2      OPC=3700  
  movl %edx, %edx                                         #  11    0xd9a80  2      OPC=1157  
  cmpl (%r15,%rdx,1), %esi                                #  12    0xd9a82  4      OPC=471   
  jae .L_d9ae0                                            #  13    0xd9a86  6      OPC=869   
  nop                                                     #  14    0xd9a8c  1      OPC=1343  
  nop                                                     #  15    0xd9a8d  1      OPC=1343  
  movl %edx, %edx                                         #  16    0xd9a8e  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %edx                             #  17    0xd9a90  5      OPC=1156  
  testl %edx, %edx                                        #  18    0xd9a95  2      OPC=2436  
  js .L_d9ac0                                             #  19    0xd9a97  6      OPC=1043  
  nop                                                     #  20    0xd9a9d  1      OPC=1343  
  nop                                                     #  21    0xd9a9e  1      OPC=1343  
  movl %ebx, %edi                                         #  22    0xd9a9f  2      OPC=1157  
  nop                                                     #  23    0xd9aa1  1      OPC=1343  
  nop                                                     #  24    0xd9aa2  1      OPC=1343  
  nop                                                     #  25    0xd9aa3  1      OPC=1343  
  nop                                                     #  26    0xd9aa4  1      OPC=1343  
  nop                                                     #  27    0xd9aa5  1      OPC=1343  
  nop                                                     #  28    0xd9aa6  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xd9aa7  5      OPC=260   
  movl %ebx, %ebx                                         #  30    0xd9aac  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  31    0xd9aae  4      OPC=1156  
  nop                                                     #  32    0xd9ab2  1      OPC=1343  
  nop                                                     #  33    0xd9ab3  1      OPC=1343  
  nop                                                     #  34    0xd9ab4  1      OPC=1343  
  nop                                                     #  35    0xd9ab5  1      OPC=1343  
  nop                                                     #  36    0xd9ab6  1      OPC=1343  
  nop                                                     #  37    0xd9ab7  1      OPC=1343  
  nop                                                     #  38    0xd9ab8  1      OPC=1343  
  nop                                                     #  39    0xd9ab9  1      OPC=1343  
  nop                                                     #  40    0xd9aba  1      OPC=1343  
  nop                                                     #  41    0xd9abb  1      OPC=1343  
  nop                                                     #  42    0xd9abc  1      OPC=1343  
  nop                                                     #  43    0xd9abd  1      OPC=1343  
  nop                                                     #  44    0xd9abe  1      OPC=1343  
  nop                                                     #  45    0xd9abf  1      OPC=1343  
  nop                                                     #  46    0xd9ac0  1      OPC=1343  
  nop                                                     #  47    0xd9ac1  1      OPC=1343  
  nop                                                     #  48    0xd9ac2  1      OPC=1343  
  nop                                                     #  49    0xd9ac3  1      OPC=1343  
  nop                                                     #  50    0xd9ac4  1      OPC=1343  
  nop                                                     #  51    0xd9ac5  1      OPC=1343  
  nop                                                     #  52    0xd9ac6  1      OPC=1343  
  nop                                                     #  53    0xd9ac7  1      OPC=1343  
  nop                                                     #  54    0xd9ac8  1      OPC=1343  
  nop                                                     #  55    0xd9ac9  1      OPC=1343  
  nop                                                     #  56    0xd9aca  1      OPC=1343  
  nop                                                     #  57    0xd9acb  1      OPC=1343  
.L_d9ac0:                                                 #        0xd9acc  0      OPC=0     
  leal (%rax,%r12,4), %eax                                #  58    0xd9acc  4      OPC=1066  
  movq 0x8(%rsp), %rbx                                    #  59    0xd9ad0  5      OPC=1161  
  movq 0x10(%rsp), %r12                                   #  60    0xd9ad5  5      OPC=1161  
  addl $0x18, %esp                                        #  61    0xd9ada  3      OPC=65    
  addq %r15, %rsp                                         #  62    0xd9add  3      OPC=72    
  popq %r11                                               #  63    0xd9ae0  2      OPC=1694  
  andl $0xffffffe0, %r11d                                 #  64    0xd9ae2  7      OPC=131   
  nop                                                     #  65    0xd9ae9  1      OPC=1343  
  nop                                                     #  66    0xd9aea  1      OPC=1343  
  nop                                                     #  67    0xd9aeb  1      OPC=1343  
  nop                                                     #  68    0xd9aec  1      OPC=1343  
  addq %r15, %r11                                         #  69    0xd9aed  3      OPC=72    
  jmpq %r11                                               #  70    0xd9af0  3      OPC=928   
.L_d9ae0:                                                 #        0xd9af3  0      OPC=0     
  movl $0x1003baac, %edi                                  #  71    0xd9af3  5      OPC=1154  
  nop                                                     #  72    0xd9af8  1      OPC=1343  
  nop                                                     #  73    0xd9af9  1      OPC=1343  
  nop                                                     #  74    0xd9afa  1      OPC=1343  
  nop                                                     #  75    0xd9afb  1      OPC=1343  
  nop                                                     #  76    0xd9afc  1      OPC=1343  
  nop                                                     #  77    0xd9afd  1      OPC=1343  
  nop                                                     #  78    0xd9afe  1      OPC=1343  
  nop                                                     #  79    0xd9aff  1      OPC=1343  
  nop                                                     #  80    0xd9b00  1      OPC=1343  
  nop                                                     #  81    0xd9b01  1      OPC=1343  
  nop                                                     #  82    0xd9b02  1      OPC=1343  
  nop                                                     #  83    0xd9b03  1      OPC=1343  
  nop                                                     #  84    0xd9b04  1      OPC=1343  
  nop                                                     #  85    0xd9b05  1      OPC=1343  
  nop                                                     #  86    0xd9b06  1      OPC=1343  
  nop                                                     #  87    0xd9b07  1      OPC=1343  
  nop                                                     #  88    0xd9b08  1      OPC=1343  
  nop                                                     #  89    0xd9b09  1      OPC=1343  
  nop                                                     #  90    0xd9b0a  1      OPC=1343  
  nop                                                     #  91    0xd9b0b  1      OPC=1343  
  nop                                                     #  92    0xd9b0c  1      OPC=1343  
  nop                                                     #  93    0xd9b0d  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                    #  94    0xd9b0e  5      OPC=260   
                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNSbIwSt11char_traitsIwESaIwEE2atEj

