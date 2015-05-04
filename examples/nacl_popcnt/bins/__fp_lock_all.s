  .text
  .globl __fp_lock_all
  .type __fp_lock_all, @function

#! file-offset 0x7afe0
#! rip-offset  0x7afe0
#! capacity    96 bytes

# Text                       #  Line  RIP      Bytes  
.__fp_lock_all:              #        0x7afe0  0      
  subl $0x8, %esp            #  1     0x7afe0  3      
  addq %r15, %rsp            #  2     0x7afe3  3      
  nop                        #  3     0x7afe6  1      
  nop                        #  4     0x7afe7  1      
  callq .__sfp_lock_acquire  #  5     0x7afe8  5      
  nop                        #  6     0x7afed  1      
  nop                        #  7     0x7afee  1      
  callq .__nacl_read_tp      #  8     0x7afef  5      
  leaq -0x480(%rax), %rax    #  9     0x7aff4  7      
  movl $0x7af60, %esi        #  10    0x7affb  5      
  movl %eax, %eax            #  11    0x7b000  2      
  movl (%r15,%rax,1), %edi   #  12    0x7b002  4      
  addl $0x8, %esp            #  13    0x7b006  3      
  addq %r15, %rsp            #  14    0x7b009  3      
  jmpq ._fwalk               #  15    0x7b00c  5      
  nop                        #  16    0x7b011  1      
                                                      
.size __fp_lock_all, .-__fp_lock_all

