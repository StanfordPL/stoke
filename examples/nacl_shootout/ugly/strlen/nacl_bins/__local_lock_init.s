  .text
  .globl __local_lock_init
  .type __local_lock_init, @function

#! file-offset 0x6dd60
#! rip-offset  0x2dd60
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
.__local_lock_init:                 #        0x2dd60  0      OPC=0     
  movq %r12, -0x8(%rsp)             #  1     0x2dd60  5      OPC=1138  
  movl %edi, %r12d                  #  2     0x2dd65  3      OPC=1157  
  movq %rbx, -0x10(%rsp)            #  3     0x2dd68  5      OPC=1138  
  subl $0x28, %esp                  #  4     0x2dd6d  3      OPC=2384  
  addq %r15, %rsp                   #  5     0x2dd70  3      OPC=72    
  testq %r12, %r12                  #  6     0x2dd73  3      OPC=2438  
  je .L_2ddc0                       #  7     0x2dd76  6      OPC=893   
  nop                               #  8     0x2dd7c  1      OPC=1343  
  nop                               #  9     0x2dd7d  1      OPC=1343  
  movl %esp, %edi                   #  10    0x2dd7e  2      OPC=1157  
  nop                               #  11    0x2dd80  1      OPC=1343  
  callq .pthread_mutexattr_init     #  12    0x2dd81  5      OPC=260   
  xorl %esi, %esi                   #  13    0x2dd86  2      OPC=3758  
  movl %esp, %edi                   #  14    0x2dd88  2      OPC=1157  
  nop                               #  15    0x2dd8a  1      OPC=1343  
  nop                               #  16    0x2dd8b  1      OPC=1343  
  nop                               #  17    0x2dd8c  1      OPC=1343  
  nop                               #  18    0x2dd8d  1      OPC=1343  
  nop                               #  19    0x2dd8e  1      OPC=1343  
  nop                               #  20    0x2dd8f  1      OPC=1343  
  nop                               #  21    0x2dd90  1      OPC=1343  
  nop                               #  22    0x2dd91  1      OPC=1343  
  nop                               #  23    0x2dd92  1      OPC=1343  
  nop                               #  24    0x2dd93  1      OPC=1343  
  nop                               #  25    0x2dd94  1      OPC=1343  
  nop                               #  26    0x2dd95  1      OPC=1343  
  nop                               #  27    0x2dd96  1      OPC=1343  
  nop                               #  28    0x2dd97  1      OPC=1343  
  nop                               #  29    0x2dd98  1      OPC=1343  
  nop                               #  30    0x2dd99  1      OPC=1343  
  nop                               #  31    0x2dd9a  1      OPC=1343  
  nop                               #  32    0x2dd9b  1      OPC=1343  
  nop                               #  33    0x2dd9c  1      OPC=1343  
  nop                               #  34    0x2dd9d  1      OPC=1343  
  nop                               #  35    0x2dd9e  1      OPC=1343  
  nop                               #  36    0x2dd9f  1      OPC=1343  
  nop                               #  37    0x2dda0  1      OPC=1343  
  callq .pthread_mutexattr_settype  #  38    0x2dda1  5      OPC=260   
  movl %esp, %esi                   #  39    0x2dda6  2      OPC=1157  
  movl %r12d, %edi                  #  40    0x2dda8  3      OPC=1157  
  nop                               #  41    0x2ddab  1      OPC=1343  
  nop                               #  42    0x2ddac  1      OPC=1343  
  nop                               #  43    0x2ddad  1      OPC=1343  
  nop                               #  44    0x2ddae  1      OPC=1343  
  nop                               #  45    0x2ddaf  1      OPC=1343  
  nop                               #  46    0x2ddb0  1      OPC=1343  
  nop                               #  47    0x2ddb1  1      OPC=1343  
  nop                               #  48    0x2ddb2  1      OPC=1343  
  nop                               #  49    0x2ddb3  1      OPC=1343  
  nop                               #  50    0x2ddb4  1      OPC=1343  
  nop                               #  51    0x2ddb5  1      OPC=1343  
  nop                               #  52    0x2ddb6  1      OPC=1343  
  nop                               #  53    0x2ddb7  1      OPC=1343  
  nop                               #  54    0x2ddb8  1      OPC=1343  
  nop                               #  55    0x2ddb9  1      OPC=1343  
  nop                               #  56    0x2ddba  1      OPC=1343  
  nop                               #  57    0x2ddbb  1      OPC=1343  
  nop                               #  58    0x2ddbc  1      OPC=1343  
  nop                               #  59    0x2ddbd  1      OPC=1343  
  nop                               #  60    0x2ddbe  1      OPC=1343  
  nop                               #  61    0x2ddbf  1      OPC=1343  
  nop                               #  62    0x2ddc0  1      OPC=1343  
  callq .pthread_mutex_init         #  63    0x2ddc1  5      OPC=260   
.L_2ddc0:                           #        0x2ddc6  0      OPC=0     
  movq 0x18(%rsp), %rbx             #  64    0x2ddc6  5      OPC=1161  
  movq 0x20(%rsp), %r12             #  65    0x2ddcb  5      OPC=1161  
  addl $0x28, %esp                  #  66    0x2ddd0  3      OPC=65    
  addq %r15, %rsp                   #  67    0x2ddd3  3      OPC=72    
  popq %r11                         #  68    0x2ddd6  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  69    0x2ddd8  7      OPC=131   
  nop                               #  70    0x2dddf  1      OPC=1343  
  nop                               #  71    0x2dde0  1      OPC=1343  
  nop                               #  72    0x2dde1  1      OPC=1343  
  nop                               #  73    0x2dde2  1      OPC=1343  
  addq %r15, %r11                   #  74    0x2dde3  3      OPC=72    
  jmpq %r11                         #  75    0x2dde6  3      OPC=928   
  nop                               #  76    0x2dde9  1      OPC=1343  
  nop                               #  77    0x2ddea  1      OPC=1343  
  nop                               #  78    0x2ddeb  1      OPC=1343  
  nop                               #  79    0x2ddec  1      OPC=1343  
                                                                       
.size __local_lock_init, .-__local_lock_init

