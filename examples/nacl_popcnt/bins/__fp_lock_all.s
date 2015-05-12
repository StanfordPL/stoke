  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x7af60
#! rip-offset  0x7af60
#! capacity    96 bytes

# Text                       #  Line  RIP      Bytes  
.__fp_lock_all:              #        0x7af60  0      
  subl $0x8, %esp            #  1     0x7af60  3      
  addq %r15, %rsp            #  2     0x7af63  3      
  nop                        #  3     0x7af66  1      
  nop                        #  4     0x7af67  1      
  callq .__sfp_lock_acquire  #  5     0x7af68  5      
  nop                        #  6     0x7af6d  1      
  nop                        #  7     0x7af6e  1      
  callq .__nacl_read_tp      #  8     0x7af6f  5      
  leaq -0x480(%rax), %rax    #  9     0x7af74  7      
  movl $0x7aee0, %esi        #  10    0x7af7b  5      
  movl %eax, %eax            #  11    0x7af80  2      
  movl (%r15,%rax,1), %edi   #  12    0x7af82  4      
  addl $0x8, %esp            #  13    0x7af86  3      
  addq %r15, %rsp            #  14    0x7af89  3      
  jmpq ._fwalk               #  15    0x7af8c  5      
  nop                        #  16    0x7af91  1      
                                                      
.size __fp_lock_all, .-__fp_lock_all

