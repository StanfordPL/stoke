  .text
  .globl __newlib_thread_init
  .type __newlib_thread_init, @function

#! file-offset 0x69aa0
#! rip-offset  0x69aa0
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  
.__newlib_thread_init:            #        0x69aa0  0      
  pushq %rbx                      #  1     0x69aa0  2      
  nop                             #  2     0x69aa2  1      
  nop                             #  3     0x69aa3  1      
  callq .__nacl_read_tp           #  4     0x69aa4  5      
  movq %rax, %rbx                 #  5     0x69aa9  3      
  nop                             #  6     0x69aac  1      
  nop                             #  7     0x69aad  1      
  callq .__nacl_read_tp           #  8     0x69aae  5      
  addq $0xfffffffffffffb88, %rax  #  9     0x69ab3  6      
  movl %ebx, %ebx                 #  10    0x69ab9  2      
  movl %eax, -0x480(%r15,%rbx,1)  #  11    0x69abb  8      
  popq %rbx                       #  12    0x69ac3  2      
  popq %r11                       #  13    0x69ac5  3      
  andl $0xffffffe0, %r11d         #  14    0x69ac8  7      
  addq %r15, %r11                 #  15    0x69acf  3      
  jmpq %r11                       #  16    0x69ad2  3      
  nop                             #  17    0x69ad5  1      
                                                           
.size __newlib_thread_init, .-__newlib_thread_init

