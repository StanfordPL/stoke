  .text
  .globl _ZN2pp3VarC1Eb
  .type _ZN2pp3VarC1Eb, @function

#! file-offset 0x299c0
#! rip-offset  0x299c0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC1Eb:                   #        0x299c0  0      
  popq %r11                        #  1     0x299c0  3      
  movl %edi, %edi                  #  2     0x299c3  2      
  movzbl %sil, %esi                #  3     0x299c5  4      
  movl %edi, %edi                  #  4     0x299c9  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  5     0x299cb  8      
  movl %edi, %edi                  #  6     0x299d3  2      
  movl $0x2, 0x8(%r15,%rdi,1)      #  7     0x299d5  9      
  nop                              #  8     0x299de  1      
  movl %edi, %edi                  #  9     0x299df  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  10    0x299e1  9      
  movl %edi, %edi                  #  11    0x299ea  2      
  movl %esi, 0x10(%r15,%rdi,1)     #  12    0x299ec  5      
  movl %edi, %edi                  #  13    0x299f1  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  14    0x299f3  6      
  nop                              #  15    0x299f9  1      
  andl $0xffffffe0, %r11d          #  16    0x299fa  7      
  addq %r15, %r11                  #  17    0x29a01  3      
  jmpq %r11                        #  18    0x29a04  3      
  nop                              #  19    0x29a07  1      
  nop                              #  20    0x29a08  1      
                                                            
.size _ZN2pp3VarC1Eb, .-_ZN2pp3VarC1Eb

