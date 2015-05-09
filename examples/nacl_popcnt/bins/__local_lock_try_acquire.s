  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x40600
#! rip-offset  0x40600
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.__local_lock_try_acquire:     #        0x40600  0      
  movl 0xfff678a(%rip), %edx   #  1     0x40600  6      
  xorl %eax, %eax              #  2     0x40606  2      
  movl %edi, %edi              #  3     0x40608  2      
  testl %edx, %edx             #  4     0x4060a  2      
  je .L_40620                  #  5     0x4060c  6      
  testq %rdi, %rdi             #  6     0x40612  3      
  movb $0x16, %al              #  7     0x40615  2      
  je .L_40620                  #  8     0x40617  6      
  jmpq .pthread_mutex_trylock  #  9     0x4061d  5      
  nop                          #  10    0x40622  1      
.L_40620:                      #        0x40623  0      
  popq %r11                    #  11    0x40623  3      
  andl $0xffffffe0, %r11d      #  12    0x40626  7      
  addq %r15, %r11              #  13    0x4062d  3      
  jmpq %r11                    #  14    0x40630  3      
  nop                          #  15    0x40633  1      
  nop                          #  16    0x40634  1      
                                                        
.size __local_lock_try_acquire, .-__local_lock_try_acquire

