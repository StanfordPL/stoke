  .text
  .globl lseek
  .type lseek, @function

#! file-offset 0x88400
#! rip-offset  0x88400
#! capacity    160 bytes

# Text                            #  Line  RIP      Bytes  
.lseek:                           #        0x88400  0      
  pushq %rbx                      #  1     0x88400  2      
  subl $0x10, %esp                #  2     0x88402  3      
  addq %r15, %rsp                 #  3     0x88405  3      
  movl 0xffa8106(%rip), %eax      #  4     0x88408  6      
  leal 0x8(%rsp), %ecx            #  5     0x8840e  4      
  nop                             #  6     0x88412  1      
  andl $0xffffffe0, %eax          #  7     0x88413  5      
  addq %r15, %rax                 #  8     0x88418  3      
  callq %rax                      #  9     0x8841b  2      
  testl %eax, %eax                #  10    0x8841d  2      
  movl %eax, %ebx                 #  11    0x8841f  2      
  jne .L_88460                    #  12    0x88421  6      
  movq 0x8(%rsp), %rax            #  13    0x88427  5      
  nop                             #  14    0x8842c  1      
  nop                             #  15    0x8842d  1      
.L_88440:                         #        0x8842e  0      
  addl $0x10, %esp                #  16    0x8842e  3      
  addq %r15, %rsp                 #  17    0x88431  3      
  popq %rbx                       #  18    0x88434  2      
  popq %r11                       #  19    0x88436  3      
  andl $0xffffffe0, %r11d         #  20    0x88439  7      
  addq %r15, %r11                 #  21    0x88440  3      
  jmpq %r11                       #  22    0x88443  3      
  nop                             #  23    0x88446  1      
.L_88460:                         #        0x88447  0      
  nop                             #  24    0x88447  1      
  nop                             #  25    0x88448  1      
  callq .__errno                  #  26    0x88449  5      
  movl %eax, %eax                 #  27    0x8844e  2      
  movl %eax, %eax                 #  28    0x88450  2      
  movl %ebx, (%r15,%rax,1)        #  29    0x88452  4      
  movq $0xffffffffffffffff, %rax  #  30    0x88456  7      
  jmpq .L_88440                   #  31    0x8845d  5      
  nop                             #  32    0x88462  1      
  nop                             #  33    0x88463  1      
  nop                             #  34    0x88464  1      
  nop                             #  35    0x88465  1      
  nop                             #  36    0x88466  1      
  nop                             #  37    0x88467  1      
  nop                             #  38    0x88468  1      
  nop                             #  39    0x88469  1      
  nop                             #  40    0x8846a  1      
  nop                             #  41    0x8846b  1      
  nop                             #  42    0x8846c  1      
  nop                             #  43    0x8846d  1      
  nop                             #  44    0x8846e  1      
  nop                             #  45    0x8846f  1      
  nop                             #  46    0x88470  1      
                                                           
.size lseek, .-lseek

