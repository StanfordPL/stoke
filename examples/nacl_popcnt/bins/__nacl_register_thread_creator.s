  .text
  .globl __nacl_register_thread_creator
  .type __nacl_register_thread_creator, @function

#! file-offset 0x3fc00
#! rip-offset  0x3fc00
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.__nacl_register_thread_creator:  #        0x3fc00  0      
  movl %edi, %edi                 #  1     0x3fc00  2      
  movl %edi, %edi                 #  2     0x3fc02  2      
  movl 0x4(%r15,%rdi,1), %eax     #  3     0x3fc04  5      
  movl $0x10020938, %edi          #  4     0x3fc09  5      
  andl $0xffffffe0, %eax          #  5     0x3fc0e  5      
  addq %r15, %rax                 #  6     0x3fc13  3      
  jmpq %rax                       #  7     0x3fc16  2      
  nop                             #  8     0x3fc18  1      
                                                           
.size __nacl_register_thread_creator, .-__nacl_register_thread_creator

