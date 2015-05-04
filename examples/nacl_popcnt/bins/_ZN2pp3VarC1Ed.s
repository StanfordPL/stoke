  .text
  .globl _ZN2pp3VarC1Ed
  .type _ZN2pp3VarC1Ed, @function

#! file-offset 0x29bc0
#! rip-offset  0x29bc0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp3VarC1Ed:                   #        0x29bc0  0      
  popq %r11                        #  1     0x29bc0  3      
  movl %edi, %edi                  #  2     0x29bc3  2      
  movl %edi, %edi                  #  3     0x29bc5  2      
  movl $0x100205f8, (%r15,%rdi,1)  #  4     0x29bc7  8      
  movl %edi, %edi                  #  5     0x29bcf  2      
  movl $0x4, 0x8(%r15,%rdi,1)      #  6     0x29bd1  9      
  nop                              #  7     0x29bda  1      
  movl %edi, %edi                  #  8     0x29bdb  2      
  movsd %xmm0, 0x10(%r15,%rdi,1)   #  9     0x29bdd  7      
  movl %edi, %edi                  #  10    0x29be4  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  11    0x29be6  9      
  movl %edi, %edi                  #  12    0x29bef  2      
  movb $0x1, 0x18(%r15,%rdi,1)     #  13    0x29bf1  6      
  nop                              #  14    0x29bf7  1      
  andl $0xffffffe0, %r11d          #  15    0x29bf8  7      
  addq %r15, %r11                  #  16    0x29bff  3      
  jmpq %r11                        #  17    0x29c02  3      
  nop                              #  18    0x29c05  1      
  nop                              #  19    0x29c06  1      
                                                            
.size _ZN2pp3VarC1Ed, .-_ZN2pp3VarC1Ed

