  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x41d60
#! rip-offset  0x41d60
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.pulse:                       #        0x41d60  0      
  subl $0x18, %esp            #  1     0x41d60  3      
  addq %r15, %rsp             #  2     0x41d63  3      
  movl %edi, %edi             #  3     0x41d66  2      
  movl %edi, %edi             #  4     0x41d68  2      
  lock                        #  5     0x41d6a  1      
  addl $0x1, (%r15,%rdi,1)    #  6     0x41d6b  5      
  movl 0xfff506e(%rip), %eax  #  7     0x41d70  6      
  leal 0xc(%rsp), %edx        #  8     0x41d76  4      
  nop                         #  9     0x41d7a  1      
  nop                         #  10    0x41d7b  1      
  nop                         #  11    0x41d7c  1      
  andl $0xffffffe0, %eax      #  12    0x41d7d  5      
  addq %r15, %rax             #  13    0x41d82  3      
  callq %rax                  #  14    0x41d85  2      
  addl $0x18, %esp            #  15    0x41d87  3      
  addq %r15, %rsp             #  16    0x41d8a  3      
  xorl %eax, %eax             #  17    0x41d8d  2      
  popq %r11                   #  18    0x41d8f  3      
  andl $0xffffffe0, %r11d     #  19    0x41d92  7      
  addq %r15, %r11             #  20    0x41d99  3      
  jmpq %r11                   #  21    0x41d9c  3      
  nop                         #  22    0x41d9f  1      
                                                       
.size pulse, .-pulse

