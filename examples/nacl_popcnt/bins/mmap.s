  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x67960
#! rip-offset  0x67960
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.mmap:                        #        0x67960  0      
  pushq %rbx                  #  1     0x67960  2      
  subl $0x10, %esp            #  2     0x67962  3      
  addq %r15, %rsp             #  3     0x67965  3      
  movl 0xffcf4fa(%rip), %eax  #  4     0x67968  6      
  movl %edi, 0xc(%rsp)        #  5     0x6796e  4      
  leal 0xc(%rsp), %edi        #  6     0x67972  4      
  nop                         #  7     0x67976  1      
  andl $0xffffffe0, %eax      #  8     0x67977  5      
  addq %r15, %rax             #  9     0x6797c  3      
  callq %rax                  #  10    0x6797f  2      
  testl %eax, %eax            #  11    0x67981  2      
  movl %eax, %ebx             #  12    0x67983  2      
  jne .L_679a0                #  13    0x67985  6      
  movl 0xc(%rsp), %eax        #  14    0x6798b  4      
  addl $0x10, %esp            #  15    0x6798f  3      
  addq %r15, %rsp             #  16    0x67992  3      
  popq %rbx                   #  17    0x67995  2      
  popq %r11                   #  18    0x67997  3      
  andl $0xffffffe0, %r11d     #  19    0x6799a  7      
  addq %r15, %r11             #  20    0x679a1  3      
  jmpq %r11                   #  21    0x679a4  3      
  nop                         #  22    0x679a7  1      
.L_679a0:                     #        0x679a8  0      
  nop                         #  23    0x679a8  1      
  nop                         #  24    0x679a9  1      
  callq .__errno              #  25    0x679aa  5      
  movl %eax, %eax             #  26    0x679af  2      
  movl %eax, %eax             #  27    0x679b1  2      
  movl %ebx, (%r15,%rax,1)    #  28    0x679b3  4      
  addl $0x10, %esp            #  29    0x679b7  3      
  addq %r15, %rsp             #  30    0x679ba  3      
  movl $0xffffffff, %eax      #  31    0x679bd  5      
  popq %rbx                   #  32    0x679c2  2      
  popq %r11                   #  33    0x679c4  3      
  andl $0xffffffe0, %r11d     #  34    0x679c7  7      
  addq %r15, %r11             #  35    0x679ce  3      
  jmpq %r11                   #  36    0x679d1  3      
                                                       
.size mmap, .-mmap

