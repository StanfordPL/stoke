  .text
  .globl __local_lock_init_recursive
  .type __local_lock_init_recursive, @function

#! file-offset 0x6dce0
#! rip-offset  0x2dce0
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
.__local_lock_init_recursive:       #        0x2dce0  0      OPC=0     
  movq %r12, -0x8(%rsp)             #  1     0x2dce0  5      OPC=1138  
  movl %edi, %r12d                  #  2     0x2dce5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)            #  3     0x2dce8  5      OPC=1138  
  subl $0x28, %esp                  #  4     0x2dced  3      OPC=2384  
  addq %r15, %rsp                   #  5     0x2dcf0  3      OPC=72    
  testq %r12, %r12                  #  6     0x2dcf3  3      OPC=2438  
  je .L_2dd40                       #  7     0x2dcf6  6      OPC=893   
  nop                               #  8     0x2dcfc  1      OPC=1343  
  nop                               #  9     0x2dcfd  1      OPC=1343  
  movl %esp, %edi                   #  10    0x2dcfe  2      OPC=1157  
  nop                               #  11    0x2dd00  1      OPC=1343  
  callq .pthread_mutexattr_init     #  12    0x2dd01  5      OPC=260   
  movl $0x1, %esi                   #  13    0x2dd06  5      OPC=1154  
  movl %esp, %edi                   #  14    0x2dd0b  2      OPC=1157  
  nop                               #  15    0x2dd0d  1      OPC=1343  
  nop                               #  16    0x2dd0e  1      OPC=1343  
  nop                               #  17    0x2dd0f  1      OPC=1343  
  nop                               #  18    0x2dd10  1      OPC=1343  
  nop                               #  19    0x2dd11  1      OPC=1343  
  nop                               #  20    0x2dd12  1      OPC=1343  
  nop                               #  21    0x2dd13  1      OPC=1343  
  nop                               #  22    0x2dd14  1      OPC=1343  
  nop                               #  23    0x2dd15  1      OPC=1343  
  nop                               #  24    0x2dd16  1      OPC=1343  
  nop                               #  25    0x2dd17  1      OPC=1343  
  nop                               #  26    0x2dd18  1      OPC=1343  
  nop                               #  27    0x2dd19  1      OPC=1343  
  nop                               #  28    0x2dd1a  1      OPC=1343  
  nop                               #  29    0x2dd1b  1      OPC=1343  
  nop                               #  30    0x2dd1c  1      OPC=1343  
  nop                               #  31    0x2dd1d  1      OPC=1343  
  nop                               #  32    0x2dd1e  1      OPC=1343  
  nop                               #  33    0x2dd1f  1      OPC=1343  
  nop                               #  34    0x2dd20  1      OPC=1343  
  callq .pthread_mutexattr_settype  #  35    0x2dd21  5      OPC=260   
  movl %esp, %esi                   #  36    0x2dd26  2      OPC=1157  
  movl %r12d, %edi                  #  37    0x2dd28  3      OPC=1157  
  nop                               #  38    0x2dd2b  1      OPC=1343  
  nop                               #  39    0x2dd2c  1      OPC=1343  
  nop                               #  40    0x2dd2d  1      OPC=1343  
  nop                               #  41    0x2dd2e  1      OPC=1343  
  nop                               #  42    0x2dd2f  1      OPC=1343  
  nop                               #  43    0x2dd30  1      OPC=1343  
  nop                               #  44    0x2dd31  1      OPC=1343  
  nop                               #  45    0x2dd32  1      OPC=1343  
  nop                               #  46    0x2dd33  1      OPC=1343  
  nop                               #  47    0x2dd34  1      OPC=1343  
  nop                               #  48    0x2dd35  1      OPC=1343  
  nop                               #  49    0x2dd36  1      OPC=1343  
  nop                               #  50    0x2dd37  1      OPC=1343  
  nop                               #  51    0x2dd38  1      OPC=1343  
  nop                               #  52    0x2dd39  1      OPC=1343  
  nop                               #  53    0x2dd3a  1      OPC=1343  
  nop                               #  54    0x2dd3b  1      OPC=1343  
  nop                               #  55    0x2dd3c  1      OPC=1343  
  nop                               #  56    0x2dd3d  1      OPC=1343  
  nop                               #  57    0x2dd3e  1      OPC=1343  
  nop                               #  58    0x2dd3f  1      OPC=1343  
  nop                               #  59    0x2dd40  1      OPC=1343  
  callq .pthread_mutex_init         #  60    0x2dd41  5      OPC=260   
.L_2dd40:                           #        0x2dd46  0      OPC=0     
  movq 0x18(%rsp), %rbx             #  61    0x2dd46  5      OPC=1161  
  movq 0x20(%rsp), %r12             #  62    0x2dd4b  5      OPC=1161  
  addl $0x28, %esp                  #  63    0x2dd50  3      OPC=65    
  addq %r15, %rsp                   #  64    0x2dd53  3      OPC=72    
  popq %r11                         #  65    0x2dd56  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  66    0x2dd58  7      OPC=131   
  nop                               #  67    0x2dd5f  1      OPC=1343  
  nop                               #  68    0x2dd60  1      OPC=1343  
  nop                               #  69    0x2dd61  1      OPC=1343  
  nop                               #  70    0x2dd62  1      OPC=1343  
  addq %r15, %r11                   #  71    0x2dd63  3      OPC=72    
  jmpq %r11                         #  72    0x2dd66  3      OPC=928   
  nop                               #  73    0x2dd69  1      OPC=1343  
  nop                               #  74    0x2dd6a  1      OPC=1343  
  nop                               #  75    0x2dd6b  1      OPC=1343  
  nop                               #  76    0x2dd6c  1      OPC=1343  
                                                                       
.size __local_lock_init_recursive, .-__local_lock_init_recursive

