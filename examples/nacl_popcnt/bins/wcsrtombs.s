  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x77480
#! rip-offset  0x77480
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.wcsrtombs:                 #        0x77480  0      
  movq %rbx, -0x20(%rsp)    #  1     0x77480  5      
  movq %r12, -0x18(%rsp)    #  2     0x77485  5      
  movl %edi, %ebx           #  3     0x7748a  2      
  movq %r13, -0x10(%rsp)    #  4     0x7748c  5      
  movq %r14, -0x8(%rsp)     #  5     0x77491  5      
  subl $0x28, %esp          #  6     0x77496  3      
  addq %r15, %rsp           #  7     0x77499  3      
  movl %edx, %r13d          #  8     0x7749c  3      
  nop                       #  9     0x7749f  1      
  movl %esi, %r12d          #  10    0x774a0  3      
  movl %ecx, %r14d          #  11    0x774a3  3      
  nop                       #  12    0x774a6  1      
  nop                       #  13    0x774a7  1      
  callq .__nacl_read_tp     #  14    0x774a8  5      
  leaq -0x480(%rax), %rax   #  15    0x774ad  7      
  movl %r14d, %r9d          #  16    0x774b4  3      
  movl %r13d, %r8d          #  17    0x774b7  3      
  movl %r12d, %edx          #  18    0x774ba  3      
  movl %ebx, %esi           #  19    0x774bd  2      
  movq 0x10(%rsp), %r12     #  20    0x774bf  5      
  movq 0x8(%rsp), %rbx      #  21    0x774c4  5      
  nop                       #  22    0x774c9  1      
  movq 0x18(%rsp), %r13     #  23    0x774ca  5      
  movl $0xffffffff, %ecx    #  24    0x774cf  5      
  movq 0x20(%rsp), %r14     #  25    0x774d4  5      
  movl %eax, %eax           #  26    0x774d9  2      
  movl (%r15,%rax,1), %edi  #  27    0x774db  4      
  addl $0x28, %esp          #  28    0x774df  3      
  addq %r15, %rsp           #  29    0x774e2  3      
  jmpq ._wcsnrtombs_r       #  30    0x774e5  5      
                                                     
.size wcsrtombs, .-wcsrtombs

