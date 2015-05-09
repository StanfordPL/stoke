  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x7af40
#! rip-offset  0x7af40
#! capacity    96 bytes

# Text                       #  Line  RIP      Bytes  
.__fp_lock_all:              #        0x7af40  0      
  subl $0x8, %esp            #  1     0x7af40  3      
  addq %r15, %rsp            #  2     0x7af43  3      
  nop                        #  3     0x7af46  1      
  nop                        #  4     0x7af47  1      
  callq .__sfp_lock_acquire  #  5     0x7af48  5      
  nop                        #  6     0x7af4d  1      
  nop                        #  7     0x7af4e  1      
  callq .__nacl_read_tp      #  8     0x7af4f  5      
  leaq -0x480(%rax), %rax    #  9     0x7af54  7      
  movl $0x7aec0, %esi        #  10    0x7af5b  5      
  movl %eax, %eax            #  11    0x7af60  2      
  movl (%r15,%rax,1), %edi   #  12    0x7af62  4      
  addl $0x8, %esp            #  13    0x7af66  3      
  addq %r15, %rsp            #  14    0x7af69  3      
  jmpq ._fwalk               #  15    0x7af6c  5      
  nop                        #  16    0x7af71  1      
                                                      
.size __fp_lock_all, .-__fp_lock_all

