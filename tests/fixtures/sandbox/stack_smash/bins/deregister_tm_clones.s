  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x430
#! rip-offset  0x400430
#! capacity    48 bytes

# Text                  #  Line  RIP       Bytes  
.deregister_tm_clones:  #        0x400430  0      
  movl $0x60103f, %eax  #  1     0x400430  5      
  pushq %rbp            #  2     0x400435  2      
  subq $0x601038, %rax  #  3     0x400437  6      
  cmpq $0xe, %rax       #  4     0x40043d  4      
  movq %rsp, %rbp       #  5     0x400441  3      
  ja .L_400447          #  6     0x400444  6      
.L_400445:              #        0x40044a  0      
  popq %rbp             #  7     0x40044a  2      
  retq                  #  8     0x40044c  1      
.L_400447:              #        0x40044d  0      
  movl $0x0, %eax       #  9     0x40044d  5      
  testq %rax, %rax      #  10    0x400452  3      
  je .L_400445          #  11    0x400455  6      
  popq %rbp             #  12    0x40045b  2      
  movl $0x601038, %edi  #  13    0x40045d  5      
  jmpq %rax             #  14    0x400462  2      
  nop                   #  15    0x400464  1      
                                                  
.size deregister_tm_clones, .-deregister_tm_clones

