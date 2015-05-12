  .text
  .globl __local_lock_init
  .type __local_lock_init, @function

#! file-offset 0x407c0
#! rip-offset  0x407c0
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  
.__local_lock_init:                 #        0x407c0  0      
  movq %r12, -0x8(%rsp)             #  1     0x407c0  5      
  movl %edi, %r12d                  #  2     0x407c5  3      
  movq %rbx, -0x10(%rsp)            #  3     0x407c8  5      
  subl $0x28, %esp                  #  4     0x407cd  3      
  addq %r15, %rsp                   #  5     0x407d0  3      
  testq %r12, %r12                  #  6     0x407d3  3      
  je .L_40820                       #  7     0x407d6  6      
  movl %esp, %edi                   #  8     0x407dc  2      
  nop                               #  9     0x407de  1      
  callq .pthread_mutexattr_init     #  10    0x407df  5      
  xorl %esi, %esi                   #  11    0x407e4  2      
  movl %esp, %edi                   #  12    0x407e6  2      
  nop                               #  13    0x407e8  1      
  nop                               #  14    0x407e9  1      
  callq .pthread_mutexattr_settype  #  15    0x407ea  5      
  movl %esp, %esi                   #  16    0x407ef  2      
  movl %r12d, %edi                  #  17    0x407f1  3      
  nop                               #  18    0x407f4  1      
  nop                               #  19    0x407f5  1      
  callq .pthread_mutex_init         #  20    0x407f6  5      
.L_40820:                           #        0x407fb  0      
  movq 0x18(%rsp), %rbx             #  21    0x407fb  5      
  movq 0x20(%rsp), %r12             #  22    0x40800  5      
  addl $0x28, %esp                  #  23    0x40805  3      
  addq %r15, %rsp                   #  24    0x40808  3      
  popq %r11                         #  25    0x4080b  3      
  andl $0xffffffe0, %r11d           #  26    0x4080e  7      
  addq %r15, %r11                   #  27    0x40815  3      
  jmpq %r11                         #  28    0x40818  3      
  nop                               #  29    0x4081b  1      
                                                             
.size __local_lock_init, .-__local_lock_init

