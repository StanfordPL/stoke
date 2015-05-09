  .text
  .globl __fp_unlock_all
  .type __fp_unlock_all, @function

#! file-offset 0x7ae60
#! rip-offset  0x7ae60
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.__fp_unlock_all:           #        0x7ae60  0      
  subl $0x8, %esp           #  1     0x7ae60  3      
  addq %r15, %rsp           #  2     0x7ae63  3      
  nop                       #  3     0x7ae66  1      
  nop                       #  4     0x7ae67  1      
  callq .__nacl_read_tp     #  5     0x7ae68  5      
  leaq -0x480(%rax), %rax   #  6     0x7ae6d  7      
  movl $0x7ade0, %esi       #  7     0x7ae74  5      
  movl %eax, %eax           #  8     0x7ae79  2      
  movl (%r15,%rax,1), %edi  #  9     0x7ae7b  4      
  nop                       #  10    0x7ae7f  1      
  callq ._fwalk             #  11    0x7ae80  5      
  addl $0x8, %esp           #  12    0x7ae85  3      
  addq %r15, %rsp           #  13    0x7ae88  3      
  jmpq .__sfp_lock_release  #  14    0x7ae8b  5      
  nop                       #  15    0x7ae90  1      
  nop                       #  16    0x7ae91  1      
                                                     
.size __fp_unlock_all, .-__fp_unlock_all

