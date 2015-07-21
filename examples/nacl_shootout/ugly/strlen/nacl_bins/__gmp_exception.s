  .text
  .globl __gmp_exception
  .type __gmp_exception, @function

#! file-offset 0x77500
#! rip-offset  0x37500
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__gmp_exception:              #        0x37500  0      OPC=0     
  movl $0xa, %edx              #  1     0x37500  5      OPC=1154  
  subl $0x8, %esp              #  2     0x37505  3      OPC=2384  
  addq %r15, %rsp              #  3     0x37508  3      OPC=72    
  orl %edi, 0x1003b10f(%rip)   #  4     0x3750b  6      OPC=1365  
  movl %edx, %eax              #  5     0x37511  2      OPC=1157  
  sarl $0x1f, %edx             #  6     0x37513  3      OPC=2096  
  idivl 0x10002a64(%rip)       #  7     0x37516  6      OPC=798   
  nop                          #  8     0x3751c  1      OPC=1343  
  nop                          #  9     0x3751d  1      OPC=1343  
  nop                          #  10    0x3751e  1      OPC=1343  
  nop                          #  11    0x3751f  1      OPC=1343  
  movl %eax, 0x10041cfe(%rip)  #  12    0x37520  6      OPC=1136  
  nop                          #  13    0x37526  1      OPC=1343  
  nop                          #  14    0x37527  1      OPC=1343  
  nop                          #  15    0x37528  1      OPC=1343  
  nop                          #  16    0x37529  1      OPC=1343  
  nop                          #  17    0x3752a  1      OPC=1343  
  nop                          #  18    0x3752b  1      OPC=1343  
  nop                          #  19    0x3752c  1      OPC=1343  
  nop                          #  20    0x3752d  1      OPC=1343  
  nop                          #  21    0x3752e  1      OPC=1343  
  nop                          #  22    0x3752f  1      OPC=1343  
  nop                          #  23    0x37530  1      OPC=1343  
  nop                          #  24    0x37531  1      OPC=1343  
  nop                          #  25    0x37532  1      OPC=1343  
  nop                          #  26    0x37533  1      OPC=1343  
  nop                          #  27    0x37534  1      OPC=1343  
  nop                          #  28    0x37535  1      OPC=1343  
  nop                          #  29    0x37536  1      OPC=1343  
  nop                          #  30    0x37537  1      OPC=1343  
  nop                          #  31    0x37538  1      OPC=1343  
  nop                          #  32    0x37539  1      OPC=1343  
  nop                          #  33    0x3753a  1      OPC=1343  
  callq .abort                 #  34    0x3753b  5      OPC=260   
                                                                  
.size __gmp_exception, .-__gmp_exception

