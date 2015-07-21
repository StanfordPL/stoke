  .text
  .globl __local_lock_release
  .type __local_lock_release, @function

#! file-offset 0x6db60
#! rip-offset  0x2db60
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__local_lock_release:         #        0x2db60  0      OPC=0     
  movl 0x1004b6ae(%rip), %eax  #  1     0x2db60  6      OPC=1156  
  movl %edi, %edi              #  2     0x2db66  2      OPC=1157  
  testl %eax, %eax             #  3     0x2db68  2      OPC=2436  
  je .L_2db80                  #  4     0x2db6a  6      OPC=893   
  nop                          #  5     0x2db70  1      OPC=1343  
  nop                          #  6     0x2db71  1      OPC=1343  
  testq %rdi, %rdi             #  7     0x2db72  3      OPC=2438  
  je .L_2db80                  #  8     0x2db75  6      OPC=893   
  nop                          #  9     0x2db7b  1      OPC=1343  
  nop                          #  10    0x2db7c  1      OPC=1343  
  jmpq .pthread_mutex_unlock   #  11    0x2db7d  5      OPC=930   
  nop                          #  12    0x2db82  1      OPC=1343  
  nop                          #  13    0x2db83  1      OPC=1343  
  nop                          #  14    0x2db84  1      OPC=1343  
  nop                          #  15    0x2db85  1      OPC=1343  
  nop                          #  16    0x2db86  1      OPC=1343  
  nop                          #  17    0x2db87  1      OPC=1343  
  nop                          #  18    0x2db88  1      OPC=1343  
  nop                          #  19    0x2db89  1      OPC=1343  
  nop                          #  20    0x2db8a  1      OPC=1343  
  nop                          #  21    0x2db8b  1      OPC=1343  
.L_2db80:                      #        0x2db8c  0      OPC=0     
  popq %r11                    #  22    0x2db8c  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  23    0x2db8e  7      OPC=131   
  nop                          #  24    0x2db95  1      OPC=1343  
  nop                          #  25    0x2db96  1      OPC=1343  
  nop                          #  26    0x2db97  1      OPC=1343  
  nop                          #  27    0x2db98  1      OPC=1343  
  addq %r15, %r11              #  28    0x2db99  3      OPC=72    
  jmpq %r11                    #  29    0x2db9c  3      OPC=928   
  nop                          #  30    0x2db9f  1      OPC=1343  
  nop                          #  31    0x2dba0  1      OPC=1343  
  nop                          #  32    0x2dba1  1      OPC=1343  
  nop                          #  33    0x2dba2  1      OPC=1343  
  nop                          #  34    0x2dba3  1      OPC=1343  
  nop                          #  35    0x2dba4  1      OPC=1343  
  nop                          #  36    0x2dba5  1      OPC=1343  
  nop                          #  37    0x2dba6  1      OPC=1343  
  nop                          #  38    0x2dba7  1      OPC=1343  
  nop                          #  39    0x2dba8  1      OPC=1343  
  nop                          #  40    0x2dba9  1      OPC=1343  
  nop                          #  41    0x2dbaa  1      OPC=1343  
  nop                          #  42    0x2dbab  1      OPC=1343  
  nop                          #  43    0x2dbac  1      OPC=1343  
  nop                          #  44    0x2dbad  1      OPC=1343  
  nop                          #  45    0x2dbae  1      OPC=1343  
  nop                          #  46    0x2dbaf  1      OPC=1343  
  nop                          #  47    0x2dbb0  1      OPC=1343  
  nop                          #  48    0x2dbb1  1      OPC=1343  
  nop                          #  49    0x2dbb2  1      OPC=1343  
                                                                  
.size __local_lock_release, .-__local_lock_release

