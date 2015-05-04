  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x406a0
#! rip-offset  0x406a0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.__local_lock_try_acquire:     #        0x406a0  0      
  movl 0xfff66ea(%rip), %edx   #  1     0x406a0  6      
  xorl %eax, %eax              #  2     0x406a6  2      
  movl %edi, %edi              #  3     0x406a8  2      
  testl %edx, %edx             #  4     0x406aa  2      
  je .L_406c0                  #  5     0x406ac  6      
  testq %rdi, %rdi             #  6     0x406b2  3      
  movb $0x16, %al              #  7     0x406b5  2      
  je .L_406c0                  #  8     0x406b7  6      
  jmpq .pthread_mutex_trylock  #  9     0x406bd  5      
  nop                          #  10    0x406c2  1      
.L_406c0:                      #        0x406c3  0      
  popq %r11                    #  11    0x406c3  3      
  andl $0xffffffe0, %r11d      #  12    0x406c6  7      
  addq %r15, %r11              #  13    0x406cd  3      
  jmpq %r11                    #  14    0x406d0  3      
  nop                          #  15    0x406d3  1      
  nop                          #  16    0x406d4  1      
                                                        
.size __local_lock_try_acquire, .-__local_lock_try_acquire

