  .text
  .globl __fp_unlock_all
  .type __fp_unlock_all, @function

#! file-offset 0x7ae80
#! rip-offset  0x7ae80
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.__fp_unlock_all:           #        0x7ae80  0      
  subl $0x8, %esp           #  1     0x7ae80  3      
  addq %r15, %rsp           #  2     0x7ae83  3      
  nop                       #  3     0x7ae86  1      
  nop                       #  4     0x7ae87  1      
  callq .__nacl_read_tp     #  5     0x7ae88  5      
  leaq -0x480(%rax), %rax   #  6     0x7ae8d  7      
  movl $0x7ae00, %esi       #  7     0x7ae94  5      
  movl %eax, %eax           #  8     0x7ae99  2      
  movl (%r15,%rax,1), %edi  #  9     0x7ae9b  4      
  nop                       #  10    0x7ae9f  1      
  callq ._fwalk             #  11    0x7aea0  5      
  addl $0x8, %esp           #  12    0x7aea5  3      
  addq %r15, %rsp           #  13    0x7aea8  3      
  jmpq .__sfp_lock_release  #  14    0x7aeab  5      
  nop                       #  15    0x7aeb0  1      
  nop                       #  16    0x7aeb1  1      
                                                     
.size __fp_unlock_all, .-__fp_unlock_all

