  .text
  .globl _ZN2pp8ResourceC1Ev
  .type _ZN2pp8ResourceC1Ev, @function

#! file-offset 0x26c60
#! rip-offset  0x26c60
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1Ev:              #        0x26c60  0      
  popq %r11                        #  1     0x26c60  3      
  movl %edi, %edi                  #  2     0x26c63  2      
  movl %edi, %edi                  #  3     0x26c65  2      
  movl $0x10020458, (%r15,%rdi,1)  #  4     0x26c67  8      
  movl %edi, %edi                  #  5     0x26c6f  2      
  movl $0x0, 0x4(%r15,%rdi,1)      #  6     0x26c71  9      
  nop                              #  7     0x26c7a  1      
  andl $0xffffffe0, %r11d          #  8     0x26c7b  7      
  addq %r15, %r11                  #  9     0x26c82  3      
  jmpq %r11                        #  10    0x26c85  3      
  nop                              #  11    0x26c88  1      
  nop                              #  12    0x26c89  1      
                                                            
.size _ZN2pp8ResourceC1Ev, .-_ZN2pp8ResourceC1Ev

