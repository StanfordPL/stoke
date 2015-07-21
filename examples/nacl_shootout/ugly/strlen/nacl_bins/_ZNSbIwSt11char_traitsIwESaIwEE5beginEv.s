  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5beginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, @function

#! file-offset 0x119b60
#! rip-offset  0xd9b60
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE5beginEv:                 #        0xd9b60  0      OPC=0     
  pushq %rbx                                              #  1     0xd9b60  1      OPC=1861  
  movl %edi, %ebx                                         #  2     0xd9b61  2      OPC=1157  
  movl %ebx, %ebx                                         #  3     0xd9b63  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  4     0xd9b65  4      OPC=1156  
  leal -0xc(%rax), %edx                                   #  5     0xd9b69  3      OPC=1066  
  movl %edx, %edx                                         #  6     0xd9b6c  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %esi                             #  7     0xd9b6e  5      OPC=1156  
  testl %esi, %esi                                        #  8     0xd9b73  2      OPC=2436  
  js .L_d9ba0                                             #  9     0xd9b75  6      OPC=1043  
  nop                                                     #  10    0xd9b7b  1      OPC=1343  
  nop                                                     #  11    0xd9b7c  1      OPC=1343  
  movl %ebx, %edi                                         #  12    0xd9b7d  2      OPC=1157  
  xchgw %ax, %ax                                          #  13    0xd9b7f  2      OPC=3700  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  14    0xd9b81  5      OPC=260   
  movl %ebx, %ebx                                         #  15    0xd9b86  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  16    0xd9b88  4      OPC=1156  
  nop                                                     #  17    0xd9b8c  1      OPC=1343  
  nop                                                     #  18    0xd9b8d  1      OPC=1343  
  nop                                                     #  19    0xd9b8e  1      OPC=1343  
  nop                                                     #  20    0xd9b8f  1      OPC=1343  
  nop                                                     #  21    0xd9b90  1      OPC=1343  
  nop                                                     #  22    0xd9b91  1      OPC=1343  
  nop                                                     #  23    0xd9b92  1      OPC=1343  
  nop                                                     #  24    0xd9b93  1      OPC=1343  
  nop                                                     #  25    0xd9b94  1      OPC=1343  
  nop                                                     #  26    0xd9b95  1      OPC=1343  
  nop                                                     #  27    0xd9b96  1      OPC=1343  
  nop                                                     #  28    0xd9b97  1      OPC=1343  
  nop                                                     #  29    0xd9b98  1      OPC=1343  
  nop                                                     #  30    0xd9b99  1      OPC=1343  
  nop                                                     #  31    0xd9b9a  1      OPC=1343  
  nop                                                     #  32    0xd9b9b  1      OPC=1343  
  nop                                                     #  33    0xd9b9c  1      OPC=1343  
  nop                                                     #  34    0xd9b9d  1      OPC=1343  
  nop                                                     #  35    0xd9b9e  1      OPC=1343  
  nop                                                     #  36    0xd9b9f  1      OPC=1343  
  nop                                                     #  37    0xd9ba0  1      OPC=1343  
  nop                                                     #  38    0xd9ba1  1      OPC=1343  
  nop                                                     #  39    0xd9ba2  1      OPC=1343  
  nop                                                     #  40    0xd9ba3  1      OPC=1343  
  nop                                                     #  41    0xd9ba4  1      OPC=1343  
  nop                                                     #  42    0xd9ba5  1      OPC=1343  
.L_d9ba0:                                                 #        0xd9ba6  0      OPC=0     
  popq %rbx                                               #  43    0xd9ba6  1      OPC=1694  
  popq %r11                                               #  44    0xd9ba7  2      OPC=1694  
  andl $0xffffffe0, %r11d                                 #  45    0xd9ba9  7      OPC=131   
  nop                                                     #  46    0xd9bb0  1      OPC=1343  
  nop                                                     #  47    0xd9bb1  1      OPC=1343  
  nop                                                     #  48    0xd9bb2  1      OPC=1343  
  nop                                                     #  49    0xd9bb3  1      OPC=1343  
  addq %r15, %r11                                         #  50    0xd9bb4  3      OPC=72    
  jmpq %r11                                               #  51    0xd9bb7  3      OPC=928   
  nop                                                     #  52    0xd9bba  1      OPC=1343  
  nop                                                     #  53    0xd9bbb  1      OPC=1343  
  nop                                                     #  54    0xd9bbc  1      OPC=1343  
  nop                                                     #  55    0xd9bbd  1      OPC=1343  
  nop                                                     #  56    0xd9bbe  1      OPC=1343  
  nop                                                     #  57    0xd9bbf  1      OPC=1343  
  nop                                                     #  58    0xd9bc0  1      OPC=1343  
  nop                                                     #  59    0xd9bc1  1      OPC=1343  
  nop                                                     #  60    0xd9bc2  1      OPC=1343  
  nop                                                     #  61    0xd9bc3  1      OPC=1343  
  nop                                                     #  62    0xd9bc4  1      OPC=1343  
  nop                                                     #  63    0xd9bc5  1      OPC=1343  
  nop                                                     #  64    0xd9bc6  1      OPC=1343  
  nop                                                     #  65    0xd9bc7  1      OPC=1343  
  nop                                                     #  66    0xd9bc8  1      OPC=1343  
  nop                                                     #  67    0xd9bc9  1      OPC=1343  
  nop                                                     #  68    0xd9bca  1      OPC=1343  
  nop                                                     #  69    0xd9bcb  1      OPC=1343  
  nop                                                     #  70    0xd9bcc  1      OPC=1343  
                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5beginEv

