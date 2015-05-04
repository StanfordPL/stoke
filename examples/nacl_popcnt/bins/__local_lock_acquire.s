  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x40700
#! rip-offset  0x40700
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.__local_lock_acquire:        #        0x40700  0      
  movl 0xfff668a(%rip), %ecx  #  1     0x40700  6      
  movl %edi, %edi             #  2     0x40706  2      
  testl %ecx, %ecx            #  3     0x40708  2      
  je .L_40720                 #  4     0x4070a  6      
  testq %rdi, %rdi            #  5     0x40710  3      
  je .L_40720                 #  6     0x40713  6      
  jmpq .pthread_mutex_lock    #  7     0x40719  5      
  nop                         #  8     0x4071e  1      
.L_40720:                     #        0x4071f  0      
  popq %r11                   #  9     0x4071f  3      
  andl $0xffffffe0, %r11d     #  10    0x40722  7      
  addq %r15, %r11             #  11    0x40729  3      
  jmpq %r11                   #  12    0x4072c  3      
  nop                         #  13    0x4072f  1      
  nop                         #  14    0x40730  1      
                                                       
.size __local_lock_acquire, .-__local_lock_acquire

