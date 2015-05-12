  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x41d80
#! rip-offset  0x41d80
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.pulse:                       #        0x41d80  0      
  subl $0x18, %esp            #  1     0x41d80  3      
  addq %r15, %rsp             #  2     0x41d83  3      
  movl %edi, %edi             #  3     0x41d86  2      
  movl %edi, %edi             #  4     0x41d88  2      
  lock                        #  5     0x41d8a  1      
  addl $0x1, (%r15,%rdi,1)    #  6     0x41d8b  5      
  movl 0xfff504e(%rip), %eax  #  7     0x41d90  6      
  leal 0xc(%rsp), %edx        #  8     0x41d96  4      
  nop                         #  9     0x41d9a  1      
  nop                         #  10    0x41d9b  1      
  nop                         #  11    0x41d9c  1      
  andl $0xffffffe0, %eax      #  12    0x41d9d  5      
  addq %r15, %rax             #  13    0x41da2  3      
  callq %rax                  #  14    0x41da5  2      
  addl $0x18, %esp            #  15    0x41da7  3      
  addq %r15, %rsp             #  16    0x41daa  3      
  xorl %eax, %eax             #  17    0x41dad  2      
  popq %r11                   #  18    0x41daf  3      
  andl $0xffffffe0, %r11d     #  19    0x41db2  7      
  addq %r15, %r11             #  20    0x41db9  3      
  jmpq %r11                   #  21    0x41dbc  3      
  nop                         #  22    0x41dbf  1      
                                                       
.size pulse, .-pulse

