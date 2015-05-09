  .text
  .globl __libnacl_irt_query
  .type __libnacl_irt_query, @function

#! file-offset 0x676a0
#! rip-offset  0x676a0
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.__libnacl_irt_query:         #        0x676a0  0      
  movq %rbx, -0x10(%rsp)      #  1     0x676a0  5      
  movq %r12, -0x8(%rsp)       #  2     0x676a5  5      
  subl $0x28, %esp            #  3     0x676aa  3      
  addq %r15, %rsp             #  4     0x676ad  3      
  movl 0xffcf74a(%rip), %eax  #  5     0x676b0  6      
  movl %edx, %ebx             #  6     0x676b6  2      
  movl %edi, %r12d            #  7     0x676b8  3      
  movl %esi, %esi             #  8     0x676bb  2      
  testq %rax, %rax            #  9     0x676bd  3      
  je .L_67740                 #  10    0x676c0  6      
  nop                         #  11    0x676c6  1      
  nop                         #  12    0x676c7  1      
.L_676e0:                     #        0x676c8  0      
  movl %ebx, %edx             #  13    0x676c8  2      
  movl %r12d, %edi            #  14    0x676ca  3      
  nop                         #  15    0x676cd  1      
  nop                         #  16    0x676ce  1      
  andl $0xffffffe0, %eax      #  17    0x676cf  5      
  addq %r15, %rax             #  18    0x676d4  3      
  callq %rax                  #  19    0x676d7  2      
  cmpl %eax, %ebx             #  20    0x676d9  2      
  movq 0x20(%rsp), %r12       #  21    0x676db  5      
  movq 0x18(%rsp), %rbx       #  22    0x676e0  5      
  sete %al                    #  23    0x676e5  3      
  addl $0x28, %esp            #  24    0x676e8  3      
  addq %r15, %rsp             #  25    0x676eb  3      
  popq %r11                   #  26    0x676ee  3      
  movzbl %al, %eax            #  27    0x676f1  3      
  nop                         #  28    0x676f4  1      
  andl $0xffffffe0, %r11d     #  29    0x676f5  7      
  addq %r15, %r11             #  30    0x676fc  3      
  jmpq %r11                   #  31    0x676ff  3      
  nop                         #  32    0x67702  1      
  nop                         #  33    0x67703  1      
.L_67740:                     #        0x67704  0      
  movl $0x100233a8, %edi      #  34    0x67704  5      
  movq %rsi, 0x8(%rsp)        #  35    0x67709  5      
  xchgw %ax, %ax              #  36    0x6770e  3      
  nop                         #  37    0x67711  1      
  callq .__libnacl_fatal      #  38    0x67712  5      
  movl 0xffcf6e3(%rip), %eax  #  39    0x67717  6      
  movq 0x8(%rsp), %rsi        #  40    0x6771d  5      
  jmpq .L_676e0               #  41    0x67722  5      
  nop                         #  42    0x67727  1      
  nop                         #  43    0x67728  1      
                                                       
.size __libnacl_irt_query, .-__libnacl_irt_query

