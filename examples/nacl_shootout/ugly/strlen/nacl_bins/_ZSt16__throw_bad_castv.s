  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x126240
#! rip-offset  0xe6240
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZSt16__throw_bad_castv:          #        0xe6240  0      OPC=0     
  movl $0x4, %edi                  #  1     0xe6240  5      OPC=1154  
  subl $0x8, %esp                  #  2     0xe6245  3      OPC=2384  
  addq %r15, %rsp                  #  3     0xe6248  3      OPC=72    
  nop                              #  4     0xe624b  1      OPC=1343  
  nop                              #  5     0xe624c  1      OPC=1343  
  nop                              #  6     0xe624d  1      OPC=1343  
  nop                              #  7     0xe624e  1      OPC=1343  
  nop                              #  8     0xe624f  1      OPC=1343  
  nop                              #  9     0xe6250  1      OPC=1343  
  nop                              #  10    0xe6251  1      OPC=1343  
  nop                              #  11    0xe6252  1      OPC=1343  
  nop                              #  12    0xe6253  1      OPC=1343  
  nop                              #  13    0xe6254  1      OPC=1343  
  nop                              #  14    0xe6255  1      OPC=1343  
  nop                              #  15    0xe6256  1      OPC=1343  
  nop                              #  16    0xe6257  1      OPC=1343  
  nop                              #  17    0xe6258  1      OPC=1343  
  nop                              #  18    0xe6259  1      OPC=1343  
  nop                              #  19    0xe625a  1      OPC=1343  
  callq .__cxa_allocate_exception  #  20    0xe625b  5      OPC=260   
  movl %eax, %edi                  #  21    0xe6260  2      OPC=1157  
  movl $0xfd1c0, %edx              #  22    0xe6262  5      OPC=1154  
  movl $0x1003e900, %esi           #  23    0xe6267  5      OPC=1154  
  movl %edi, %edi                  #  24    0xe626c  2      OPC=1157  
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe626e  8      OPC=1135  
  nop                              #  26    0xe6276  1      OPC=1343  
  nop                              #  27    0xe6277  1      OPC=1343  
  nop                              #  28    0xe6278  1      OPC=1343  
  nop                              #  29    0xe6279  1      OPC=1343  
  nop                              #  30    0xe627a  1      OPC=1343  
  callq .__cxa_throw               #  31    0xe627b  5      OPC=260   
                                                                      
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

