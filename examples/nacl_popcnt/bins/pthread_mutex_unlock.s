  .text
  .globl pthread_mutex_unlock
  .type pthread_mutex_unlock, @function

#! file-offset 0x425a0
#! rip-offset  0x425a0
#! capacity    448 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_unlock:         #        0x425a0  0      
  movl %edi, %edi              #  1     0x425a0  2      
  subl $0x28, %esp             #  2     0x425a2  3      
  addq %r15, %rsp              #  3     0x425a5  3      
  movl %edi, %edi              #  4     0x425a8  2      
  movl 0x4(%r15,%rdi,1), %eax  #  5     0x425aa  5      
  testl %eax, %eax             #  6     0x425af  2      
  jne .L_42660                 #  7     0x425b1  6      
  nop                          #  8     0x425b7  1      
.L_425c0:                      #        0x425b8  0      
  movl $0xffffffff, %eax       #  9     0x425b8  5      
  movl %edi, %edi              #  10    0x425bd  2      
  lock                         #  11    0x425bf  1      
  xaddl %eax, (%r15,%rdi,1)    #  12    0x425c0  5      
  cmpl $0x1, %eax              #  13    0x425c5  3      
  jne .L_42620                 #  14    0x425c8  6      
  nop                          #  15    0x425ce  1      
.L_425e0:                      #        0x425cf  0      
  xorl %eax, %eax              #  16    0x425cf  2      
  nop                          #  17    0x425d1  1      
  nop                          #  18    0x425d2  1      
.L_42600:                      #        0x425d3  0      
  addl $0x28, %esp             #  19    0x425d3  3      
  addq %r15, %rsp              #  20    0x425d6  3      
  popq %r11                    #  21    0x425d9  3      
  andl $0xffffffe0, %r11d      #  22    0x425dc  7      
  addq %r15, %r11              #  23    0x425e3  3      
  jmpq %r11                    #  24    0x425e6  3      
  nop                          #  25    0x425e9  1      
.L_42620:                      #        0x425ea  0      
  testl %eax, %eax             #  26    0x425ea  2      
  jne .L_426a0                 #  27    0x425ec  6      
  nop                          #  28    0x425f2  1      
  nop                          #  29    0x425f3  1      
.L_42640:                      #        0x425f4  0      
  movl $0x1, %eax              #  30    0x425f4  5      
  jmpq .L_42600                #  31    0x425f9  5      
  nop                          #  32    0x425fe  1      
  nop                          #  33    0x425ff  1      
.L_42660:                      #        0x42600  0      
  cmpl $0x1, %eax              #  34    0x42600  3      
  je .L_42700                  #  35    0x42603  6      
  cmpl $0x2, %eax              #  36    0x42609  3      
  je .L_42720                  #  37    0x4260c  6      
  nop                          #  38    0x42612  1      
.L_42680:                      #        0x42613  0      
  movl %edi, %edi              #  39    0x42613  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  40    0x42615  9      
  movl %edi, %edi              #  41    0x4261e  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  42    0x42620  9      
  jmpq .L_425c0                #  43    0x42629  5      
  nop                          #  44    0x4262e  1      
.L_426a0:                      #        0x4262f  0      
  movl 0xfff47ad(%rip), %eax   #  45    0x4262f  6      
  movl %edi, %edi              #  46    0x42635  2      
  movl $0x0, (%r15,%rdi,1)     #  47    0x42637  8      
  leal 0x1c(%rsp), %edx        #  48    0x4263f  4      
  movl $0x1, %esi              #  49    0x42643  5      
  nop                          #  50    0x42648  1      
  nop                          #  51    0x42649  1      
  nop                          #  52    0x4264a  1      
  andl $0xffffffe0, %eax       #  53    0x4264b  5      
  addq %r15, %rax              #  54    0x42650  3      
  callq %rax                   #  55    0x42653  2      
  xorl %eax, %eax              #  56    0x42655  2      
  jmpq .L_42600                #  57    0x42657  5      
  nop                          #  58    0x4265c  1      
  nop                          #  59    0x4265d  1      
.L_42700:                      #        0x4265e  0      
  movl %edi, %edi              #  60    0x4265e  2      
  movl 0xc(%r15,%rdi,1), %eax  #  61    0x42660  5      
  subl $0x1, %eax              #  62    0x42665  3      
  testl %eax, %eax             #  63    0x42668  2      
  movl %edi, %edi              #  64    0x4266a  2      
  movl %eax, 0xc(%r15,%rdi,1)  #  65    0x4266c  5      
  je .L_42680                  #  66    0x42671  6      
  jmpq .L_425e0                #  67    0x42677  5      
  xchgw %ax, %ax               #  68    0x4267c  3      
.L_42720:                      #        0x4267f  0      
  movq %rdi, 0x8(%rsp)         #  69    0x4267f  5      
  nop                          #  70    0x42684  1      
  nop                          #  71    0x42685  1      
  callq .pthread_self          #  72    0x42686  5      
  movq 0x8(%rsp), %rdi         #  73    0x4268b  5      
  movl %edi, %edi              #  74    0x42690  2      
  movl 0x8(%r15,%rdi,1), %edx  #  75    0x42692  5      
  cmpl %eax, %edx              #  76    0x42697  2      
  jne .L_42640                 #  77    0x42699  6      
  jmpq .L_42680                #  78    0x4269f  5      
  nop                          #  79    0x426a4  1      
                                                        
.size pthread_mutex_unlock, .-pthread_mutex_unlock

