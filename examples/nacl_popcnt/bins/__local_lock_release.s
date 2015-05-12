  .text
  .globl __local_lock_release
  .type __local_lock_release, @function

#! file-offset 0x405c0
#! rip-offset  0x405c0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.__local_lock_release:        #        0x405c0  0      
  movl 0xfff67ca(%rip), %eax  #  1     0x405c0  6      
  movl %edi, %edi             #  2     0x405c6  2      
  testl %eax, %eax            #  3     0x405c8  2      
  je .L_405e0                 #  4     0x405ca  6      
  testq %rdi, %rdi            #  5     0x405d0  3      
  je .L_405e0                 #  6     0x405d3  6      
  jmpq .pthread_mutex_unlock  #  7     0x405d9  5      
  nop                         #  8     0x405de  1      
.L_405e0:                     #        0x405df  0      
  popq %r11                   #  9     0x405df  3      
  andl $0xffffffe0, %r11d     #  10    0x405e2  7      
  addq %r15, %r11             #  11    0x405e9  3      
  jmpq %r11                   #  12    0x405ec  3      
  nop                         #  13    0x405ef  1      
  nop                         #  14    0x405f0  1      
                                                       
.size __local_lock_release, .-__local_lock_release

