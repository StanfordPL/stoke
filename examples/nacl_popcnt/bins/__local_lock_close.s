  .text
  .globl __local_lock_close
  .type __local_lock_close, @function

#! file-offset 0x406e0
#! rip-offset  0x406e0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.__local_lock_close:           #        0x406e0  0      
  movl %edi, %edi              #  1     0x406e0  2      
  testq %rdi, %rdi             #  2     0x406e2  3      
  je .L_40700                  #  3     0x406e5  6      
  jmpq .pthread_mutex_destroy  #  4     0x406eb  5      
  nop                          #  5     0x406f0  1      
  nop                          #  6     0x406f1  1      
.L_40700:                      #        0x406f2  0      
  popq %r11                    #  7     0x406f2  3      
  andl $0xffffffe0, %r11d      #  8     0x406f5  7      
  addq %r15, %r11              #  9     0x406fc  3      
  jmpq %r11                    #  10    0x406ff  3      
  nop                          #  11    0x40702  1      
  nop                          #  12    0x40703  1      
                                                        
.size __local_lock_close, .-__local_lock_close

