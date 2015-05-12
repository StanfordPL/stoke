  .text
  .globl _ZN2pp3VarC2Ev
  .type _ZN2pp3VarC2Ev, @function

#! file-offset 0x29f20
#! rip-offset  0x29f20
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC2Ev:                   #        0x29f20  0      
  movl %edi, %edi                  #  1     0x29f20  2      
  leal 0x8(%rdi), %eax             #  2     0x29f22  3      
  movl %edi, %edi                  #  3     0x29f25  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29f27  8      
  movl %edi, %edi                  #  5     0x29f2f  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  6     0x29f31  6      
  nop                              #  7     0x29f37  1      
  movl %eax, %eax                  #  8     0x29f38  2      
  movq $0x0, (%r15,%rax,1)         #  9     0x29f3a  8      
  movl %eax, %eax                  #  10    0x29f42  2      
  movq $0x0, 0x8(%r15,%rax,1)      #  11    0x29f44  9      
  popq %r11                        #  12    0x29f4d  3      
  nop                              #  13    0x29f50  1      
  movl %edi, %edi                  #  14    0x29f51  2      
  movl $0x0, 0x8(%r15,%rdi,1)      #  15    0x29f53  9      
  andl $0xffffffe0, %r11d          #  16    0x29f5c  7      
  addq %r15, %r11                  #  17    0x29f63  3      
  jmpq %r11                        #  18    0x29f66  3      
  nop                              #  19    0x29f69  1      
  nop                              #  20    0x29f6a  1      
                                                            
.size _ZN2pp3VarC2Ev, .-_ZN2pp3VarC2Ev

