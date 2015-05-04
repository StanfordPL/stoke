  .text
  .globl __local_lock_init
  .type __local_lock_init, @function

#! file-offset 0x40840
#! rip-offset  0x40840
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  
.__local_lock_init:                 #        0x40840  0      
  movq %r12, -0x8(%rsp)             #  1     0x40840  5      
  movl %edi, %r12d                  #  2     0x40845  3      
  movq %rbx, -0x10(%rsp)            #  3     0x40848  5      
  subl $0x28, %esp                  #  4     0x4084d  3      
  addq %r15, %rsp                   #  5     0x40850  3      
  testq %r12, %r12                  #  6     0x40853  3      
  je .L_408a0                       #  7     0x40856  6      
  movl %esp, %edi                   #  8     0x4085c  2      
  nop                               #  9     0x4085e  1      
  callq .pthread_mutexattr_init     #  10    0x4085f  5      
  xorl %esi, %esi                   #  11    0x40864  2      
  movl %esp, %edi                   #  12    0x40866  2      
  nop                               #  13    0x40868  1      
  nop                               #  14    0x40869  1      
  callq .pthread_mutexattr_settype  #  15    0x4086a  5      
  movl %esp, %esi                   #  16    0x4086f  2      
  movl %r12d, %edi                  #  17    0x40871  3      
  nop                               #  18    0x40874  1      
  nop                               #  19    0x40875  1      
  callq .pthread_mutex_init         #  20    0x40876  5      
.L_408a0:                           #        0x4087b  0      
  movq 0x18(%rsp), %rbx             #  21    0x4087b  5      
  movq 0x20(%rsp), %r12             #  22    0x40880  5      
  addl $0x28, %esp                  #  23    0x40885  3      
  addq %r15, %rsp                   #  24    0x40888  3      
  popq %r11                         #  25    0x4088b  3      
  andl $0xffffffe0, %r11d           #  26    0x4088e  7      
  addq %r15, %r11                   #  27    0x40895  3      
  jmpq %r11                         #  28    0x40898  3      
  nop                               #  29    0x4089b  1      
                                                             
.size __local_lock_init, .-__local_lock_init

