  .text
  .globl _ZN2pp3VarC1Ed
  .type _ZN2pp3VarC1Ed, @function

#! file-offset 0x29b40
#! rip-offset  0x29b40
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC1Ed:                   #        0x29b40  0      
  popq %r11                        #  1     0x29b40  3      
  movl %edi, %edi                  #  2     0x29b43  2      
  movl %edi, %edi                  #  3     0x29b45  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29b47  8      
  movl %edi, %edi                  #  5     0x29b4f  2      
  movl $0x4, 0x8(%r15,%rdi,1)      #  6     0x29b51  9      
  nop                              #  7     0x29b5a  1      
  movl %edi, %edi                  #  8     0x29b5b  2      
  movsd %xmm0, 0x10(%r15,%rdi,1)   #  9     0x29b5d  7      
  movl %edi, %edi                  #  10    0x29b64  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  11    0x29b66  9      
  movl %edi, %edi                  #  12    0x29b6f  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  13    0x29b71  6      
  nop                              #  14    0x29b77  1      
  andl $0xffffffe0, %r11d          #  15    0x29b78  7      
  addq %r15, %r11                  #  16    0x29b7f  3      
  jmpq %r11                        #  17    0x29b82  3      
  nop                              #  18    0x29b85  1      
  nop                              #  19    0x29b86  1      
                                                            
.size _ZN2pp3VarC1Ed, .-_ZN2pp3VarC1Ed

