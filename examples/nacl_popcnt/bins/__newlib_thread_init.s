  .text
  .globl __newlib_thread_init
  .type __newlib_thread_init, @function

#! file-offset 0x69b40
#! rip-offset  0x69b40
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  
.__newlib_thread_init:            #        0x69b40  0      
  pushq %rbx                      #  1     0x69b40  2      
  nop                             #  2     0x69b42  1      
  nop                             #  3     0x69b43  1      
  callq .__nacl_read_tp           #  4     0x69b44  5      
  movq %rax, %rbx                 #  5     0x69b49  3      
  nop                             #  6     0x69b4c  1      
  nop                             #  7     0x69b4d  1      
  callq .__nacl_read_tp           #  8     0x69b4e  5      
  addq $0xfffffffffffffb88, %rax  #  9     0x69b53  6      
  movl %ebx, %ebx                 #  10    0x69b59  2      
  movl %eax, -0x480(%r15,%rbx,1)  #  11    0x69b5b  8      
  popq %rbx                       #  12    0x69b63  2      
  popq %r11                       #  13    0x69b65  3      
  andl $0xffffffe0, %r11d         #  14    0x69b68  7      
  addq %r15, %r11                 #  15    0x69b6f  3      
  jmpq %r11                       #  16    0x69b72  3      
  nop                             #  17    0x69b75  1      
                                                           
.size __newlib_thread_init, .-__newlib_thread_init

