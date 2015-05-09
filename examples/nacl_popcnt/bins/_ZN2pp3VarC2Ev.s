  .text
  .globl _ZN2pp3VarC2Ev
  .type _ZN2pp3VarC2Ev, @function

#! file-offset 0x29f00
#! rip-offset  0x29f00
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC2Ev:                   #        0x29f00  0      
  movl %edi, %edi                  #  1     0x29f00  2      
  leal 0x8(%rdi), %eax             #  2     0x29f02  3      
  movl %edi, %edi                  #  3     0x29f05  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29f07  8      
  movl %edi, %edi                  #  5     0x29f0f  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  6     0x29f11  6      
  nop                              #  7     0x29f17  1      
  movl %eax, %eax                  #  8     0x29f18  2      
  movq $0x0, (%r15,%rax,1)         #  9     0x29f1a  8      
  movl %eax, %eax                  #  10    0x29f22  2      
  movq $0x0, 0x8(%r15,%rax,1)      #  11    0x29f24  9      
  popq %r11                        #  12    0x29f2d  3      
  nop                              #  13    0x29f30  1      
  movl %edi, %edi                  #  14    0x29f31  2      
  movl $0x0, 0x8(%r15,%rdi,1)      #  15    0x29f33  9      
  andl $0xffffffe0, %r11d          #  16    0x29f3c  7      
  addq %r15, %r11                  #  17    0x29f43  3      
  jmpq %r11                        #  18    0x29f46  3      
  nop                              #  19    0x29f49  1      
  nop                              #  20    0x29f4a  1      
                                                            
.size _ZN2pp3VarC2Ev, .-_ZN2pp3VarC2Ev

