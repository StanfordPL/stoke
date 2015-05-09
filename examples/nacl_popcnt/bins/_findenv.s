  .text
  .globl _findenv
  .type _findenv, @function

#! file-offset 0x69840
#! rip-offset  0x69840
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
._findenv:                  #        0x69840  0      
  movq %rbx, -0x10(%rsp)    #  1     0x69840  5      
  movq %r12, -0x8(%rsp)     #  2     0x69845  5      
  subl $0x18, %esp          #  3     0x6984a  3      
  addq %r15, %rsp           #  4     0x6984d  3      
  movl %edi, %ebx           #  5     0x69850  2      
  movl %esi, %r12d          #  6     0x69852  3      
  nop                       #  7     0x69855  1      
  callq .__nacl_read_tp     #  8     0x69856  5      
  leaq -0x480(%rax), %rax   #  9     0x6985b  7      
  movl %r12d, %edx          #  10    0x69862  3      
  movl %ebx, %esi           #  11    0x69865  2      
  movq 0x10(%rsp), %r12     #  12    0x69867  5      
  movq 0x8(%rsp), %rbx      #  13    0x6986c  5      
  movl %eax, %eax           #  14    0x69871  2      
  movl (%r15,%rax,1), %edi  #  15    0x69873  4      
  nop                       #  16    0x69877  1      
  addl $0x18, %esp          #  17    0x69878  3      
  addq %r15, %rsp           #  18    0x6987b  3      
  jmpq ._findenv_r          #  19    0x6987e  5      
  nop                       #  20    0x69883  1      
  nop                       #  21    0x69884  1      
  nop                       #  22    0x69885  1      
  nop                       #  23    0x69886  1      
  nop                       #  24    0x69887  1      
  nop                       #  25    0x69888  1      
  nop                       #  26    0x69889  1      
  nop                       #  27    0x6988a  1      
  nop                       #  28    0x6988b  1      
  nop                       #  29    0x6988c  1      
  nop                       #  30    0x6988d  1      
  nop                       #  31    0x6988e  1      
  nop                       #  32    0x6988f  1      
  nop                       #  33    0x69890  1      
  nop                       #  34    0x69891  1      
  nop                       #  35    0x69892  1      
  nop                       #  36    0x69893  1      
  nop                       #  37    0x69894  1      
  nop                       #  38    0x69895  1      
  nop                       #  39    0x69896  1      
  nop                       #  40    0x69897  1      
                                                     
.size _findenv, .-_findenv

