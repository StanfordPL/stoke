  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x119ce0
#! rip-offset  0xd9ce0
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv:                #        0xd9ce0  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                  #  1     0xd9ce0  5      OPC=1138  
  movl %esi, %ebx                                         #  2     0xd9ce5  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                   #  3     0xd9ce7  5      OPC=1138  
  subl $0x18, %esp                                        #  4     0xd9cec  3      OPC=2384  
  addq %r15, %rsp                                         #  5     0xd9cef  3      OPC=72    
  movl %ebx, %ebx                                         #  6     0xd9cf2  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  7     0xd9cf4  4      OPC=1156  
  movl %edi, %r12d                                        #  8     0xd9cf8  3      OPC=1157  
  leal -0xc(%rax), %edx                                   #  9     0xd9cfb  3      OPC=1066  
  xchgw %ax, %ax                                          #  10    0xd9cfe  2      OPC=3700  
  movl %edx, %edx                                         #  11    0xd9d00  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %r9d                             #  12    0xd9d02  5      OPC=1156  
  testl %r9d, %r9d                                        #  13    0xd9d07  3      OPC=2436  
  js .L_d9d40                                             #  14    0xd9d0a  6      OPC=1043  
  nop                                                     #  15    0xd9d10  1      OPC=1343  
  nop                                                     #  16    0xd9d11  1      OPC=1343  
  movl %ebx, %edi                                         #  17    0xd9d12  2      OPC=1157  
  nop                                                     #  18    0xd9d14  1      OPC=1343  
  nop                                                     #  19    0xd9d15  1      OPC=1343  
  nop                                                     #  20    0xd9d16  1      OPC=1343  
  nop                                                     #  21    0xd9d17  1      OPC=1343  
  nop                                                     #  22    0xd9d18  1      OPC=1343  
  nop                                                     #  23    0xd9d19  1      OPC=1343  
  nop                                                     #  24    0xd9d1a  1      OPC=1343  
  nop                                                     #  25    0xd9d1b  1      OPC=1343  
  nop                                                     #  26    0xd9d1c  1      OPC=1343  
  nop                                                     #  27    0xd9d1d  1      OPC=1343  
  nop                                                     #  28    0xd9d1e  1      OPC=1343  
  nop                                                     #  29    0xd9d1f  1      OPC=1343  
  nop                                                     #  30    0xd9d20  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  31    0xd9d21  5      OPC=260   
  movl %ebx, %ebx                                         #  32    0xd9d26  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  33    0xd9d28  4      OPC=1156  
  leal -0xc(%rax), %edx                                   #  34    0xd9d2c  3      OPC=1066  
  nop                                                     #  35    0xd9d2f  1      OPC=1343  
  nop                                                     #  36    0xd9d30  1      OPC=1343  
  nop                                                     #  37    0xd9d31  1      OPC=1343  
  nop                                                     #  38    0xd9d32  1      OPC=1343  
  nop                                                     #  39    0xd9d33  1      OPC=1343  
  nop                                                     #  40    0xd9d34  1      OPC=1343  
  nop                                                     #  41    0xd9d35  1      OPC=1343  
  nop                                                     #  42    0xd9d36  1      OPC=1343  
  nop                                                     #  43    0xd9d37  1      OPC=1343  
  nop                                                     #  44    0xd9d38  1      OPC=1343  
  nop                                                     #  45    0xd9d39  1      OPC=1343  
  nop                                                     #  46    0xd9d3a  1      OPC=1343  
  nop                                                     #  47    0xd9d3b  1      OPC=1343  
  nop                                                     #  48    0xd9d3c  1      OPC=1343  
  nop                                                     #  49    0xd9d3d  1      OPC=1343  
  nop                                                     #  50    0xd9d3e  1      OPC=1343  
  nop                                                     #  51    0xd9d3f  1      OPC=1343  
  nop                                                     #  52    0xd9d40  1      OPC=1343  
  nop                                                     #  53    0xd9d41  1      OPC=1343  
  nop                                                     #  54    0xd9d42  1      OPC=1343  
  nop                                                     #  55    0xd9d43  1      OPC=1343  
  nop                                                     #  56    0xd9d44  1      OPC=1343  
  nop                                                     #  57    0xd9d45  1      OPC=1343  
.L_d9d40:                                                 #        0xd9d46  0      OPC=0     
  movl %edx, %edx                                         #  58    0xd9d46  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                                #  59    0xd9d48  4      OPC=1156  
  movq 0x8(%rsp), %rbx                                    #  60    0xd9d4c  5      OPC=1161  
  leal (%rax,%rdx,4), %eax                                #  61    0xd9d51  3      OPC=1066  
  movl %r12d, %r12d                                       #  62    0xd9d54  3      OPC=1157  
  movl %eax, (%r15,%r12,1)                                #  63    0xd9d57  4      OPC=1136  
  movl %r12d, %eax                                        #  64    0xd9d5b  3      OPC=1157  
  movq 0x10(%rsp), %r12                                   #  65    0xd9d5e  5      OPC=1161  
  nop                                                     #  66    0xd9d63  1      OPC=1343  
  nop                                                     #  67    0xd9d64  1      OPC=1343  
  nop                                                     #  68    0xd9d65  1      OPC=1343  
  addl $0x18, %esp                                        #  69    0xd9d66  3      OPC=65    
  addq %r15, %rsp                                         #  70    0xd9d69  3      OPC=72    
  popq %r11                                               #  71    0xd9d6c  2      OPC=1694  
  andl $0xffffffe0, %r11d                                 #  72    0xd9d6e  7      OPC=131   
  nop                                                     #  73    0xd9d75  1      OPC=1343  
  nop                                                     #  74    0xd9d76  1      OPC=1343  
  nop                                                     #  75    0xd9d77  1      OPC=1343  
  nop                                                     #  76    0xd9d78  1      OPC=1343  
  addq %r15, %r11                                         #  77    0xd9d79  3      OPC=72    
  jmpq %r11                                               #  78    0xd9d7c  3      OPC=928   
  nop                                                     #  79    0xd9d7f  1      OPC=1343  
  nop                                                     #  80    0xd9d80  1      OPC=1343  
  nop                                                     #  81    0xd9d81  1      OPC=1343  
  nop                                                     #  82    0xd9d82  1      OPC=1343  
  nop                                                     #  83    0xd9d83  1      OPC=1343  
  nop                                                     #  84    0xd9d84  1      OPC=1343  
  nop                                                     #  85    0xd9d85  1      OPC=1343  
  nop                                                     #  86    0xd9d86  1      OPC=1343  
  nop                                                     #  87    0xd9d87  1      OPC=1343  
  nop                                                     #  88    0xd9d88  1      OPC=1343  
  nop                                                     #  89    0xd9d89  1      OPC=1343  
  nop                                                     #  90    0xd9d8a  1      OPC=1343  
  nop                                                     #  91    0xd9d8b  1      OPC=1343  
  nop                                                     #  92    0xd9d8c  1      OPC=1343  
                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv

