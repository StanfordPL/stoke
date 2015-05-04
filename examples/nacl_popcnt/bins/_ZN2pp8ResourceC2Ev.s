  .text
  .globl _ZN2pp8ResourceC2Ev
  .type _ZN2pp8ResourceC2Ev, @function

#! file-offset 0x26c20
#! rip-offset  0x26c20
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC2Ev:              #        0x26c20  0      
  popq %r11                        #  1     0x26c20  3      
  movl %edi, %edi                  #  2     0x26c23  2      
  movl %edi, %edi                  #  3     0x26c25  2      
  movl $0x10020458, (%r15,%rdi,1)  #  4     0x26c27  8      
  movl %edi, %edi                  #  5     0x26c2f  2      
  movl $0x0, 0x4(%r15,%rdi,1)      #  6     0x26c31  9      
  nop                              #  7     0x26c3a  1      
  andl $0xffffffe0, %r11d          #  8     0x26c3b  7      
  addq %r15, %r11                  #  9     0x26c42  3      
  jmpq %r11                        #  10    0x26c45  3      
  nop                              #  11    0x26c48  1      
  nop                              #  12    0x26c49  1      
                                                            
.size _ZN2pp8ResourceC2Ev, .-_ZN2pp8ResourceC2Ev

