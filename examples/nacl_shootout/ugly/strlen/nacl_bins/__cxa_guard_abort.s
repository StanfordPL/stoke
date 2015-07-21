  .text
  .globl __cxa_guard_abort
  .type __cxa_guard_abort, @function

#! file-offset 0x121960
#! rip-offset  0xe1960
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__cxa_guard_abort:            #        0xe1960  0      OPC=0     
  popq %r11                    #  1     0xe1960  2      OPC=1694  
  movl %edi, %edi              #  2     0xe1962  2      OPC=1157  
  movl %edi, %edi              #  3     0xe1964  2      OPC=1157  
  movb $0x0, 0x1(%r15,%rdi,1)  #  4     0xe1966  6      OPC=1140  
  andl $0xffffffe0, %r11d      #  5     0xe196c  7      OPC=131   
  nop                          #  6     0xe1973  1      OPC=1343  
  nop                          #  7     0xe1974  1      OPC=1343  
  nop                          #  8     0xe1975  1      OPC=1343  
  nop                          #  9     0xe1976  1      OPC=1343  
  addq %r15, %r11              #  10    0xe1977  3      OPC=72    
  jmpq %r11                    #  11    0xe197a  3      OPC=928   
  nop                          #  12    0xe197d  1      OPC=1343  
  nop                          #  13    0xe197e  1      OPC=1343  
  nop                          #  14    0xe197f  1      OPC=1343  
  nop                          #  15    0xe1980  1      OPC=1343  
  nop                          #  16    0xe1981  1      OPC=1343  
  nop                          #  17    0xe1982  1      OPC=1343  
  nop                          #  18    0xe1983  1      OPC=1343  
  nop                          #  19    0xe1984  1      OPC=1343  
  nop                          #  20    0xe1985  1      OPC=1343  
  nop                          #  21    0xe1986  1      OPC=1343  
                                                                  
.size __cxa_guard_abort, .-__cxa_guard_abort

