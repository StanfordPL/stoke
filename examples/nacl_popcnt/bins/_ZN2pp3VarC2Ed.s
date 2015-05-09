  .text
  .globl _ZN2pp3VarC2Ed
  .type _ZN2pp3VarC2Ed, @function

#! file-offset 0x29ac0
#! rip-offset  0x29ac0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC2Ed:                   #        0x29ac0  0      
  popq %r11                        #  1     0x29ac0  3      
  movl %edi, %edi                  #  2     0x29ac3  2      
  movl %edi, %edi                  #  3     0x29ac5  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29ac7  8      
  movl %edi, %edi                  #  5     0x29acf  2      
  movl $0x4, 0x8(%r15,%rdi,1)      #  6     0x29ad1  9      
  nop                              #  7     0x29ada  1      
  movl %edi, %edi                  #  8     0x29adb  2      
  movsd %xmm0, 0x10(%r15,%rdi,1)   #  9     0x29add  7      
  movl %edi, %edi                  #  10    0x29ae4  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  11    0x29ae6  9      
  movl %edi, %edi                  #  12    0x29aef  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  13    0x29af1  6      
  nop                              #  14    0x29af7  1      
  andl $0xffffffe0, %r11d          #  15    0x29af8  7      
  addq %r15, %r11                  #  16    0x29aff  3      
  jmpq %r11                        #  17    0x29b02  3      
  nop                              #  18    0x29b05  1      
  nop                              #  19    0x29b06  1      
                                                            
.size _ZN2pp3VarC2Ed, .-_ZN2pp3VarC2Ed

