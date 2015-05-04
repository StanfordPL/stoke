  .text
  .globl read
  .type read, @function

#! file-offset 0x88520
#! rip-offset  0x88520
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.read:                        #        0x88520  0      
  pushq %rbx                  #  1     0x88520  2      
  movl %esi, %esi             #  2     0x88522  2      
  subl $0x10, %esp            #  3     0x88524  3      
  addq %r15, %rsp             #  4     0x88527  3      
  movl 0xffa7fdc(%rip), %eax  #  5     0x8852a  6      
  leal 0xc(%rsp), %ecx        #  6     0x88530  4      
  nop                         #  7     0x88534  1      
  andl $0xffffffe0, %eax      #  8     0x88535  5      
  addq %r15, %rax             #  9     0x8853a  3      
  callq %rax                  #  10    0x8853d  2      
  testl %eax, %eax            #  11    0x8853f  2      
  movl %eax, %ebx             #  12    0x88541  2      
  jne .L_88580                #  13    0x88543  6      
  movl 0xc(%rsp), %eax        #  14    0x88549  4      
  nop                         #  15    0x8854d  1      
  nop                         #  16    0x8854e  1      
.L_88560:                     #        0x8854f  0      
  addl $0x10, %esp            #  17    0x8854f  3      
  addq %r15, %rsp             #  18    0x88552  3      
  popq %rbx                   #  19    0x88555  2      
  popq %r11                   #  20    0x88557  3      
  andl $0xffffffe0, %r11d     #  21    0x8855a  7      
  addq %r15, %r11             #  22    0x88561  3      
  jmpq %r11                   #  23    0x88564  3      
  nop                         #  24    0x88567  1      
.L_88580:                     #        0x88568  0      
  nop                         #  25    0x88568  1      
  nop                         #  26    0x88569  1      
  callq .__errno              #  27    0x8856a  5      
  movl %eax, %eax             #  28    0x8856f  2      
  movl %eax, %eax             #  29    0x88571  2      
  movl %ebx, (%r15,%rax,1)    #  30    0x88573  4      
  movl $0xffffffff, %eax      #  31    0x88577  5      
  jmpq .L_88560               #  32    0x8857c  5      
  nop                         #  33    0x88581  1      
  nop                         #  34    0x88582  1      
  nop                         #  35    0x88583  1      
  nop                         #  36    0x88584  1      
  nop                         #  37    0x88585  1      
  nop                         #  38    0x88586  1      
  nop                         #  39    0x88587  1      
  nop                         #  40    0x88588  1      
  nop                         #  41    0x88589  1      
  nop                         #  42    0x8858a  1      
  nop                         #  43    0x8858b  1      
  nop                         #  44    0x8858c  1      
  nop                         #  45    0x8858d  1      
  nop                         #  46    0x8858e  1      
  nop                         #  47    0x8858f  1      
  nop                         #  48    0x88590  1      
  nop                         #  49    0x88591  1      
                                                       
.size read, .-read

