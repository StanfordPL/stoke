  .text
  .globl _ZSt17__throw_bad_allocv
  .type _ZSt17__throw_bad_allocv, @function

#! file-offset 0x126280
#! rip-offset  0xe6280
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZSt17__throw_bad_allocv:         #        0xe6280  0      OPC=0     
  movl $0x4, %edi                  #  1     0xe6280  5      OPC=1154  
  subl $0x8, %esp                  #  2     0xe6285  3      OPC=2384  
  addq %r15, %rsp                  #  3     0xe6288  3      OPC=72    
  nop                              #  4     0xe628b  1      OPC=1343  
  nop                              #  5     0xe628c  1      OPC=1343  
  nop                              #  6     0xe628d  1      OPC=1343  
  nop                              #  7     0xe628e  1      OPC=1343  
  nop                              #  8     0xe628f  1      OPC=1343  
  nop                              #  9     0xe6290  1      OPC=1343  
  nop                              #  10    0xe6291  1      OPC=1343  
  nop                              #  11    0xe6292  1      OPC=1343  
  nop                              #  12    0xe6293  1      OPC=1343  
  nop                              #  13    0xe6294  1      OPC=1343  
  nop                              #  14    0xe6295  1      OPC=1343  
  nop                              #  15    0xe6296  1      OPC=1343  
  nop                              #  16    0xe6297  1      OPC=1343  
  nop                              #  17    0xe6298  1      OPC=1343  
  nop                              #  18    0xe6299  1      OPC=1343  
  nop                              #  19    0xe629a  1      OPC=1343  
  callq .__cxa_allocate_exception  #  20    0xe629b  5      OPC=260   
  movl %eax, %edi                  #  21    0xe62a0  2      OPC=1157  
  movl $0xe00e0, %edx              #  22    0xe62a2  5      OPC=1154  
  movl $0x1003d0e4, %esi           #  23    0xe62a7  5      OPC=1154  
  movl %edi, %edi                  #  24    0xe62ac  2      OPC=1157  
  movl $0x1003d0c8, (%r15,%rdi,1)  #  25    0xe62ae  8      OPC=1135  
  nop                              #  26    0xe62b6  1      OPC=1343  
  nop                              #  27    0xe62b7  1      OPC=1343  
  nop                              #  28    0xe62b8  1      OPC=1343  
  nop                              #  29    0xe62b9  1      OPC=1343  
  nop                              #  30    0xe62ba  1      OPC=1343  
  callq .__cxa_throw               #  31    0xe62bb  5      OPC=260   
                                                                      
.size _ZSt17__throw_bad_allocv, .-_ZSt17__throw_bad_allocv

