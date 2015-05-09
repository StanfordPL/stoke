  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x773e0
#! rip-offset  0x773e0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.wcsrtombs:                 #        0x773e0  0      
  movq %rbx, -0x20(%rsp)    #  1     0x773e0  5      
  movq %r12, -0x18(%rsp)    #  2     0x773e5  5      
  movl %edi, %ebx           #  3     0x773ea  2      
  movq %r13, -0x10(%rsp)    #  4     0x773ec  5      
  movq %r14, -0x8(%rsp)     #  5     0x773f1  5      
  subl $0x28, %esp          #  6     0x773f6  3      
  addq %r15, %rsp           #  7     0x773f9  3      
  movl %edx, %r13d          #  8     0x773fc  3      
  nop                       #  9     0x773ff  1      
  movl %esi, %r12d          #  10    0x77400  3      
  movl %ecx, %r14d          #  11    0x77403  3      
  nop                       #  12    0x77406  1      
  nop                       #  13    0x77407  1      
  callq .__nacl_read_tp     #  14    0x77408  5      
  leaq -0x480(%rax), %rax   #  15    0x7740d  7      
  movl %r14d, %r9d          #  16    0x77414  3      
  movl %r13d, %r8d          #  17    0x77417  3      
  movl %r12d, %edx          #  18    0x7741a  3      
  movl %ebx, %esi           #  19    0x7741d  2      
  movq 0x10(%rsp), %r12     #  20    0x7741f  5      
  movq 0x8(%rsp), %rbx      #  21    0x77424  5      
  nop                       #  22    0x77429  1      
  movq 0x18(%rsp), %r13     #  23    0x7742a  5      
  movl $0xffffffff, %ecx    #  24    0x7742f  5      
  movq 0x20(%rsp), %r14     #  25    0x77434  5      
  movl %eax, %eax           #  26    0x77439  2      
  movl (%r15,%rax,1), %edi  #  27    0x7743b  4      
  addl $0x28, %esp          #  28    0x7743f  3      
  addq %r15, %rsp           #  29    0x77442  3      
  jmpq ._wcsnrtombs_r       #  30    0x77445  5      
                                                     
.size wcsrtombs, .-wcsrtombs

