  .text
  .globl __local_lock_release
  .type __local_lock_release, @function

#! file-offset 0x405a0
#! rip-offset  0x405a0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.__local_lock_release:        #        0x405a0  0      
  movl 0xfff67ea(%rip), %eax  #  1     0x405a0  6      
  movl %edi, %edi             #  2     0x405a6  2      
  testl %eax, %eax            #  3     0x405a8  2      
  je .L_405c0                 #  4     0x405aa  6      
  testq %rdi, %rdi            #  5     0x405b0  3      
  je .L_405c0                 #  6     0x405b3  6      
  jmpq .pthread_mutex_unlock  #  7     0x405b9  5      
  nop                         #  8     0x405be  1      
.L_405c0:                     #        0x405bf  0      
  popq %r11                   #  9     0x405bf  3      
  andl $0xffffffe0, %r11d     #  10    0x405c2  7      
  addq %r15, %r11             #  11    0x405c9  3      
  jmpq %r11                   #  12    0x405cc  3      
  nop                         #  13    0x405cf  1      
  nop                         #  14    0x405d0  1      
                                                       
.size __local_lock_release, .-__local_lock_release

