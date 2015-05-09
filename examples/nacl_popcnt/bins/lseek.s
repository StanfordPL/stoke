  .text
  .globl lseek
  .type lseek, @function

#! file-offset 0x883e0
#! rip-offset  0x883e0
#! capacity    160 bytes

# Text                            #  Line  RIP      Bytes  
.lseek:                           #        0x883e0  0      
  pushq %rbx                      #  1     0x883e0  2      
  subl $0x10, %esp                #  2     0x883e2  3      
  addq %r15, %rsp                 #  3     0x883e5  3      
  movl 0xffa8126(%rip), %eax      #  4     0x883e8  6      
  leal 0x8(%rsp), %ecx            #  5     0x883ee  4      
  nop                             #  6     0x883f2  1      
  andl $0xffffffe0, %eax          #  7     0x883f3  5      
  addq %r15, %rax                 #  8     0x883f8  3      
  callq %rax                      #  9     0x883fb  2      
  testl %eax, %eax                #  10    0x883fd  2      
  movl %eax, %ebx                 #  11    0x883ff  2      
  jne .L_88440                    #  12    0x88401  6      
  movq 0x8(%rsp), %rax            #  13    0x88407  5      
  nop                             #  14    0x8840c  1      
  nop                             #  15    0x8840d  1      
.L_88420:                         #        0x8840e  0      
  addl $0x10, %esp                #  16    0x8840e  3      
  addq %r15, %rsp                 #  17    0x88411  3      
  popq %rbx                       #  18    0x88414  2      
  popq %r11                       #  19    0x88416  3      
  andl $0xffffffe0, %r11d         #  20    0x88419  7      
  addq %r15, %r11                 #  21    0x88420  3      
  jmpq %r11                       #  22    0x88423  3      
  nop                             #  23    0x88426  1      
.L_88440:                         #        0x88427  0      
  nop                             #  24    0x88427  1      
  nop                             #  25    0x88428  1      
  callq .__errno                  #  26    0x88429  5      
  movl %eax, %eax                 #  27    0x8842e  2      
  movl %eax, %eax                 #  28    0x88430  2      
  movl %ebx, (%r15,%rax,1)        #  29    0x88432  4      
  movq $0xffffffffffffffff, %rax  #  30    0x88436  7      
  jmpq .L_88420                   #  31    0x8843d  5      
  nop                             #  32    0x88442  1      
  nop                             #  33    0x88443  1      
  nop                             #  34    0x88444  1      
  nop                             #  35    0x88445  1      
  nop                             #  36    0x88446  1      
  nop                             #  37    0x88447  1      
  nop                             #  38    0x88448  1      
  nop                             #  39    0x88449  1      
  nop                             #  40    0x8844a  1      
  nop                             #  41    0x8844b  1      
  nop                             #  42    0x8844c  1      
  nop                             #  43    0x8844d  1      
  nop                             #  44    0x8844e  1      
  nop                             #  45    0x8844f  1      
  nop                             #  46    0x88450  1      
                                                           
.size lseek, .-lseek

