  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x69880
#! rip-offset  0x69880
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.getenv:                    #        0x69880  0      
  movq %rbx, -0x10(%rsp)    #  1     0x69880  5      
  movq %r12, -0x8(%rsp)     #  2     0x69885  5      
  subl $0x28, %esp          #  3     0x6988a  3      
  addq %r15, %rsp           #  4     0x6988d  3      
  movl %edi, %ebx           #  5     0x69890  2      
  leal 0xc(%rsp), %r12d     #  6     0x69892  5      
  nop                       #  7     0x69897  1      
  callq .__nacl_read_tp     #  8     0x69898  5      
  leaq -0x480(%rax), %rax   #  9     0x6989d  7      
  movl %r12d, %edx          #  10    0x698a4  3      
  movl %ebx, %esi           #  11    0x698a7  2      
  movl %eax, %eax           #  12    0x698a9  2      
  movl (%r15,%rax,1), %edi  #  13    0x698ab  4      
  nop                       #  14    0x698af  1      
  callq ._findenv_r         #  15    0x698b0  5      
  movq 0x18(%rsp), %rbx     #  16    0x698b5  5      
  movq 0x20(%rsp), %r12     #  17    0x698ba  5      
  addl $0x28, %esp          #  18    0x698bf  3      
  addq %r15, %rsp           #  19    0x698c2  3      
  popq %r11                 #  20    0x698c5  3      
  movl %eax, %eax           #  21    0x698c8  2      
  andl $0xffffffe0, %r11d   #  22    0x698ca  7      
  addq %r15, %r11           #  23    0x698d1  3      
  jmpq %r11                 #  24    0x698d4  3      
  xchgw %ax, %ax            #  25    0x698d7  3      
                                                     
.size getenv, .-getenv

