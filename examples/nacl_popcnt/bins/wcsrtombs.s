  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x77400
#! rip-offset  0x77400
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.wcsrtombs:                 #        0x77400  0      
  movq %rbx, -0x20(%rsp)    #  1     0x77400  5      
  movq %r12, -0x18(%rsp)    #  2     0x77405  5      
  movl %edi, %ebx           #  3     0x7740a  2      
  movq %r13, -0x10(%rsp)    #  4     0x7740c  5      
  movq %r14, -0x8(%rsp)     #  5     0x77411  5      
  subl $0x28, %esp          #  6     0x77416  3      
  addq %r15, %rsp           #  7     0x77419  3      
  movl %edx, %r13d          #  8     0x7741c  3      
  nop                       #  9     0x7741f  1      
  movl %esi, %r12d          #  10    0x77420  3      
  movl %ecx, %r14d          #  11    0x77423  3      
  nop                       #  12    0x77426  1      
  nop                       #  13    0x77427  1      
  callq .__nacl_read_tp     #  14    0x77428  5      
  leaq -0x480(%rax), %rax   #  15    0x7742d  7      
  movl %r14d, %r9d          #  16    0x77434  3      
  movl %r13d, %r8d          #  17    0x77437  3      
  movl %r12d, %edx          #  18    0x7743a  3      
  movl %ebx, %esi           #  19    0x7743d  2      
  movq 0x10(%rsp), %r12     #  20    0x7743f  5      
  movq 0x8(%rsp), %rbx      #  21    0x77444  5      
  nop                       #  22    0x77449  1      
  movq 0x18(%rsp), %r13     #  23    0x7744a  5      
  movl $0xffffffff, %ecx    #  24    0x7744f  5      
  movq 0x20(%rsp), %r14     #  25    0x77454  5      
  movl %eax, %eax           #  26    0x77459  2      
  movl (%r15,%rax,1), %edi  #  27    0x7745b  4      
  addl $0x28, %esp          #  28    0x7745f  3      
  addq %r15, %rsp           #  29    0x77462  3      
  jmpq ._wcsnrtombs_r       #  30    0x77465  5      
                                                     
.size wcsrtombs, .-wcsrtombs

