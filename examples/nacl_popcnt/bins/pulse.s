  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x41e00
#! rip-offset  0x41e00
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.pulse:                       #        0x41e00  0      
  subl $0x18, %esp            #  1     0x41e00  3      
  addq %r15, %rsp             #  2     0x41e03  3      
  movl %edi, %edi             #  3     0x41e06  2      
  movl %edi, %edi             #  4     0x41e08  2      
  lock                        #  5     0x41e0a  1      
  addl $0x1, (%r15,%rdi,1)    #  6     0x41e0b  5      
  movl 0xfff4fce(%rip), %eax  #  7     0x41e10  6      
  leal 0xc(%rsp), %edx        #  8     0x41e16  4      
  nop                         #  9     0x41e1a  1      
  nop                         #  10    0x41e1b  1      
  nop                         #  11    0x41e1c  1      
  andl $0xffffffe0, %eax      #  12    0x41e1d  5      
  addq %r15, %rax             #  13    0x41e22  3      
  callq %rax                  #  14    0x41e25  2      
  addl $0x18, %esp            #  15    0x41e27  3      
  addq %r15, %rsp             #  16    0x41e2a  3      
  xorl %eax, %eax             #  17    0x41e2d  2      
  popq %r11                   #  18    0x41e2f  3      
  andl $0xffffffe0, %r11d     #  19    0x41e32  7      
  addq %r15, %r11             #  20    0x41e39  3      
  jmpq %r11                   #  21    0x41e3c  3      
  nop                         #  22    0x41e3f  1      
                                                       
.size pulse, .-pulse

