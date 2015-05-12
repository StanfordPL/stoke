  .text
  .globl _ZN2pp8Resource6detachEv
  .type _ZN2pp8Resource6detachEv, @function

#! file-offset 0x26c20
#! rip-offset  0x26c20
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZN2pp8Resource6detachEv:     #        0x26c20  0      
  popq %r11                    #  1     0x26c20  3      
  movl %edi, %edi              #  2     0x26c23  2      
  movl %edi, %edi              #  3     0x26c25  2      
  movl 0x4(%r15,%rdi,1), %eax  #  4     0x26c27  5      
  movl %edi, %edi              #  5     0x26c2c  2      
  movl $0x0, 0x4(%r15,%rdi,1)  #  6     0x26c2e  9      
  andl $0xffffffe0, %r11d      #  7     0x26c37  7      
  addq %r15, %r11              #  8     0x26c3e  3      
  jmpq %r11                    #  9     0x26c41  3      
                                                        
.size _ZN2pp8Resource6detachEv, .-_ZN2pp8Resource6detachEv

