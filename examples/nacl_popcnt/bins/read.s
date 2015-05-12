  .text
  .globl read
  .type read, @function

#! file-offset 0x884a0
#! rip-offset  0x884a0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.read:                        #        0x884a0  0      
  pushq %rbx                  #  1     0x884a0  2      
  movl %esi, %esi             #  2     0x884a2  2      
  subl $0x10, %esp            #  3     0x884a4  3      
  addq %r15, %rsp             #  4     0x884a7  3      
  movl 0xffa805c(%rip), %eax  #  5     0x884aa  6      
  leal 0xc(%rsp), %ecx        #  6     0x884b0  4      
  nop                         #  7     0x884b4  1      
  andl $0xffffffe0, %eax      #  8     0x884b5  5      
  addq %r15, %rax             #  9     0x884ba  3      
  callq %rax                  #  10    0x884bd  2      
  testl %eax, %eax            #  11    0x884bf  2      
  movl %eax, %ebx             #  12    0x884c1  2      
  jne .L_88500                #  13    0x884c3  6      
  movl 0xc(%rsp), %eax        #  14    0x884c9  4      
  nop                         #  15    0x884cd  1      
  nop                         #  16    0x884ce  1      
.L_884e0:                     #        0x884cf  0      
  addl $0x10, %esp            #  17    0x884cf  3      
  addq %r15, %rsp             #  18    0x884d2  3      
  popq %rbx                   #  19    0x884d5  2      
  popq %r11                   #  20    0x884d7  3      
  andl $0xffffffe0, %r11d     #  21    0x884da  7      
  addq %r15, %r11             #  22    0x884e1  3      
  jmpq %r11                   #  23    0x884e4  3      
  nop                         #  24    0x884e7  1      
.L_88500:                     #        0x884e8  0      
  nop                         #  25    0x884e8  1      
  nop                         #  26    0x884e9  1      
  callq .__errno              #  27    0x884ea  5      
  movl %eax, %eax             #  28    0x884ef  2      
  movl %eax, %eax             #  29    0x884f1  2      
  movl %ebx, (%r15,%rax,1)    #  30    0x884f3  4      
  movl $0xffffffff, %eax      #  31    0x884f7  5      
  jmpq .L_884e0               #  32    0x884fc  5      
  nop                         #  33    0x88501  1      
  nop                         #  34    0x88502  1      
  nop                         #  35    0x88503  1      
  nop                         #  36    0x88504  1      
  nop                         #  37    0x88505  1      
  nop                         #  38    0x88506  1      
  nop                         #  39    0x88507  1      
  nop                         #  40    0x88508  1      
  nop                         #  41    0x88509  1      
  nop                         #  42    0x8850a  1      
  nop                         #  43    0x8850b  1      
  nop                         #  44    0x8850c  1      
  nop                         #  45    0x8850d  1      
  nop                         #  46    0x8850e  1      
  nop                         #  47    0x8850f  1      
  nop                         #  48    0x88510  1      
  nop                         #  49    0x88511  1      
                                                       
.size read, .-read

