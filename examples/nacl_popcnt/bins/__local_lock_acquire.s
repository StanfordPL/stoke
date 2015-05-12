  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x40680
#! rip-offset  0x40680
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.__local_lock_acquire:        #        0x40680  0      
  movl 0xfff670a(%rip), %ecx  #  1     0x40680  6      
  movl %edi, %edi             #  2     0x40686  2      
  testl %ecx, %ecx            #  3     0x40688  2      
  je .L_406a0                 #  4     0x4068a  6      
  testq %rdi, %rdi            #  5     0x40690  3      
  je .L_406a0                 #  6     0x40693  6      
  jmpq .pthread_mutex_lock    #  7     0x40699  5      
  nop                         #  8     0x4069e  1      
.L_406a0:                     #        0x4069f  0      
  popq %r11                   #  9     0x4069f  3      
  andl $0xffffffe0, %r11d     #  10    0x406a2  7      
  addq %r15, %r11             #  11    0x406a9  3      
  jmpq %r11                   #  12    0x406ac  3      
  nop                         #  13    0x406af  1      
  nop                         #  14    0x406b0  1      
                                                       
.size __local_lock_acquire, .-__local_lock_acquire

