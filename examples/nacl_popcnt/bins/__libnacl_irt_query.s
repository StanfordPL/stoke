  .text
  .globl __libnacl_irt_query
  .type __libnacl_irt_query, @function

#! file-offset 0x676c0
#! rip-offset  0x676c0
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.__libnacl_irt_query:         #        0x676c0  0      
  movq %rbx, -0x10(%rsp)      #  1     0x676c0  5      
  movq %r12, -0x8(%rsp)       #  2     0x676c5  5      
  subl $0x28, %esp            #  3     0x676ca  3      
  addq %r15, %rsp             #  4     0x676cd  3      
  movl 0xffcf72a(%rip), %eax  #  5     0x676d0  6      
  movl %edx, %ebx             #  6     0x676d6  2      
  movl %edi, %r12d            #  7     0x676d8  3      
  movl %esi, %esi             #  8     0x676db  2      
  testq %rax, %rax            #  9     0x676dd  3      
  je .L_67760                 #  10    0x676e0  6      
  nop                         #  11    0x676e6  1      
  nop                         #  12    0x676e7  1      
.L_67700:                     #        0x676e8  0      
  movl %ebx, %edx             #  13    0x676e8  2      
  movl %r12d, %edi            #  14    0x676ea  3      
  nop                         #  15    0x676ed  1      
  nop                         #  16    0x676ee  1      
  andl $0xffffffe0, %eax      #  17    0x676ef  5      
  addq %r15, %rax             #  18    0x676f4  3      
  callq %rax                  #  19    0x676f7  2      
  cmpl %eax, %ebx             #  20    0x676f9  2      
  movq 0x20(%rsp), %r12       #  21    0x676fb  5      
  movq 0x18(%rsp), %rbx       #  22    0x67700  5      
  sete %al                    #  23    0x67705  3      
  addl $0x28, %esp            #  24    0x67708  3      
  addq %r15, %rsp             #  25    0x6770b  3      
  popq %r11                   #  26    0x6770e  3      
  movzbl %al, %eax            #  27    0x67711  3      
  nop                         #  28    0x67714  1      
  andl $0xffffffe0, %r11d     #  29    0x67715  7      
  addq %r15, %r11             #  30    0x6771c  3      
  jmpq %r11                   #  31    0x6771f  3      
  nop                         #  32    0x67722  1      
  nop                         #  33    0x67723  1      
.L_67760:                     #        0x67724  0      
  movl $0x100233a8, %edi      #  34    0x67724  5      
  movq %rsi, 0x8(%rsp)        #  35    0x67729  5      
  xchgw %ax, %ax              #  36    0x6772e  3      
  nop                         #  37    0x67731  1      
  callq .__libnacl_fatal      #  38    0x67732  5      
  movl 0xffcf6c3(%rip), %eax  #  39    0x67737  6      
  movq 0x8(%rsp), %rsi        #  40    0x6773d  5      
  jmpq .L_67700               #  41    0x67742  5      
  nop                         #  42    0x67747  1      
  nop                         #  43    0x67748  1      
                                                       
.size __libnacl_irt_query, .-__libnacl_irt_query

