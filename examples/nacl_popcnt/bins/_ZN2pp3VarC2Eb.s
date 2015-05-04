  .text
  .globl _ZN2pp3VarC2Eb
  .type _ZN2pp3VarC2Eb, @function

#! file-offset 0x299e0
#! rip-offset  0x299e0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC2Eb:                   #        0x299e0  0      
  popq %r11                        #  1     0x299e0  3      
  movl %edi, %edi                  #  2     0x299e3  2      
  movzbl %sil, %esi                #  3     0x299e5  4      
  movl %edi, %edi                  #  4     0x299e9  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  5     0x299eb  8      
  movl %edi, %edi                  #  6     0x299f3  2      
  movl $0x2, 0x8(%r15,%rdi,1)      #  7     0x299f5  9      
  nop                              #  8     0x299fe  1      
  movl %edi, %edi                  #  9     0x299ff  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  10    0x29a01  9      
  movl %edi, %edi                  #  11    0x29a0a  2      
  movl %esi, 0x10(%r15,%rdi,1)     #  12    0x29a0c  5      
  movl %edi, %edi                  #  13    0x29a11  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  14    0x29a13  6      
  nop                              #  15    0x29a19  1      
  andl $0xffffffe0, %r11d          #  16    0x29a1a  7      
  addq %r15, %r11                  #  17    0x29a21  3      
  jmpq %r11                        #  18    0x29a24  3      
  nop                              #  19    0x29a27  1      
  nop                              #  20    0x29a28  1      
                                                            
.size _ZN2pp3VarC2Eb, .-_ZN2pp3VarC2Eb

