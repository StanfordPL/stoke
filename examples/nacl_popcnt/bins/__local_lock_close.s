  .text
  .globl __local_lock_close
  .type __local_lock_close, @function

#! file-offset 0x406c0
#! rip-offset  0x406c0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.__local_lock_close:           #        0x406c0  0      
  movl %edi, %edi              #  1     0x406c0  2      
  testq %rdi, %rdi             #  2     0x406c2  3      
  je .L_406e0                  #  3     0x406c5  6      
  jmpq .pthread_mutex_destroy  #  4     0x406cb  5      
  nop                          #  5     0x406d0  1      
  nop                          #  6     0x406d1  1      
.L_406e0:                      #        0x406d2  0      
  popq %r11                    #  7     0x406d2  3      
  andl $0xffffffe0, %r11d      #  8     0x406d5  7      
  addq %r15, %r11              #  9     0x406dc  3      
  jmpq %r11                    #  10    0x406df  3      
  nop                          #  11    0x406e2  1      
  nop                          #  12    0x406e3  1      
                                                        
.size __local_lock_close, .-__local_lock_close

