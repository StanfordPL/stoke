  .text
  .globl _ZN2pp8ResourceC1Ev
  .type _ZN2pp8ResourceC1Ev, @function

#! file-offset 0x26bc0
#! rip-offset  0x26bc0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1Ev:              #        0x26bc0  0      
  popq %r11                        #  1     0x26bc0  3      
  movl %edi, %edi                  #  2     0x26bc3  2      
  movl %edi, %edi                  #  3     0x26bc5  2      
  movl $0x10020458, (%r15,%rdi,1)  #  4     0x26bc7  8      
  movl %edi, %edi                  #  5     0x26bcf  2      
  movl $0x0, 0x4(%r15,%rdi,1)      #  6     0x26bd1  9      
  nop                              #  7     0x26bda  1      
  andl $0xffffffe0, %r11d          #  8     0x26bdb  7      
  addq %r15, %r11                  #  9     0x26be2  3      
  jmpq %r11                        #  10    0x26be5  3      
  nop                              #  11    0x26be8  1      
  nop                              #  12    0x26be9  1      
                                                            
.size _ZN2pp8ResourceC1Ev, .-_ZN2pp8ResourceC1Ev

