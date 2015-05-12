  .text
  .globl pthread_mutex_unlock
  .type pthread_mutex_unlock, @function

#! file-offset 0x42520
#! rip-offset  0x42520
#! capacity    448 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_unlock:         #        0x42520  0      
  movl %edi, %edi              #  1     0x42520  2      
  subl $0x28, %esp             #  2     0x42522  3      
  addq %r15, %rsp              #  3     0x42525  3      
  movl %edi, %edi              #  4     0x42528  2      
  movl 0x4(%r15,%rdi,1), %eax  #  5     0x4252a  5      
  testl %eax, %eax             #  6     0x4252f  2      
  jne .L_425e0                 #  7     0x42531  6      
  nop                          #  8     0x42537  1      
.L_42540:                      #        0x42538  0      
  movl $0xffffffff, %eax       #  9     0x42538  5      
  movl %edi, %edi              #  10    0x4253d  2      
  lock                         #  11    0x4253f  1      
  xaddl %eax, (%r15,%rdi,1)    #  12    0x42540  5      
  cmpl $0x1, %eax              #  13    0x42545  3      
  jne .L_425a0                 #  14    0x42548  6      
  nop                          #  15    0x4254e  1      
.L_42560:                      #        0x4254f  0      
  xorl %eax, %eax              #  16    0x4254f  2      
  nop                          #  17    0x42551  1      
  nop                          #  18    0x42552  1      
.L_42580:                      #        0x42553  0      
  addl $0x28, %esp             #  19    0x42553  3      
  addq %r15, %rsp              #  20    0x42556  3      
  popq %r11                    #  21    0x42559  3      
  andl $0xffffffe0, %r11d      #  22    0x4255c  7      
  addq %r15, %r11              #  23    0x42563  3      
  jmpq %r11                    #  24    0x42566  3      
  nop                          #  25    0x42569  1      
.L_425a0:                      #        0x4256a  0      
  testl %eax, %eax             #  26    0x4256a  2      
  jne .L_42620                 #  27    0x4256c  6      
  nop                          #  28    0x42572  1      
  nop                          #  29    0x42573  1      
.L_425c0:                      #        0x42574  0      
  movl $0x1, %eax              #  30    0x42574  5      
  jmpq .L_42580                #  31    0x42579  5      
  nop                          #  32    0x4257e  1      
  nop                          #  33    0x4257f  1      
.L_425e0:                      #        0x42580  0      
  cmpl $0x1, %eax              #  34    0x42580  3      
  je .L_42680                  #  35    0x42583  6      
  cmpl $0x2, %eax              #  36    0x42589  3      
  je .L_426a0                  #  37    0x4258c  6      
  nop                          #  38    0x42592  1      
.L_42600:                      #        0x42593  0      
  movl %edi, %edi              #  39    0x42593  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  40    0x42595  9      
  movl %edi, %edi              #  41    0x4259e  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  42    0x425a0  9      
  jmpq .L_42540                #  43    0x425a9  5      
  nop                          #  44    0x425ae  1      
.L_42620:                      #        0x425af  0      
  movl 0xfff482d(%rip), %eax   #  45    0x425af  6      
  movl %edi, %edi              #  46    0x425b5  2      
  movl $0x0, (%r15,%rdi,1)     #  47    0x425b7  8      
  leal 0x1c(%rsp), %edx        #  48    0x425bf  4      
  movl $0x1, %esi              #  49    0x425c3  5      
  nop                          #  50    0x425c8  1      
  nop                          #  51    0x425c9  1      
  nop                          #  52    0x425ca  1      
  andl $0xffffffe0, %eax       #  53    0x425cb  5      
  addq %r15, %rax              #  54    0x425d0  3      
  callq %rax                   #  55    0x425d3  2      
  xorl %eax, %eax              #  56    0x425d5  2      
  jmpq .L_42580                #  57    0x425d7  5      
  nop                          #  58    0x425dc  1      
  nop                          #  59    0x425dd  1      
.L_42680:                      #        0x425de  0      
  movl %edi, %edi              #  60    0x425de  2      
  movl 0xc(%r15,%rdi,1), %eax  #  61    0x425e0  5      
  subl $0x1, %eax              #  62    0x425e5  3      
  testl %eax, %eax             #  63    0x425e8  2      
  movl %edi, %edi              #  64    0x425ea  2      
  movl %eax, 0xc(%r15,%rdi,1)  #  65    0x425ec  5      
  je .L_42600                  #  66    0x425f1  6      
  jmpq .L_42560                #  67    0x425f7  5      
  xchgw %ax, %ax               #  68    0x425fc  3      
.L_426a0:                      #        0x425ff  0      
  movq %rdi, 0x8(%rsp)         #  69    0x425ff  5      
  nop                          #  70    0x42604  1      
  nop                          #  71    0x42605  1      
  callq .pthread_self          #  72    0x42606  5      
  movq 0x8(%rsp), %rdi         #  73    0x4260b  5      
  movl %edi, %edi              #  74    0x42610  2      
  movl 0x8(%r15,%rdi,1), %edx  #  75    0x42612  5      
  cmpl %eax, %edx              #  76    0x42617  2      
  jne .L_425c0                 #  77    0x42619  6      
  jmpq .L_42600                #  78    0x4261f  5      
  nop                          #  79    0x42624  1      
                                                        
.size pthread_mutex_unlock, .-pthread_mutex_unlock

