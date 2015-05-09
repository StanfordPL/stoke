  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x40660
#! rip-offset  0x40660
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.__local_lock_acquire:        #        0x40660  0      
  movl 0xfff672a(%rip), %ecx  #  1     0x40660  6      
  movl %edi, %edi             #  2     0x40666  2      
  testl %ecx, %ecx            #  3     0x40668  2      
  je .L_40680                 #  4     0x4066a  6      
  testq %rdi, %rdi            #  5     0x40670  3      
  je .L_40680                 #  6     0x40673  6      
  jmpq .pthread_mutex_lock    #  7     0x40679  5      
  nop                         #  8     0x4067e  1      
.L_40680:                     #        0x4067f  0      
  popq %r11                   #  9     0x4067f  3      
  andl $0xffffffe0, %r11d     #  10    0x40682  7      
  addq %r15, %r11             #  11    0x40689  3      
  jmpq %r11                   #  12    0x4068c  3      
  nop                         #  13    0x4068f  1      
  nop                         #  14    0x40690  1      
                                                       
.size __local_lock_acquire, .-__local_lock_acquire

