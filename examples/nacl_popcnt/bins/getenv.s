  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x69800
#! rip-offset  0x69800
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.getenv:                    #        0x69800  0      
  movq %rbx, -0x10(%rsp)    #  1     0x69800  5      
  movq %r12, -0x8(%rsp)     #  2     0x69805  5      
  subl $0x28, %esp          #  3     0x6980a  3      
  addq %r15, %rsp           #  4     0x6980d  3      
  movl %edi, %ebx           #  5     0x69810  2      
  leal 0xc(%rsp), %r12d     #  6     0x69812  5      
  nop                       #  7     0x69817  1      
  callq .__nacl_read_tp     #  8     0x69818  5      
  leaq -0x480(%rax), %rax   #  9     0x6981d  7      
  movl %r12d, %edx          #  10    0x69824  3      
  movl %ebx, %esi           #  11    0x69827  2      
  movl %eax, %eax           #  12    0x69829  2      
  movl (%r15,%rax,1), %edi  #  13    0x6982b  4      
  nop                       #  14    0x6982f  1      
  callq ._findenv_r         #  15    0x69830  5      
  movq 0x18(%rsp), %rbx     #  16    0x69835  5      
  movq 0x20(%rsp), %r12     #  17    0x6983a  5      
  addl $0x28, %esp          #  18    0x6983f  3      
  addq %r15, %rsp           #  19    0x69842  3      
  popq %r11                 #  20    0x69845  3      
  movl %eax, %eax           #  21    0x69848  2      
  andl $0xffffffe0, %r11d   #  22    0x6984a  7      
  addq %r15, %r11           #  23    0x69851  3      
  jmpq %r11                 #  24    0x69854  3      
  xchgw %ax, %ax            #  25    0x69857  3      
                                                     
.size getenv, .-getenv

