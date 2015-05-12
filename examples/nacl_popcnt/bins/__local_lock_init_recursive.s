  .text
  .globl __local_lock_init_recursive
  .type __local_lock_init_recursive, @function

#! file-offset 0x40740
#! rip-offset  0x40740
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  
.__local_lock_init_recursive:       #        0x40740  0      
  movq %r12, -0x8(%rsp)             #  1     0x40740  5      
  movl %edi, %r12d                  #  2     0x40745  3      
  movq %rbx, -0x10(%rsp)            #  3     0x40748  5      
  subl $0x28, %esp                  #  4     0x4074d  3      
  addq %r15, %rsp                   #  5     0x40750  3      
  testq %r12, %r12                  #  6     0x40753  3      
  je .L_407a0                       #  7     0x40756  6      
  movl %esp, %edi                   #  8     0x4075c  2      
  nop                               #  9     0x4075e  1      
  callq .pthread_mutexattr_init     #  10    0x4075f  5      
  movl $0x1, %esi                   #  11    0x40764  5      
  movl %esp, %edi                   #  12    0x40769  2      
  nop                               #  13    0x4076b  1      
  nop                               #  14    0x4076c  1      
  callq .pthread_mutexattr_settype  #  15    0x4076d  5      
  movl %esp, %esi                   #  16    0x40772  2      
  movl %r12d, %edi                  #  17    0x40774  3      
  nop                               #  18    0x40777  1      
  nop                               #  19    0x40778  1      
  callq .pthread_mutex_init         #  20    0x40779  5      
.L_407a0:                           #        0x4077e  0      
  movq 0x18(%rsp), %rbx             #  21    0x4077e  5      
  movq 0x20(%rsp), %r12             #  22    0x40783  5      
  addl $0x28, %esp                  #  23    0x40788  3      
  addq %r15, %rsp                   #  24    0x4078b  3      
  popq %r11                         #  25    0x4078e  3      
  andl $0xffffffe0, %r11d           #  26    0x40791  7      
  addq %r15, %r11                   #  27    0x40798  3      
  jmpq %r11                         #  28    0x4079b  3      
  nop                               #  29    0x4079e  1      
                                                             
.size __local_lock_init_recursive, .-__local_lock_init_recursive

