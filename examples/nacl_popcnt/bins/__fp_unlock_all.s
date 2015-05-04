  .text
  .globl __fp_unlock_all
  .type __fp_unlock_all, @function

#! file-offset 0x7af00
#! rip-offset  0x7af00
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.__fp_unlock_all:           #        0x7af00  0      
  subl $0x8, %esp           #  1     0x7af00  3      
  addq %r15, %rsp           #  2     0x7af03  3      
  nop                       #  3     0x7af06  1      
  nop                       #  4     0x7af07  1      
  callq .__nacl_read_tp     #  5     0x7af08  5      
  leaq -0x480(%rax), %rax   #  6     0x7af0d  7      
  movl $0x7ae80, %esi       #  7     0x7af14  5      
  movl %eax, %eax           #  8     0x7af19  2      
  movl (%r15,%rax,1), %edi  #  9     0x7af1b  4      
  nop                       #  10    0x7af1f  1      
  callq ._fwalk             #  11    0x7af20  5      
  addl $0x8, %esp           #  12    0x7af25  3      
  addq %r15, %rsp           #  13    0x7af28  3      
  jmpq .__sfp_lock_release  #  14    0x7af2b  5      
  nop                       #  15    0x7af30  1      
  nop                       #  16    0x7af31  1      
                                                     
.size __fp_unlock_all, .-__fp_unlock_all

