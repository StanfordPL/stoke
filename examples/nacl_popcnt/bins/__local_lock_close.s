  .text
  .globl __local_lock_close
  .type __local_lock_close, @function

#! file-offset 0x40760
#! rip-offset  0x40760
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.__local_lock_close:           #        0x40760  0      
  movl %edi, %edi              #  1     0x40760  2      
  testq %rdi, %rdi             #  2     0x40762  3      
  je .L_40780                  #  3     0x40765  6      
  jmpq .pthread_mutex_destroy  #  4     0x4076b  5      
  nop                          #  5     0x40770  1      
  nop                          #  6     0x40771  1      
.L_40780:                      #        0x40772  0      
  popq %r11                    #  7     0x40772  3      
  andl $0xffffffe0, %r11d      #  8     0x40775  7      
  addq %r15, %r11              #  9     0x4077c  3      
  jmpq %r11                    #  10    0x4077f  3      
  nop                          #  11    0x40782  1      
  nop                          #  12    0x40783  1      
                                                        
.size __local_lock_close, .-__local_lock_close

