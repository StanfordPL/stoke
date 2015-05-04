  .text
  .globl _ZN2pp8InstanceC1Ei
  .type _ZN2pp8InstanceC1Ei, @function

#! file-offset 0x20720
#! rip-offset  0x20720
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8InstanceC1Ei:              #        0x20720  0      
  popq %r11                        #  1     0x20720  3      
  movl %edi, %edi                  #  2     0x20723  2      
  leal 0xc(%rdi), %eax             #  3     0x20725  3      
  movl %edi, %edi                  #  4     0x20728  2      
  movl $0x10020328, (%r15,%rdi,1)  #  5     0x2072a  8      
  movl %edi, %edi                  #  6     0x20732  2      
  movl %esi, 0x4(%r15,%rdi,1)      #  7     0x20734  5      
  nop                              #  8     0x20739  1      
  movl %edi, %edi                  #  9     0x2073a  2      
  movl $0x0, 0x1c(%r15,%rdi,1)     #  10    0x2073c  9      
  movl %edi, %edi                  #  11    0x20745  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  12    0x20747  9      
  nop                              #  13    0x20750  1      
  movl %edi, %edi                  #  14    0x20751  2      
  movl $0x0, 0x10(%r15,%rdi,1)     #  15    0x20753  9      
  movl %edi, %edi                  #  16    0x2075c  2      
  movl %eax, 0x14(%r15,%rdi,1)     #  17    0x2075e  5      
  movl %edi, %edi                  #  18    0x20763  2      
  movl %eax, 0x18(%r15,%rdi,1)     #  19    0x20765  5      
  nop                              #  20    0x2076a  1      
  andl $0xffffffe0, %r11d          #  21    0x2076b  7      
  addq %r15, %r11                  #  22    0x20772  3      
  jmpq %r11                        #  23    0x20775  3      
  nop                              #  24    0x20778  1      
  nop                              #  25    0x20779  1      
                                                            
.size _ZN2pp8InstanceC1Ei, .-_ZN2pp8InstanceC1Ei

