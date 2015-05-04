  .text
  .globl _ZN2pp3VarC1Ev
  .type _ZN2pp3VarC1Ev, @function

#! file-offset 0x29f40
#! rip-offset  0x29f40
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC1Ev:                   #        0x29f40  0      
  movl %edi, %edi                  #  1     0x29f40  2      
  leal 0x8(%rdi), %eax             #  2     0x29f42  3      
  movl %edi, %edi                  #  3     0x29f45  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29f47  8      
  movl %edi, %edi                  #  5     0x29f4f  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  6     0x29f51  6      
  nop                              #  7     0x29f57  1      
  movl %eax, %eax                  #  8     0x29f58  2      
  movq $0x0, (%r15,%rax,1)         #  9     0x29f5a  8      
  movl %eax, %eax                  #  10    0x29f62  2      
  movq $0x0, 0x8(%r15,%rax,1)      #  11    0x29f64  9      
  popq %r11                        #  12    0x29f6d  3      
  nop                              #  13    0x29f70  1      
  movl %edi, %edi                  #  14    0x29f71  2      
  movl $0x0, 0x8(%r15,%rdi,1)      #  15    0x29f73  9      
  andl $0xffffffe0, %r11d          #  16    0x29f7c  7      
  addq %r15, %r11                  #  17    0x29f83  3      
  jmpq %r11                        #  18    0x29f86  3      
  nop                              #  19    0x29f89  1      
  nop                              #  20    0x29f8a  1      
                                                            
.size _ZN2pp3VarC1Ev, .-_ZN2pp3VarC1Ev

