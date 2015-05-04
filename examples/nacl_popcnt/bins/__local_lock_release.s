  .text
  .globl __local_lock_release
  .type __local_lock_release, @function

#! file-offset 0x40640
#! rip-offset  0x40640
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.__local_lock_release:        #        0x40640  0      
  movl 0xfff674a(%rip), %eax  #  1     0x40640  6      
  movl %edi, %edi             #  2     0x40646  2      
  testl %eax, %eax            #  3     0x40648  2      
  je .L_40660                 #  4     0x4064a  6      
  testq %rdi, %rdi            #  5     0x40650  3      
  je .L_40660                 #  6     0x40653  6      
  jmpq .pthread_mutex_unlock  #  7     0x40659  5      
  nop                         #  8     0x4065e  1      
.L_40660:                     #        0x4065f  0      
  popq %r11                   #  9     0x4065f  3      
  andl $0xffffffe0, %r11d     #  10    0x40662  7      
  addq %r15, %r11             #  11    0x40669  3      
  jmpq %r11                   #  12    0x4066c  3      
  nop                         #  13    0x4066f  1      
  nop                         #  14    0x40670  1      
                                                       
.size __local_lock_release, .-__local_lock_release

