  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x879c0
#! rip-offset  0x879c0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.wcsnrtombs:                #        0x879c0  0      
  movl %r8d, %r9d           #  1     0x879c0  3      
  movq %rbx, -0x20(%rsp)    #  2     0x879c3  5      
  movq %r12, -0x18(%rsp)    #  3     0x879c8  5      
  movq %r13, -0x10(%rsp)    #  4     0x879cd  5      
  movq %r14, -0x8(%rsp)     #  5     0x879d2  5      
  subl $0x38, %esp          #  6     0x879d7  3      
  addq %r15, %rsp           #  7     0x879da  3      
  movl %edx, %r13d          #  8     0x879dd  3      
  movl %ecx, %r14d          #  9     0x879e0  3      
  movl %edi, %ebx           #  10    0x879e3  2      
  movl %esi, %r12d          #  11    0x879e5  3      
  movq %r9, 0x8(%rsp)       #  12    0x879e8  5      
  nop                       #  13    0x879ed  1      
  callq .__nacl_read_tp     #  14    0x879ee  5      
  leaq -0x480(%rax), %rax   #  15    0x879f3  7      
  movq 0x8(%rsp), %r9       #  16    0x879fa  5      
  movl %r14d, %r8d          #  17    0x879ff  3      
  movl %r13d, %ecx          #  18    0x87a02  3      
  movl %r12d, %edx          #  19    0x87a05  3      
  movl %ebx, %esi           #  20    0x87a08  2      
  movq 0x20(%rsp), %r12     #  21    0x87a0a  5      
  nop                       #  22    0x87a0f  1      
  movq 0x18(%rsp), %rbx     #  23    0x87a10  5      
  movq 0x28(%rsp), %r13     #  24    0x87a15  5      
  movq 0x30(%rsp), %r14     #  25    0x87a1a  5      
  movl %eax, %eax           #  26    0x87a1f  2      
  movl (%r15,%rax,1), %edi  #  27    0x87a21  4      
  addl $0x38, %esp          #  28    0x87a25  3      
  addq %r15, %rsp           #  29    0x87a28  3      
  jmpq ._wcsnrtombs_r       #  30    0x87a2b  5      
                                                     
.size wcsnrtombs, .-wcsnrtombs

