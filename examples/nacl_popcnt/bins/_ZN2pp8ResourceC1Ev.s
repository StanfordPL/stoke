  .text
  .globl _ZN2pp8ResourceC1Ev
  .type _ZN2pp8ResourceC1Ev, @function

#! file-offset 0x26be0
#! rip-offset  0x26be0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1Ev:              #        0x26be0  0      
  popq %r11                        #  1     0x26be0  3      
  movl %edi, %edi                  #  2     0x26be3  2      
  movl %edi, %edi                  #  3     0x26be5  2      
  movl $0x10020458, (%r15,%rdi,1)  #  4     0x26be7  8      
  movl %edi, %edi                  #  5     0x26bef  2      
  movl $0x0, 0x4(%r15,%rdi,1)      #  6     0x26bf1  9      
  nop                              #  7     0x26bfa  1      
  andl $0xffffffe0, %r11d          #  8     0x26bfb  7      
  addq %r15, %r11                  #  9     0x26c02  3      
  jmpq %r11                        #  10    0x26c05  3      
  nop                              #  11    0x26c08  1      
  nop                              #  12    0x26c09  1      
                                                            
.size _ZN2pp8ResourceC1Ev, .-_ZN2pp8ResourceC1Ev

