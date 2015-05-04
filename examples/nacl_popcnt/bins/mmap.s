  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x679e0
#! rip-offset  0x679e0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.mmap:                        #        0x679e0  0      
  pushq %rbx                  #  1     0x679e0  2      
  subl $0x10, %esp            #  2     0x679e2  3      
  addq %r15, %rsp             #  3     0x679e5  3      
  movl 0xffcf47a(%rip), %eax  #  4     0x679e8  6      
  movl %edi, 0xc(%rsp)        #  5     0x679ee  4      
  leal 0xc(%rsp), %edi        #  6     0x679f2  4      
  nop                         #  7     0x679f6  1      
  andl $0xffffffe0, %eax      #  8     0x679f7  5      
  addq %r15, %rax             #  9     0x679fc  3      
  callq %rax                  #  10    0x679ff  2      
  testl %eax, %eax            #  11    0x67a01  2      
  movl %eax, %ebx             #  12    0x67a03  2      
  jne .L_67a20                #  13    0x67a05  6      
  movl 0xc(%rsp), %eax        #  14    0x67a0b  4      
  addl $0x10, %esp            #  15    0x67a0f  3      
  addq %r15, %rsp             #  16    0x67a12  3      
  popq %rbx                   #  17    0x67a15  2      
  popq %r11                   #  18    0x67a17  3      
  andl $0xffffffe0, %r11d     #  19    0x67a1a  7      
  addq %r15, %r11             #  20    0x67a21  3      
  jmpq %r11                   #  21    0x67a24  3      
  nop                         #  22    0x67a27  1      
.L_67a20:                     #        0x67a28  0      
  nop                         #  23    0x67a28  1      
  nop                         #  24    0x67a29  1      
  callq .__errno              #  25    0x67a2a  5      
  movl %eax, %eax             #  26    0x67a2f  2      
  movl %eax, %eax             #  27    0x67a31  2      
  movl %ebx, (%r15,%rax,1)    #  28    0x67a33  4      
  addl $0x10, %esp            #  29    0x67a37  3      
  addq %r15, %rsp             #  30    0x67a3a  3      
  movl $0xffffffff, %eax      #  31    0x67a3d  5      
  popq %rbx                   #  32    0x67a42  2      
  popq %r11                   #  33    0x67a44  3      
  andl $0xffffffe0, %r11d     #  34    0x67a47  7      
  addq %r15, %r11             #  35    0x67a4e  3      
  jmpq %r11                   #  36    0x67a51  3      
                                                       
.size mmap, .-mmap

