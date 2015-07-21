  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, @function

#! file-offset 0x114f60
#! rip-offset  0xd4f60
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_:  #        0xd4f60  0      OPC=0     
  movl %edi, %edi                            #  1     0xd4f60  2      OPC=1157  
  movl %esi, %esi                            #  2     0xd4f62  2      OPC=1157  
  movl %edi, %edi                            #  3     0xd4f64  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                   #  4     0xd4f66  4      OPC=1156  
  leal -0xc(%rax), %edx                      #  5     0xd4f6a  3      OPC=1066  
  movl %edx, %edx                            #  6     0xd4f6d  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %r9d                #  7     0xd4f6f  5      OPC=1156  
  testl %r9d, %r9d                           #  8     0xd4f74  3      OPC=2436  
  js .L_d4fc0                                #  9     0xd4f77  6      OPC=1043  
  nop                                        #  10    0xd4f7d  1      OPC=1343  
  nop                                        #  11    0xd4f7e  1      OPC=1343  
  nop                                        #  12    0xd4f7f  1      OPC=1343  
  nop                                        #  13    0xd4f80  1      OPC=1343  
  nop                                        #  14    0xd4f81  1      OPC=1343  
  nop                                        #  15    0xd4f82  1      OPC=1343  
  nop                                        #  16    0xd4f83  1      OPC=1343  
  nop                                        #  17    0xd4f84  1      OPC=1343  
  nop                                        #  18    0xd4f85  1      OPC=1343  
.L_d4f80:                                    #        0xd4f86  0      OPC=0     
  movl %esi, %esi                            #  19    0xd4f86  2      OPC=1157  
  movl (%r15,%rsi,1), %edx                   #  20    0xd4f88  4      OPC=1156  
  leal -0xc(%rdx), %ecx                      #  21    0xd4f8c  3      OPC=1066  
  movl %ecx, %ecx                            #  22    0xd4f8f  2      OPC=1157  
  movl 0x8(%r15,%rcx,1), %r8d                #  23    0xd4f91  5      OPC=1156  
  testl %r8d, %r8d                           #  24    0xd4f96  3      OPC=2436  
  jns .L_d4fa0                               #  25    0xd4f99  6      OPC=1005  
  nop                                        #  26    0xd4f9f  1      OPC=1343  
  nop                                        #  27    0xd4fa0  1      OPC=1343  
  movl %ecx, %ecx                            #  28    0xd4fa1  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rcx,1)                #  29    0xd4fa3  9      OPC=1135  
.L_d4fa0:                                    #        0xd4fac  0      OPC=0     
  popq %r11                                  #  30    0xd4fac  2      OPC=1694  
  movl %edi, %edi                            #  31    0xd4fae  2      OPC=1157  
  movl %edx, (%r15,%rdi,1)                   #  32    0xd4fb0  4      OPC=1136  
  movl %esi, %esi                            #  33    0xd4fb4  2      OPC=1157  
  movl %eax, (%r15,%rsi,1)                   #  34    0xd4fb6  4      OPC=1136  
  andl $0xffffffe0, %r11d                    #  35    0xd4fba  7      OPC=131   
  nop                                        #  36    0xd4fc1  1      OPC=1343  
  nop                                        #  37    0xd4fc2  1      OPC=1343  
  nop                                        #  38    0xd4fc3  1      OPC=1343  
  nop                                        #  39    0xd4fc4  1      OPC=1343  
  addq %r15, %r11                            #  40    0xd4fc5  3      OPC=72    
  jmpq %r11                                  #  41    0xd4fc8  3      OPC=928   
  nop                                        #  42    0xd4fcb  1      OPC=1343  
  nop                                        #  43    0xd4fcc  1      OPC=1343  
  nop                                        #  44    0xd4fcd  1      OPC=1343  
  nop                                        #  45    0xd4fce  1      OPC=1343  
  nop                                        #  46    0xd4fcf  1      OPC=1343  
  nop                                        #  47    0xd4fd0  1      OPC=1343  
  nop                                        #  48    0xd4fd1  1      OPC=1343  
  nop                                        #  49    0xd4fd2  1      OPC=1343  
.L_d4fc0:                                    #        0xd4fd3  0      OPC=0     
  movl %edx, %edx                            #  50    0xd4fd3  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rdx,1)                #  51    0xd4fd5  9      OPC=1135  
  jmpq .L_d4f80                              #  52    0xd4fde  5      OPC=930   
  nop                                        #  53    0xd4fe3  1      OPC=1343  
  nop                                        #  54    0xd4fe4  1      OPC=1343  
  nop                                        #  55    0xd4fe5  1      OPC=1343  
  nop                                        #  56    0xd4fe6  1      OPC=1343  
  nop                                        #  57    0xd4fe7  1      OPC=1343  
  nop                                        #  58    0xd4fe8  1      OPC=1343  
  nop                                        #  59    0xd4fe9  1      OPC=1343  
  nop                                        #  60    0xd4fea  1      OPC=1343  
  nop                                        #  61    0xd4feb  1      OPC=1343  
  nop                                        #  62    0xd4fec  1      OPC=1343  
  nop                                        #  63    0xd4fed  1      OPC=1343  
  nop                                        #  64    0xd4fee  1      OPC=1343  
  nop                                        #  65    0xd4fef  1      OPC=1343  
  nop                                        #  66    0xd4ff0  1      OPC=1343  
  nop                                        #  67    0xd4ff1  1      OPC=1343  
  nop                                        #  68    0xd4ff2  1      OPC=1343  
  nop                                        #  69    0xd4ff3  1      OPC=1343  
  nop                                        #  70    0xd4ff4  1      OPC=1343  
  nop                                        #  71    0xd4ff5  1      OPC=1343  
  nop                                        #  72    0xd4ff6  1      OPC=1343  
  nop                                        #  73    0xd4ff7  1      OPC=1343  
                                                                                
.size _ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_, .-_ZNSbIwSt11char_traitsIwESaIwEE4swapERS2_

