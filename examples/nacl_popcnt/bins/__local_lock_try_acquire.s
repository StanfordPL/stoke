  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x40620
#! rip-offset  0x40620
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.__local_lock_try_acquire:     #        0x40620  0      
  movl 0xfff676a(%rip), %edx   #  1     0x40620  6      
  xorl %eax, %eax              #  2     0x40626  2      
  movl %edi, %edi              #  3     0x40628  2      
  testl %edx, %edx             #  4     0x4062a  2      
  je .L_40640                  #  5     0x4062c  6      
  testq %rdi, %rdi             #  6     0x40632  3      
  movb $0x16, %al              #  7     0x40635  2      
  je .L_40640                  #  8     0x40637  6      
  jmpq .pthread_mutex_trylock  #  9     0x4063d  5      
  nop                          #  10    0x40642  1      
.L_40640:                      #        0x40643  0      
  popq %r11                    #  11    0x40643  3      
  andl $0xffffffe0, %r11d      #  12    0x40646  7      
  addq %r15, %r11              #  13    0x4064d  3      
  jmpq %r11                    #  14    0x40650  3      
  nop                          #  15    0x40653  1      
  nop                          #  16    0x40654  1      
                                                        
.size __local_lock_try_acquire, .-__local_lock_try_acquire

