  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0xef360
#! rip-offset  0xaf360
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs6insertEjRKSsjj:                  #        0xaf360  0      OPC=0     
  movl %edx, %edx                       #  1     0xaf360  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xaf362  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xaf365  3      OPC=72    
  movl %edi, %edi                       #  4     0xaf368  2      OPC=1157  
  movl %edx, %edx                       #  5     0xaf36a  2      OPC=1157  
  movl (%r15,%rdx,1), %edx              #  6     0xaf36c  4      OPC=1156  
  leal -0xc(%rdx), %eax                 #  7     0xaf370  3      OPC=1066  
  movl %eax, %eax                       #  8     0xaf373  2      OPC=1157  
  movl (%r15,%rax,1), %eax              #  9     0xaf375  4      OPC=1156  
  cmpl %eax, %ecx                       #  10    0xaf379  2      OPC=472   
  nop                                   #  11    0xaf37b  1      OPC=1343  
  nop                                   #  12    0xaf37c  1      OPC=1343  
  nop                                   #  13    0xaf37d  1      OPC=1343  
  nop                                   #  14    0xaf37e  1      OPC=1343  
  nop                                   #  15    0xaf37f  1      OPC=1343  
  ja .L_af3a0                           #  16    0xaf380  6      OPC=863   
  nop                                   #  17    0xaf386  1      OPC=1343  
  nop                                   #  18    0xaf387  1      OPC=1343  
  subl %ecx, %eax                       #  19    0xaf388  2      OPC=2386  
  leal (%rcx,%rdx,1), %edx              #  20    0xaf38a  3      OPC=1066  
  cmpl %r8d, %eax                       #  21    0xaf38d  3      OPC=472   
  cmoval %r8d, %eax                     #  22    0xaf390  4      OPC=272   
  addl $0x8, %esp                       #  23    0xaf394  3      OPC=65    
  addq %r15, %rsp                       #  24    0xaf397  3      OPC=72    
  movl %eax, %ecx                       #  25    0xaf39a  2      OPC=1157  
  jmpq ._ZNSs6insertEjPKcj              #  26    0xaf39c  5      OPC=930   
  nop                                   #  27    0xaf3a1  1      OPC=1343  
  nop                                   #  28    0xaf3a2  1      OPC=1343  
  nop                                   #  29    0xaf3a3  1      OPC=1343  
  nop                                   #  30    0xaf3a4  1      OPC=1343  
  nop                                   #  31    0xaf3a5  1      OPC=1343  
.L_af3a0:                               #        0xaf3a6  0      OPC=0     
  movl $0x1003bb73, %edi                #  32    0xaf3a6  5      OPC=1154  
  nop                                   #  33    0xaf3ab  1      OPC=1343  
  nop                                   #  34    0xaf3ac  1      OPC=1343  
  nop                                   #  35    0xaf3ad  1      OPC=1343  
  nop                                   #  36    0xaf3ae  1      OPC=1343  
  nop                                   #  37    0xaf3af  1      OPC=1343  
  nop                                   #  38    0xaf3b0  1      OPC=1343  
  nop                                   #  39    0xaf3b1  1      OPC=1343  
  nop                                   #  40    0xaf3b2  1      OPC=1343  
  nop                                   #  41    0xaf3b3  1      OPC=1343  
  nop                                   #  42    0xaf3b4  1      OPC=1343  
  nop                                   #  43    0xaf3b5  1      OPC=1343  
  nop                                   #  44    0xaf3b6  1      OPC=1343  
  nop                                   #  45    0xaf3b7  1      OPC=1343  
  nop                                   #  46    0xaf3b8  1      OPC=1343  
  nop                                   #  47    0xaf3b9  1      OPC=1343  
  nop                                   #  48    0xaf3ba  1      OPC=1343  
  nop                                   #  49    0xaf3bb  1      OPC=1343  
  nop                                   #  50    0xaf3bc  1      OPC=1343  
  nop                                   #  51    0xaf3bd  1      OPC=1343  
  nop                                   #  52    0xaf3be  1      OPC=1343  
  nop                                   #  53    0xaf3bf  1      OPC=1343  
  nop                                   #  54    0xaf3c0  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xaf3c1  5      OPC=260   
                                                                           
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

