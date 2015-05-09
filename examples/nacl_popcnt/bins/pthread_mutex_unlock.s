  .text
  .globl pthread_mutex_unlock
  .type pthread_mutex_unlock, @function

#! file-offset 0x42500
#! rip-offset  0x42500
#! capacity    448 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_unlock:         #        0x42500  0      
  movl %edi, %edi              #  1     0x42500  2      
  subl $0x28, %esp             #  2     0x42502  3      
  addq %r15, %rsp              #  3     0x42505  3      
  movl %edi, %edi              #  4     0x42508  2      
  movl 0x4(%r15,%rdi,1), %eax  #  5     0x4250a  5      
  testl %eax, %eax             #  6     0x4250f  2      
  jne .L_425c0                 #  7     0x42511  6      
  nop                          #  8     0x42517  1      
.L_42520:                      #        0x42518  0      
  movl $0xffffffff, %eax       #  9     0x42518  5      
  movl %edi, %edi              #  10    0x4251d  2      
  lock                         #  11    0x4251f  1      
  xaddl %eax, (%r15,%rdi,1)    #  12    0x42520  5      
  cmpl $0x1, %eax              #  13    0x42525  3      
  jne .L_42580                 #  14    0x42528  6      
  nop                          #  15    0x4252e  1      
.L_42540:                      #        0x4252f  0      
  xorl %eax, %eax              #  16    0x4252f  2      
  nop                          #  17    0x42531  1      
  nop                          #  18    0x42532  1      
.L_42560:                      #        0x42533  0      
  addl $0x28, %esp             #  19    0x42533  3      
  addq %r15, %rsp              #  20    0x42536  3      
  popq %r11                    #  21    0x42539  3      
  andl $0xffffffe0, %r11d      #  22    0x4253c  7      
  addq %r15, %r11              #  23    0x42543  3      
  jmpq %r11                    #  24    0x42546  3      
  nop                          #  25    0x42549  1      
.L_42580:                      #        0x4254a  0      
  testl %eax, %eax             #  26    0x4254a  2      
  jne .L_42600                 #  27    0x4254c  6      
  nop                          #  28    0x42552  1      
  nop                          #  29    0x42553  1      
.L_425a0:                      #        0x42554  0      
  movl $0x1, %eax              #  30    0x42554  5      
  jmpq .L_42560                #  31    0x42559  5      
  nop                          #  32    0x4255e  1      
  nop                          #  33    0x4255f  1      
.L_425c0:                      #        0x42560  0      
  cmpl $0x1, %eax              #  34    0x42560  3      
  je .L_42660                  #  35    0x42563  6      
  cmpl $0x2, %eax              #  36    0x42569  3      
  je .L_42680                  #  37    0x4256c  6      
  nop                          #  38    0x42572  1      
.L_425e0:                      #        0x42573  0      
  movl %edi, %edi              #  39    0x42573  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  40    0x42575  9      
  movl %edi, %edi              #  41    0x4257e  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  42    0x42580  9      
  jmpq .L_42520                #  43    0x42589  5      
  nop                          #  44    0x4258e  1      
.L_42600:                      #        0x4258f  0      
  movl 0xfff484d(%rip), %eax   #  45    0x4258f  6      
  movl %edi, %edi              #  46    0x42595  2      
  movl $0x0, (%r15,%rdi,1)     #  47    0x42597  8      
  leal 0x1c(%rsp), %edx        #  48    0x4259f  4      
  movl $0x1, %esi              #  49    0x425a3  5      
  nop                          #  50    0x425a8  1      
  nop                          #  51    0x425a9  1      
  nop                          #  52    0x425aa  1      
  andl $0xffffffe0, %eax       #  53    0x425ab  5      
  addq %r15, %rax              #  54    0x425b0  3      
  callq %rax                   #  55    0x425b3  2      
  xorl %eax, %eax              #  56    0x425b5  2      
  jmpq .L_42560                #  57    0x425b7  5      
  nop                          #  58    0x425bc  1      
  nop                          #  59    0x425bd  1      
.L_42660:                      #        0x425be  0      
  movl %edi, %edi              #  60    0x425be  2      
  movl 0xc(%r15,%rdi,1), %eax  #  61    0x425c0  5      
  subl $0x1, %eax              #  62    0x425c5  3      
  testl %eax, %eax             #  63    0x425c8  2      
  movl %edi, %edi              #  64    0x425ca  2      
  movl %eax, 0xc(%r15,%rdi,1)  #  65    0x425cc  5      
  je .L_425e0                  #  66    0x425d1  6      
  jmpq .L_42540                #  67    0x425d7  5      
  xchgw %ax, %ax               #  68    0x425dc  3      
.L_42680:                      #        0x425df  0      
  movq %rdi, 0x8(%rsp)         #  69    0x425df  5      
  nop                          #  70    0x425e4  1      
  nop                          #  71    0x425e5  1      
  callq .pthread_self          #  72    0x425e6  5      
  movq 0x8(%rsp), %rdi         #  73    0x425eb  5      
  movl %edi, %edi              #  74    0x425f0  2      
  movl 0x8(%r15,%rdi,1), %edx  #  75    0x425f2  5      
  cmpl %eax, %edx              #  76    0x425f7  2      
  jne .L_425a0                 #  77    0x425f9  6      
  jmpq .L_425e0                #  78    0x425ff  5      
  nop                          #  79    0x42604  1      
                                                        
.size pthread_mutex_unlock, .-pthread_mutex_unlock

