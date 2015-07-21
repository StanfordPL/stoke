  .text
  .globl _ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir
  .type _ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir, @function

#! file-offset 0x11dc80
#! rip-offset  0xddc80
#! capacity    96 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir:  #        0xddc80  0      OPC=0     
  movl %edi, %edi                                   #  1     0xddc80  2      OPC=1157  
  movq %rbx, -0x10(%rsp)                            #  2     0xddc82  5      OPC=1138  
  movq %r12, -0x8(%rsp)                             #  3     0xddc87  5      OPC=1138  
  subl $0x18, %esp                                  #  4     0xddc8c  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xddc8f  3      OPC=72    
  movl %edi, %edi                                   #  6     0xddc92  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                          #  7     0xddc94  4      OPC=1156  
  movq %rsi, %rbx                                   #  8     0xddc98  3      OPC=1162  
  movl %edx, %r12d                                  #  9     0xddc9b  3      OPC=1157  
  xchgw %ax, %ax                                    #  10    0xddc9e  2      OPC=3700  
  nop                                               #  11    0xddca0  1      OPC=1343  
  nop                                               #  12    0xddca1  1      OPC=1343  
  nop                                               #  13    0xddca2  1      OPC=1343  
  nop                                               #  14    0xddca3  1      OPC=1343  
  nop                                               #  15    0xddca4  1      OPC=1343  
  nop                                               #  16    0xddca5  1      OPC=1343  
  nop                                               #  17    0xddca6  1      OPC=1343  
  nop                                               #  18    0xddca7  1      OPC=1343  
  nop                                               #  19    0xddca8  1      OPC=1343  
  nop                                               #  20    0xddca9  1      OPC=1343  
  nop                                               #  21    0xddcaa  1      OPC=1343  
  nop                                               #  22    0xddcab  1      OPC=1343  
  nop                                               #  23    0xddcac  1      OPC=1343  
  nop                                               #  24    0xddcad  1      OPC=1343  
  nop                                               #  25    0xddcae  1      OPC=1343  
  nop                                               #  26    0xddcaf  1      OPC=1343  
  nop                                               #  27    0xddcb0  1      OPC=1343  
  nop                                               #  28    0xddcb1  1      OPC=1343  
  nop                                               #  29    0xddcb2  1      OPC=1343  
  nop                                               #  30    0xddcb3  1      OPC=1343  
  nop                                               #  31    0xddcb4  1      OPC=1343  
  nop                                               #  32    0xddcb5  1      OPC=1343  
  nop                                               #  33    0xddcb6  1      OPC=1343  
  nop                                               #  34    0xddcb7  1      OPC=1343  
  nop                                               #  35    0xddcb8  1      OPC=1343  
  nop                                               #  36    0xddcb9  1      OPC=1343  
  nop                                               #  37    0xddcba  1      OPC=1343  
  callq .fileno                                     #  38    0xddcbb  5      OPC=260   
  movl %r12d, %edx                                  #  39    0xddcc0  3      OPC=1157  
  movq %rbx, %rsi                                   #  40    0xddcc3  3      OPC=1162  
  movq 0x10(%rsp), %r12                             #  41    0xddcc6  5      OPC=1161  
  movq 0x8(%rsp), %rbx                              #  42    0xddccb  5      OPC=1161  
  movl %eax, %edi                                   #  43    0xddcd0  2      OPC=1157  
  addl $0x18, %esp                                  #  44    0xddcd2  3      OPC=65    
  addq %r15, %rsp                                   #  45    0xddcd5  3      OPC=72    
  jmpq .lseek                                       #  46    0xddcd8  5      OPC=930   
  nop                                               #  47    0xddcdd  1      OPC=1343  
  nop                                               #  48    0xddcde  1      OPC=1343  
  nop                                               #  49    0xddcdf  1      OPC=1343  
                                                                                       
.size _ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir, .-_ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir

