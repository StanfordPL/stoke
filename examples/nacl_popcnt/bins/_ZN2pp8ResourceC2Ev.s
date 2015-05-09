  .text
  .globl _ZN2pp8ResourceC2Ev
  .type _ZN2pp8ResourceC2Ev, @function

#! file-offset 0x26b80
#! rip-offset  0x26b80
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC2Ev:              #        0x26b80  0      
  popq %r11                        #  1     0x26b80  3      
  movl %edi, %edi                  #  2     0x26b83  2      
  movl %edi, %edi                  #  3     0x26b85  2      
  movl $0x10020458, (%r15,%rdi,1)  #  4     0x26b87  8      
  movl %edi, %edi                  #  5     0x26b8f  2      
  movl $0x0, 0x4(%r15,%rdi,1)      #  6     0x26b91  9      
  nop                              #  7     0x26b9a  1      
  andl $0xffffffe0, %r11d          #  8     0x26b9b  7      
  addq %r15, %r11                  #  9     0x26ba2  3      
  jmpq %r11                        #  10    0x26ba5  3      
  nop                              #  11    0x26ba8  1      
  nop                              #  12    0x26ba9  1      
                                                            
.size _ZN2pp8ResourceC2Ev, .-_ZN2pp8ResourceC2Ev

