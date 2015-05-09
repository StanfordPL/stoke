  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x697e0
#! rip-offset  0x697e0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.getenv:                    #        0x697e0  0      
  movq %rbx, -0x10(%rsp)    #  1     0x697e0  5      
  movq %r12, -0x8(%rsp)     #  2     0x697e5  5      
  subl $0x28, %esp          #  3     0x697ea  3      
  addq %r15, %rsp           #  4     0x697ed  3      
  movl %edi, %ebx           #  5     0x697f0  2      
  leal 0xc(%rsp), %r12d     #  6     0x697f2  5      
  nop                       #  7     0x697f7  1      
  callq .__nacl_read_tp     #  8     0x697f8  5      
  leaq -0x480(%rax), %rax   #  9     0x697fd  7      
  movl %r12d, %edx          #  10    0x69804  3      
  movl %ebx, %esi           #  11    0x69807  2      
  movl %eax, %eax           #  12    0x69809  2      
  movl (%r15,%rax,1), %edi  #  13    0x6980b  4      
  nop                       #  14    0x6980f  1      
  callq ._findenv_r         #  15    0x69810  5      
  movq 0x18(%rsp), %rbx     #  16    0x69815  5      
  movq 0x20(%rsp), %r12     #  17    0x6981a  5      
  addl $0x28, %esp          #  18    0x6981f  3      
  addq %r15, %rsp           #  19    0x69822  3      
  popq %r11                 #  20    0x69825  3      
  movl %eax, %eax           #  21    0x69828  2      
  andl $0xffffffe0, %r11d   #  22    0x6982a  7      
  addq %r15, %r11           #  23    0x69831  3      
  jmpq %r11                 #  24    0x69834  3      
  xchgw %ax, %ax            #  25    0x69837  3      
                                                     
.size getenv, .-getenv

