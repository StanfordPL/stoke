  .text
  .globl fputs
  .type fputs, @function

#! file-offset 0x68c00
#! rip-offset  0x68c00
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.fputs:                     #        0x68c00  0      
  movq %rbx, -0x10(%rsp)    #  1     0x68c00  5      
  movq %r12, -0x8(%rsp)     #  2     0x68c05  5      
  subl $0x18, %esp          #  3     0x68c0a  3      
  addq %r15, %rsp           #  4     0x68c0d  3      
  movl %edi, %ebx           #  5     0x68c10  2      
  movl %esi, %r12d          #  6     0x68c12  3      
  nop                       #  7     0x68c15  1      
  callq .__nacl_read_tp     #  8     0x68c16  5      
  leaq -0x480(%rax), %rax   #  9     0x68c1b  7      
  movl %r12d, %edx          #  10    0x68c22  3      
  movl %ebx, %esi           #  11    0x68c25  2      
  movq 0x10(%rsp), %r12     #  12    0x68c27  5      
  movq 0x8(%rsp), %rbx      #  13    0x68c2c  5      
  movl %eax, %eax           #  14    0x68c31  2      
  movl (%r15,%rax,1), %edi  #  15    0x68c33  4      
  nop                       #  16    0x68c37  1      
  addl $0x18, %esp          #  17    0x68c38  3      
  addq %r15, %rsp           #  18    0x68c3b  3      
  jmpq ._fputs_r            #  19    0x68c3e  5      
  nop                       #  20    0x68c43  1      
  nop                       #  21    0x68c44  1      
  nop                       #  22    0x68c45  1      
  nop                       #  23    0x68c46  1      
  nop                       #  24    0x68c47  1      
  nop                       #  25    0x68c48  1      
  nop                       #  26    0x68c49  1      
  nop                       #  27    0x68c4a  1      
  nop                       #  28    0x68c4b  1      
  nop                       #  29    0x68c4c  1      
  nop                       #  30    0x68c4d  1      
  nop                       #  31    0x68c4e  1      
  nop                       #  32    0x68c4f  1      
  nop                       #  33    0x68c50  1      
  nop                       #  34    0x68c51  1      
  nop                       #  35    0x68c52  1      
  nop                       #  36    0x68c53  1      
  nop                       #  37    0x68c54  1      
  nop                       #  38    0x68c55  1      
  nop                       #  39    0x68c56  1      
  nop                       #  40    0x68c57  1      
                                                     
.size fputs, .-fputs

