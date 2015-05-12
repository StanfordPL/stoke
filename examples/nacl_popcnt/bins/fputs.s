  .text
  .globl fputs
  .type fputs, @function

#! file-offset 0x68b80
#! rip-offset  0x68b80
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.fputs:                     #        0x68b80  0      
  movq %rbx, -0x10(%rsp)    #  1     0x68b80  5      
  movq %r12, -0x8(%rsp)     #  2     0x68b85  5      
  subl $0x18, %esp          #  3     0x68b8a  3      
  addq %r15, %rsp           #  4     0x68b8d  3      
  movl %edi, %ebx           #  5     0x68b90  2      
  movl %esi, %r12d          #  6     0x68b92  3      
  nop                       #  7     0x68b95  1      
  callq .__nacl_read_tp     #  8     0x68b96  5      
  leaq -0x480(%rax), %rax   #  9     0x68b9b  7      
  movl %r12d, %edx          #  10    0x68ba2  3      
  movl %ebx, %esi           #  11    0x68ba5  2      
  movq 0x10(%rsp), %r12     #  12    0x68ba7  5      
  movq 0x8(%rsp), %rbx      #  13    0x68bac  5      
  movl %eax, %eax           #  14    0x68bb1  2      
  movl (%r15,%rax,1), %edi  #  15    0x68bb3  4      
  nop                       #  16    0x68bb7  1      
  addl $0x18, %esp          #  17    0x68bb8  3      
  addq %r15, %rsp           #  18    0x68bbb  3      
  jmpq ._fputs_r            #  19    0x68bbe  5      
  nop                       #  20    0x68bc3  1      
  nop                       #  21    0x68bc4  1      
  nop                       #  22    0x68bc5  1      
  nop                       #  23    0x68bc6  1      
  nop                       #  24    0x68bc7  1      
  nop                       #  25    0x68bc8  1      
  nop                       #  26    0x68bc9  1      
  nop                       #  27    0x68bca  1      
  nop                       #  28    0x68bcb  1      
  nop                       #  29    0x68bcc  1      
  nop                       #  30    0x68bcd  1      
  nop                       #  31    0x68bce  1      
  nop                       #  32    0x68bcf  1      
  nop                       #  33    0x68bd0  1      
  nop                       #  34    0x68bd1  1      
  nop                       #  35    0x68bd2  1      
  nop                       #  36    0x68bd3  1      
  nop                       #  37    0x68bd4  1      
  nop                       #  38    0x68bd5  1      
  nop                       #  39    0x68bd6  1      
  nop                       #  40    0x68bd7  1      
                                                     
.size fputs, .-fputs

