  .text
  .globl _ZN2pp8Resource6detachEv
  .type _ZN2pp8Resource6detachEv, @function

#! file-offset 0x26ca0
#! rip-offset  0x26ca0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZN2pp8Resource6detachEv:     #        0x26ca0  0      
  popq %r11                    #  1     0x26ca0  3      
  movl %edi, %edi              #  2     0x26ca3  2      
  movl %edi, %edi              #  3     0x26ca5  2      
  movl 0x4(%r15,%rdi,1), %eax  #  4     0x26ca7  5      
  movl %edi, %edi              #  5     0x26cac  2      
  movl $0x0, 0x4(%r15,%rdi,1)  #  6     0x26cae  9      
  andl $0xffffffe0, %r11d      #  7     0x26cb7  7      
  addq %r15, %r11              #  8     0x26cbe  3      
  jmpq %r11                    #  9     0x26cc1  3      
                                                        
.size _ZN2pp8Resource6detachEv, .-_ZN2pp8Resource6detachEv

