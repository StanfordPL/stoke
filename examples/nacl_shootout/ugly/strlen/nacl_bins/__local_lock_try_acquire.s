  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x6dbc0
#! rip-offset  0x2dbc0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__local_lock_try_acquire:     #        0x2dbc0  0      OPC=0     
  movl 0x1004b64e(%rip), %edx  #  1     0x2dbc0  6      OPC=1156  
  xorl %eax, %eax              #  2     0x2dbc6  2      OPC=3758  
  movl %edi, %edi              #  3     0x2dbc8  2      OPC=1157  
  testl %edx, %edx             #  4     0x2dbca  2      OPC=2436  
  je .L_2dbe0                  #  5     0x2dbcc  6      OPC=893   
  nop                          #  6     0x2dbd2  1      OPC=1343  
  nop                          #  7     0x2dbd3  1      OPC=1343  
  testq %rdi, %rdi             #  8     0x2dbd4  3      OPC=2438  
  movb $0x16, %al              #  9     0x2dbd7  2      OPC=1165  
  je .L_2dbe0                  #  10    0x2dbd9  6      OPC=893   
  nop                          #  11    0x2dbdf  1      OPC=1343  
  nop                          #  12    0x2dbe0  1      OPC=1343  
  jmpq .pthread_mutex_trylock  #  13    0x2dbe1  5      OPC=930   
  nop                          #  14    0x2dbe6  1      OPC=1343  
  nop                          #  15    0x2dbe7  1      OPC=1343  
  nop                          #  16    0x2dbe8  1      OPC=1343  
  nop                          #  17    0x2dbe9  1      OPC=1343  
  nop                          #  18    0x2dbea  1      OPC=1343  
  nop                          #  19    0x2dbeb  1      OPC=1343  
.L_2dbe0:                      #        0x2dbec  0      OPC=0     
  popq %r11                    #  20    0x2dbec  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  21    0x2dbee  7      OPC=131   
  nop                          #  22    0x2dbf5  1      OPC=1343  
  nop                          #  23    0x2dbf6  1      OPC=1343  
  nop                          #  24    0x2dbf7  1      OPC=1343  
  nop                          #  25    0x2dbf8  1      OPC=1343  
  addq %r15, %r11              #  26    0x2dbf9  3      OPC=72    
  jmpq %r11                    #  27    0x2dbfc  3      OPC=928   
  nop                          #  28    0x2dbff  1      OPC=1343  
  nop                          #  29    0x2dc00  1      OPC=1343  
  nop                          #  30    0x2dc01  1      OPC=1343  
  nop                          #  31    0x2dc02  1      OPC=1343  
  nop                          #  32    0x2dc03  1      OPC=1343  
  nop                          #  33    0x2dc04  1      OPC=1343  
  nop                          #  34    0x2dc05  1      OPC=1343  
  nop                          #  35    0x2dc06  1      OPC=1343  
  nop                          #  36    0x2dc07  1      OPC=1343  
  nop                          #  37    0x2dc08  1      OPC=1343  
  nop                          #  38    0x2dc09  1      OPC=1343  
  nop                          #  39    0x2dc0a  1      OPC=1343  
  nop                          #  40    0x2dc0b  1      OPC=1343  
  nop                          #  41    0x2dc0c  1      OPC=1343  
  nop                          #  42    0x2dc0d  1      OPC=1343  
  nop                          #  43    0x2dc0e  1      OPC=1343  
  nop                          #  44    0x2dc0f  1      OPC=1343  
  nop                          #  45    0x2dc10  1      OPC=1343  
  nop                          #  46    0x2dc11  1      OPC=1343  
  nop                          #  47    0x2dc12  1      OPC=1343  
                                                                  
.size __local_lock_try_acquire, .-__local_lock_try_acquire

