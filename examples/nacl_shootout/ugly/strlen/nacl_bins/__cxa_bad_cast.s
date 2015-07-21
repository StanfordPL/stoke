  .text
  .globl __cxa_bad_cast
  .type __cxa_bad_cast, @function

#! file-offset 0x121900
#! rip-offset  0xe1900
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
.__cxa_bad_cast:                   #        0xe1900  0      OPC=0     
  movl $0x4, %edi                  #  1     0xe1900  5      OPC=1154  
  subl $0x8, %esp                  #  2     0xe1905  3      OPC=2384  
  addq %r15, %rsp                  #  3     0xe1908  3      OPC=72    
  nop                              #  4     0xe190b  1      OPC=1343  
  nop                              #  5     0xe190c  1      OPC=1343  
  nop                              #  6     0xe190d  1      OPC=1343  
  nop                              #  7     0xe190e  1      OPC=1343  
  nop                              #  8     0xe190f  1      OPC=1343  
  nop                              #  9     0xe1910  1      OPC=1343  
  nop                              #  10    0xe1911  1      OPC=1343  
  nop                              #  11    0xe1912  1      OPC=1343  
  nop                              #  12    0xe1913  1      OPC=1343  
  nop                              #  13    0xe1914  1      OPC=1343  
  nop                              #  14    0xe1915  1      OPC=1343  
  nop                              #  15    0xe1916  1      OPC=1343  
  nop                              #  16    0xe1917  1      OPC=1343  
  nop                              #  17    0xe1918  1      OPC=1343  
  nop                              #  18    0xe1919  1      OPC=1343  
  nop                              #  19    0xe191a  1      OPC=1343  
  callq .__cxa_allocate_exception  #  20    0xe191b  5      OPC=260   
  movl %eax, %edi                  #  21    0xe1920  2      OPC=1157  
  movl $0xfd1c0, %edx              #  22    0xe1922  5      OPC=1154  
  movl $0x1003e900, %esi           #  23    0xe1927  5      OPC=1154  
  movl %edi, %edi                  #  24    0xe192c  2      OPC=1157  
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe192e  8      OPC=1135  
  nop                              #  26    0xe1936  1      OPC=1343  
  nop                              #  27    0xe1937  1      OPC=1343  
  nop                              #  28    0xe1938  1      OPC=1343  
  nop                              #  29    0xe1939  1      OPC=1343  
  nop                              #  30    0xe193a  1      OPC=1343  
  callq .__cxa_throw               #  31    0xe193b  5      OPC=260   
                                                                      
.size __cxa_bad_cast, .-__cxa_bad_cast

