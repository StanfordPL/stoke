  .text
  .globl _ZNKSs8_M_checkEjPKc
  .type _ZNKSs8_M_checkEjPKc, @function

#! file-offset 0xea980
#! rip-offset  0xaa980
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSs8_M_checkEjPKc:                  #        0xaa980  0      OPC=0     
  movl %edi, %edi                       #  1     0xaa980  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xaa982  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xaa985  3      OPC=72    
  movl %edx, %edx                       #  4     0xaa988  2      OPC=1157  
  movl %edi, %edi                       #  5     0xaa98a  2      OPC=1157  
  movl (%r15,%rdi,1), %eax              #  6     0xaa98c  4      OPC=1156  
  subl $0xc, %eax                       #  7     0xaa990  3      OPC=2384  
  movl %eax, %eax                       #  8     0xaa993  2      OPC=1157  
  cmpl (%r15,%rax,1), %esi              #  9     0xaa995  4      OPC=471   
  ja .L_aa9c0                           #  10    0xaa999  6      OPC=863   
  nop                                   #  11    0xaa99f  1      OPC=1343  
  nop                                   #  12    0xaa9a0  1      OPC=1343  
  nop                                   #  13    0xaa9a1  1      OPC=1343  
  nop                                   #  14    0xaa9a2  1      OPC=1343  
  nop                                   #  15    0xaa9a3  1      OPC=1343  
  nop                                   #  16    0xaa9a4  1      OPC=1343  
  nop                                   #  17    0xaa9a5  1      OPC=1343  
  addl $0x8, %esp                       #  18    0xaa9a6  3      OPC=65    
  addq %r15, %rsp                       #  19    0xaa9a9  3      OPC=72    
  movl %esi, %eax                       #  20    0xaa9ac  2      OPC=1157  
  popq %r11                             #  21    0xaa9ae  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  22    0xaa9b0  7      OPC=131   
  nop                                   #  23    0xaa9b7  1      OPC=1343  
  nop                                   #  24    0xaa9b8  1      OPC=1343  
  nop                                   #  25    0xaa9b9  1      OPC=1343  
  nop                                   #  26    0xaa9ba  1      OPC=1343  
  addq %r15, %r11                       #  27    0xaa9bb  3      OPC=72    
  jmpq %r11                             #  28    0xaa9be  3      OPC=928   
  nop                                   #  29    0xaa9c1  1      OPC=1343  
  nop                                   #  30    0xaa9c2  1      OPC=1343  
  nop                                   #  31    0xaa9c3  1      OPC=1343  
  nop                                   #  32    0xaa9c4  1      OPC=1343  
  nop                                   #  33    0xaa9c5  1      OPC=1343  
  nop                                   #  34    0xaa9c6  1      OPC=1343  
  nop                                   #  35    0xaa9c7  1      OPC=1343  
  nop                                   #  36    0xaa9c8  1      OPC=1343  
  nop                                   #  37    0xaa9c9  1      OPC=1343  
  nop                                   #  38    0xaa9ca  1      OPC=1343  
  nop                                   #  39    0xaa9cb  1      OPC=1343  
  nop                                   #  40    0xaa9cc  1      OPC=1343  
.L_aa9c0:                               #        0xaa9cd  0      OPC=0     
  movl %edx, %edi                       #  41    0xaa9cd  2      OPC=1157  
  nop                                   #  42    0xaa9cf  1      OPC=1343  
  nop                                   #  43    0xaa9d0  1      OPC=1343  
  nop                                   #  44    0xaa9d1  1      OPC=1343  
  nop                                   #  45    0xaa9d2  1      OPC=1343  
  nop                                   #  46    0xaa9d3  1      OPC=1343  
  nop                                   #  47    0xaa9d4  1      OPC=1343  
  nop                                   #  48    0xaa9d5  1      OPC=1343  
  nop                                   #  49    0xaa9d6  1      OPC=1343  
  nop                                   #  50    0xaa9d7  1      OPC=1343  
  nop                                   #  51    0xaa9d8  1      OPC=1343  
  nop                                   #  52    0xaa9d9  1      OPC=1343  
  nop                                   #  53    0xaa9da  1      OPC=1343  
  nop                                   #  54    0xaa9db  1      OPC=1343  
  nop                                   #  55    0xaa9dc  1      OPC=1343  
  nop                                   #  56    0xaa9dd  1      OPC=1343  
  nop                                   #  57    0xaa9de  1      OPC=1343  
  nop                                   #  58    0xaa9df  1      OPC=1343  
  nop                                   #  59    0xaa9e0  1      OPC=1343  
  nop                                   #  60    0xaa9e1  1      OPC=1343  
  nop                                   #  61    0xaa9e2  1      OPC=1343  
  nop                                   #  62    0xaa9e3  1      OPC=1343  
  nop                                   #  63    0xaa9e4  1      OPC=1343  
  nop                                   #  64    0xaa9e5  1      OPC=1343  
  nop                                   #  65    0xaa9e6  1      OPC=1343  
  nop                                   #  66    0xaa9e7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  67    0xaa9e8  5      OPC=260   
                                                                           
.size _ZNKSs8_M_checkEjPKc, .-_ZNKSs8_M_checkEjPKc

