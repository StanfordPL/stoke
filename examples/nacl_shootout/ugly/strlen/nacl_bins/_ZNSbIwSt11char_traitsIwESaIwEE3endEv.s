  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE3endEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE3endEv, @function

#! file-offset 0x119b00
#! rip-offset  0xd9b00
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE3endEv:                   #        0xd9b00  0      OPC=0     
  pushq %rbx                                              #  1     0xd9b00  1      OPC=1861  
  movl %edi, %ebx                                         #  2     0xd9b01  2      OPC=1157  
  movl %ebx, %ebx                                         #  3     0xd9b03  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  4     0xd9b05  4      OPC=1156  
  leal -0xc(%rax), %edx                                   #  5     0xd9b09  3      OPC=1066  
  movl %edx, %edx                                         #  6     0xd9b0c  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %ecx                             #  7     0xd9b0e  5      OPC=1156  
  testl %ecx, %ecx                                        #  8     0xd9b13  2      OPC=2436  
  js .L_d9b40                                             #  9     0xd9b15  6      OPC=1043  
  nop                                                     #  10    0xd9b1b  1      OPC=1343  
  nop                                                     #  11    0xd9b1c  1      OPC=1343  
  movl %ebx, %edi                                         #  12    0xd9b1d  2      OPC=1157  
  xchgw %ax, %ax                                          #  13    0xd9b1f  2      OPC=3700  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  14    0xd9b21  5      OPC=260   
  movl %ebx, %ebx                                         #  15    0xd9b26  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  16    0xd9b28  4      OPC=1156  
  leal -0xc(%rax), %edx                                   #  17    0xd9b2c  3      OPC=1066  
  nop                                                     #  18    0xd9b2f  1      OPC=1343  
  nop                                                     #  19    0xd9b30  1      OPC=1343  
  nop                                                     #  20    0xd9b31  1      OPC=1343  
  nop                                                     #  21    0xd9b32  1      OPC=1343  
  nop                                                     #  22    0xd9b33  1      OPC=1343  
  nop                                                     #  23    0xd9b34  1      OPC=1343  
  nop                                                     #  24    0xd9b35  1      OPC=1343  
  nop                                                     #  25    0xd9b36  1      OPC=1343  
  nop                                                     #  26    0xd9b37  1      OPC=1343  
  nop                                                     #  27    0xd9b38  1      OPC=1343  
  nop                                                     #  28    0xd9b39  1      OPC=1343  
  nop                                                     #  29    0xd9b3a  1      OPC=1343  
  nop                                                     #  30    0xd9b3b  1      OPC=1343  
  nop                                                     #  31    0xd9b3c  1      OPC=1343  
  nop                                                     #  32    0xd9b3d  1      OPC=1343  
  nop                                                     #  33    0xd9b3e  1      OPC=1343  
  nop                                                     #  34    0xd9b3f  1      OPC=1343  
  nop                                                     #  35    0xd9b40  1      OPC=1343  
  nop                                                     #  36    0xd9b41  1      OPC=1343  
  nop                                                     #  37    0xd9b42  1      OPC=1343  
  nop                                                     #  38    0xd9b43  1      OPC=1343  
  nop                                                     #  39    0xd9b44  1      OPC=1343  
  nop                                                     #  40    0xd9b45  1      OPC=1343  
.L_d9b40:                                                 #        0xd9b46  0      OPC=0     
  popq %rbx                                               #  41    0xd9b46  1      OPC=1694  
  popq %r11                                               #  42    0xd9b47  2      OPC=1694  
  movl %edx, %edx                                         #  43    0xd9b49  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                                #  44    0xd9b4b  4      OPC=1156  
  leal (%rax,%rdx,4), %eax                                #  45    0xd9b4f  3      OPC=1066  
  andl $0xffffffe0, %r11d                                 #  46    0xd9b52  7      OPC=131   
  nop                                                     #  47    0xd9b59  1      OPC=1343  
  nop                                                     #  48    0xd9b5a  1      OPC=1343  
  nop                                                     #  49    0xd9b5b  1      OPC=1343  
  nop                                                     #  50    0xd9b5c  1      OPC=1343  
  addq %r15, %r11                                         #  51    0xd9b5d  3      OPC=72    
  jmpq %r11                                               #  52    0xd9b60  3      OPC=928   
  nop                                                     #  53    0xd9b63  1      OPC=1343  
  nop                                                     #  54    0xd9b64  1      OPC=1343  
  nop                                                     #  55    0xd9b65  1      OPC=1343  
  nop                                                     #  56    0xd9b66  1      OPC=1343  
  nop                                                     #  57    0xd9b67  1      OPC=1343  
  nop                                                     #  58    0xd9b68  1      OPC=1343  
  nop                                                     #  59    0xd9b69  1      OPC=1343  
  nop                                                     #  60    0xd9b6a  1      OPC=1343  
  nop                                                     #  61    0xd9b6b  1      OPC=1343  
  nop                                                     #  62    0xd9b6c  1      OPC=1343  
                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE3endEv, .-_ZNSbIwSt11char_traitsIwESaIwEE3endEv

