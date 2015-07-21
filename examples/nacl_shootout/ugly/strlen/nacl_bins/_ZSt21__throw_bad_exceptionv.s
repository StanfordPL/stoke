  .text
  .globl _ZSt21__throw_bad_exceptionv
  .type _ZSt21__throw_bad_exceptionv, @function

#! file-offset 0x1262c0
#! rip-offset  0xe62c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZSt21__throw_bad_exceptionv:     #        0xe62c0  0      OPC=0     
  movl $0x4, %edi                  #  1     0xe62c0  5      OPC=1154  
  subl $0x8, %esp                  #  2     0xe62c5  3      OPC=2384  
  addq %r15, %rsp                  #  3     0xe62c8  3      OPC=72    
  nop                              #  4     0xe62cb  1      OPC=1343  
  nop                              #  5     0xe62cc  1      OPC=1343  
  nop                              #  6     0xe62cd  1      OPC=1343  
  nop                              #  7     0xe62ce  1      OPC=1343  
  nop                              #  8     0xe62cf  1      OPC=1343  
  nop                              #  9     0xe62d0  1      OPC=1343  
  nop                              #  10    0xe62d1  1      OPC=1343  
  nop                              #  11    0xe62d2  1      OPC=1343  
  nop                              #  12    0xe62d3  1      OPC=1343  
  nop                              #  13    0xe62d4  1      OPC=1343  
  nop                              #  14    0xe62d5  1      OPC=1343  
  nop                              #  15    0xe62d6  1      OPC=1343  
  nop                              #  16    0xe62d7  1      OPC=1343  
  nop                              #  17    0xe62d8  1      OPC=1343  
  nop                              #  18    0xe62d9  1      OPC=1343  
  nop                              #  19    0xe62da  1      OPC=1343  
  callq .__cxa_allocate_exception  #  20    0xe62db  5      OPC=260   
  movl %eax, %edi                  #  21    0xe62e0  2      OPC=1157  
  movl $0xe2ca0, %edx              #  22    0xe62e2  5      OPC=1154  
  movl $0x1003d404, %esi           #  23    0xe62e7  5      OPC=1154  
  movl %edi, %edi                  #  24    0xe62ec  2      OPC=1157  
  movl $0x1003d348, (%r15,%rdi,1)  #  25    0xe62ee  8      OPC=1135  
  nop                              #  26    0xe62f6  1      OPC=1343  
  nop                              #  27    0xe62f7  1      OPC=1343  
  nop                              #  28    0xe62f8  1      OPC=1343  
  nop                              #  29    0xe62f9  1      OPC=1343  
  nop                              #  30    0xe62fa  1      OPC=1343  
  callq .__cxa_throw               #  31    0xe62fb  5      OPC=260   
                                                                      
.size _ZSt21__throw_bad_exceptionv, .-_ZSt21__throw_bad_exceptionv

