  .text
  .globl _ZN2pp3VarC1Ed
  .type _ZN2pp3VarC1Ed, @function

#! file-offset 0x29b20
#! rip-offset  0x29b20
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC1Ed:                   #        0x29b20  0      
  popq %r11                        #  1     0x29b20  3      
  movl %edi, %edi                  #  2     0x29b23  2      
  movl %edi, %edi                  #  3     0x29b25  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29b27  8      
  movl %edi, %edi                  #  5     0x29b2f  2      
  movl $0x4, 0x8(%r15,%rdi,1)      #  6     0x29b31  9      
  nop                              #  7     0x29b3a  1      
  movl %edi, %edi                  #  8     0x29b3b  2      
  movsd %xmm0, 0x10(%r15,%rdi,1)   #  9     0x29b3d  7      
  movl %edi, %edi                  #  10    0x29b44  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  11    0x29b46  9      
  movl %edi, %edi                  #  12    0x29b4f  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  13    0x29b51  6      
  nop                              #  14    0x29b57  1      
  andl $0xffffffe0, %r11d          #  15    0x29b58  7      
  addq %r15, %r11                  #  16    0x29b5f  3      
  jmpq %r11                        #  17    0x29b62  3      
  nop                              #  18    0x29b65  1      
  nop                              #  19    0x29b66  1      
                                                            
.size _ZN2pp3VarC1Ed, .-_ZN2pp3VarC1Ed

