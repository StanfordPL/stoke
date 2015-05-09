  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x67940
#! rip-offset  0x67940
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.mmap:                        #        0x67940  0      
  pushq %rbx                  #  1     0x67940  2      
  subl $0x10, %esp            #  2     0x67942  3      
  addq %r15, %rsp             #  3     0x67945  3      
  movl 0xffcf51a(%rip), %eax  #  4     0x67948  6      
  movl %edi, 0xc(%rsp)        #  5     0x6794e  4      
  leal 0xc(%rsp), %edi        #  6     0x67952  4      
  nop                         #  7     0x67956  1      
  andl $0xffffffe0, %eax      #  8     0x67957  5      
  addq %r15, %rax             #  9     0x6795c  3      
  callq %rax                  #  10    0x6795f  2      
  testl %eax, %eax            #  11    0x67961  2      
  movl %eax, %ebx             #  12    0x67963  2      
  jne .L_67980                #  13    0x67965  6      
  movl 0xc(%rsp), %eax        #  14    0x6796b  4      
  addl $0x10, %esp            #  15    0x6796f  3      
  addq %r15, %rsp             #  16    0x67972  3      
  popq %rbx                   #  17    0x67975  2      
  popq %r11                   #  18    0x67977  3      
  andl $0xffffffe0, %r11d     #  19    0x6797a  7      
  addq %r15, %r11             #  20    0x67981  3      
  jmpq %r11                   #  21    0x67984  3      
  nop                         #  22    0x67987  1      
.L_67980:                     #        0x67988  0      
  nop                         #  23    0x67988  1      
  nop                         #  24    0x67989  1      
  callq .__errno              #  25    0x6798a  5      
  movl %eax, %eax             #  26    0x6798f  2      
  movl %eax, %eax             #  27    0x67991  2      
  movl %ebx, (%r15,%rax,1)    #  28    0x67993  4      
  addl $0x10, %esp            #  29    0x67997  3      
  addq %r15, %rsp             #  30    0x6799a  3      
  movl $0xffffffff, %eax      #  31    0x6799d  5      
  popq %rbx                   #  32    0x679a2  2      
  popq %r11                   #  33    0x679a4  3      
  andl $0xffffffe0, %r11d     #  34    0x679a7  7      
  addq %r15, %r11             #  35    0x679ae  3      
  jmpq %r11                   #  36    0x679b1  3      
                                                       
.size mmap, .-mmap

