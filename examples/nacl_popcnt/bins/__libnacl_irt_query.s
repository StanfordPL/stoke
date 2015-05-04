  .text
  .globl __libnacl_irt_query
  .type __libnacl_irt_query, @function

#! file-offset 0x67740
#! rip-offset  0x67740
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.__libnacl_irt_query:         #        0x67740  0      
  movq %rbx, -0x10(%rsp)      #  1     0x67740  5      
  movq %r12, -0x8(%rsp)       #  2     0x67745  5      
  subl $0x28, %esp            #  3     0x6774a  3      
  addq %r15, %rsp             #  4     0x6774d  3      
  movl 0xffcf6aa(%rip), %eax  #  5     0x67750  6      
  movl %edx, %ebx             #  6     0x67756  2      
  movl %edi, %r12d            #  7     0x67758  3      
  movl %esi, %esi             #  8     0x6775b  2      
  testq %rax, %rax            #  9     0x6775d  3      
  je .L_677e0                 #  10    0x67760  6      
  nop                         #  11    0x67766  1      
  nop                         #  12    0x67767  1      
.L_67780:                     #        0x67768  0      
  movl %ebx, %edx             #  13    0x67768  2      
  movl %r12d, %edi            #  14    0x6776a  3      
  nop                         #  15    0x6776d  1      
  nop                         #  16    0x6776e  1      
  andl $0xffffffe0, %eax      #  17    0x6776f  5      
  addq %r15, %rax             #  18    0x67774  3      
  callq %rax                  #  19    0x67777  2      
  cmpl %eax, %ebx             #  20    0x67779  2      
  movq 0x20(%rsp), %r12       #  21    0x6777b  5      
  movq 0x18(%rsp), %rbx       #  22    0x67780  5      
  sete %al                    #  23    0x67785  3      
  addl $0x28, %esp            #  24    0x67788  3      
  addq %r15, %rsp             #  25    0x6778b  3      
  popq %r11                   #  26    0x6778e  3      
  movzbl %al, %eax            #  27    0x67791  3      
  nop                         #  28    0x67794  1      
  andl $0xffffffe0, %r11d     #  29    0x67795  7      
  addq %r15, %r11             #  30    0x6779c  3      
  jmpq %r11                   #  31    0x6779f  3      
  nop                         #  32    0x677a2  1      
  nop                         #  33    0x677a3  1      
.L_677e0:                     #        0x677a4  0      
  movl $0x100233a8, %edi      #  34    0x677a4  5      
  movq %rsi, 0x8(%rsp)        #  35    0x677a9  5      
  xchgw %ax, %ax              #  36    0x677ae  3      
  nop                         #  37    0x677b1  1      
  callq .__libnacl_fatal      #  38    0x677b2  5      
  movl 0xffcf643(%rip), %eax  #  39    0x677b7  6      
  movq 0x8(%rsp), %rsi        #  40    0x677bd  5      
  jmpq .L_67780               #  41    0x677c2  5      
  nop                         #  42    0x677c7  1      
  nop                         #  43    0x677c8  1      
                                                       
.size __libnacl_irt_query, .-__libnacl_irt_query

