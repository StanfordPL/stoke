  .text
  .globl __local_lock_close
  .type __local_lock_close, @function

#! file-offset 0x6dc80
#! rip-offset  0x2dc80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__local_lock_close:           #        0x2dc80  0      OPC=0     
  movl %edi, %edi              #  1     0x2dc80  2      OPC=1157  
  testq %rdi, %rdi             #  2     0x2dc82  3      OPC=2438  
  je .L_2dca0                  #  3     0x2dc85  6      OPC=893   
  nop                          #  4     0x2dc8b  1      OPC=1343  
  nop                          #  5     0x2dc8c  1      OPC=1343  
  jmpq .pthread_mutex_destroy  #  6     0x2dc8d  5      OPC=930   
  nop                          #  7     0x2dc92  1      OPC=1343  
  nop                          #  8     0x2dc93  1      OPC=1343  
  nop                          #  9     0x2dc94  1      OPC=1343  
  nop                          #  10    0x2dc95  1      OPC=1343  
  nop                          #  11    0x2dc96  1      OPC=1343  
  nop                          #  12    0x2dc97  1      OPC=1343  
  nop                          #  13    0x2dc98  1      OPC=1343  
  nop                          #  14    0x2dc99  1      OPC=1343  
  nop                          #  15    0x2dc9a  1      OPC=1343  
  nop                          #  16    0x2dc9b  1      OPC=1343  
  nop                          #  17    0x2dc9c  1      OPC=1343  
  nop                          #  18    0x2dc9d  1      OPC=1343  
  nop                          #  19    0x2dc9e  1      OPC=1343  
  nop                          #  20    0x2dc9f  1      OPC=1343  
  nop                          #  21    0x2dca0  1      OPC=1343  
  nop                          #  22    0x2dca1  1      OPC=1343  
  nop                          #  23    0x2dca2  1      OPC=1343  
  nop                          #  24    0x2dca3  1      OPC=1343  
  nop                          #  25    0x2dca4  1      OPC=1343  
  nop                          #  26    0x2dca5  1      OPC=1343  
.L_2dca0:                      #        0x2dca6  0      OPC=0     
  popq %r11                    #  27    0x2dca6  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  28    0x2dca8  7      OPC=131   
  nop                          #  29    0x2dcaf  1      OPC=1343  
  nop                          #  30    0x2dcb0  1      OPC=1343  
  nop                          #  31    0x2dcb1  1      OPC=1343  
  nop                          #  32    0x2dcb2  1      OPC=1343  
  addq %r15, %r11              #  33    0x2dcb3  3      OPC=72    
  jmpq %r11                    #  34    0x2dcb6  3      OPC=928   
  nop                          #  35    0x2dcb9  1      OPC=1343  
  nop                          #  36    0x2dcba  1      OPC=1343  
  nop                          #  37    0x2dcbb  1      OPC=1343  
  nop                          #  38    0x2dcbc  1      OPC=1343  
  nop                          #  39    0x2dcbd  1      OPC=1343  
  nop                          #  40    0x2dcbe  1      OPC=1343  
  nop                          #  41    0x2dcbf  1      OPC=1343  
  nop                          #  42    0x2dcc0  1      OPC=1343  
  nop                          #  43    0x2dcc1  1      OPC=1343  
  nop                          #  44    0x2dcc2  1      OPC=1343  
  nop                          #  45    0x2dcc3  1      OPC=1343  
  nop                          #  46    0x2dcc4  1      OPC=1343  
  nop                          #  47    0x2dcc5  1      OPC=1343  
  nop                          #  48    0x2dcc6  1      OPC=1343  
  nop                          #  49    0x2dcc7  1      OPC=1343  
  nop                          #  50    0x2dcc8  1      OPC=1343  
  nop                          #  51    0x2dcc9  1      OPC=1343  
  nop                          #  52    0x2dcca  1      OPC=1343  
  nop                          #  53    0x2dccb  1      OPC=1343  
  nop                          #  54    0x2dccc  1      OPC=1343  
                                                                  
.size __local_lock_close, .-__local_lock_close

