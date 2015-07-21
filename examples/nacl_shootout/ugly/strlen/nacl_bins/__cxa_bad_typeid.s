  .text
  .globl __cxa_bad_typeid
  .type __cxa_bad_typeid, @function

#! file-offset 0x1218c0
#! rip-offset  0xe18c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
.__cxa_bad_typeid:                 #        0xe18c0  0      OPC=0     
  movl $0x4, %edi                  #  1     0xe18c0  5      OPC=1154  
  subl $0x8, %esp                  #  2     0xe18c5  3      OPC=2384  
  addq %r15, %rsp                  #  3     0xe18c8  3      OPC=72    
  nop                              #  4     0xe18cb  1      OPC=1343  
  nop                              #  5     0xe18cc  1      OPC=1343  
  nop                              #  6     0xe18cd  1      OPC=1343  
  nop                              #  7     0xe18ce  1      OPC=1343  
  nop                              #  8     0xe18cf  1      OPC=1343  
  nop                              #  9     0xe18d0  1      OPC=1343  
  nop                              #  10    0xe18d1  1      OPC=1343  
  nop                              #  11    0xe18d2  1      OPC=1343  
  nop                              #  12    0xe18d3  1      OPC=1343  
  nop                              #  13    0xe18d4  1      OPC=1343  
  nop                              #  14    0xe18d5  1      OPC=1343  
  nop                              #  15    0xe18d6  1      OPC=1343  
  nop                              #  16    0xe18d7  1      OPC=1343  
  nop                              #  17    0xe18d8  1      OPC=1343  
  nop                              #  18    0xe18d9  1      OPC=1343  
  nop                              #  19    0xe18da  1      OPC=1343  
  callq .__cxa_allocate_exception  #  20    0xe18db  5      OPC=260   
  movl %eax, %edi                  #  21    0xe18e0  2      OPC=1157  
  movl $0xfd120, %edx              #  22    0xe18e2  5      OPC=1154  
  movl $0x1003e8c4, %esi           #  23    0xe18e7  5      OPC=1154  
  movl %edi, %edi                  #  24    0xe18ec  2      OPC=1157  
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe18ee  8      OPC=1135  
  nop                              #  26    0xe18f6  1      OPC=1343  
  nop                              #  27    0xe18f7  1      OPC=1343  
  nop                              #  28    0xe18f8  1      OPC=1343  
  nop                              #  29    0xe18f9  1      OPC=1343  
  nop                              #  30    0xe18fa  1      OPC=1343  
  callq .__cxa_throw               #  31    0xe18fb  5      OPC=260   
                                                                      
.size __cxa_bad_typeid, .-__cxa_bad_typeid

