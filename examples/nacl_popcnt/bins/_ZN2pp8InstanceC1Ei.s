  .text
  .globl _ZN2pp8InstanceC1Ei
  .type _ZN2pp8InstanceC1Ei, @function

#! file-offset 0x206a0
#! rip-offset  0x206a0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8InstanceC1Ei:              #        0x206a0  0      
  popq %r11                        #  1     0x206a0  3      
  movl %edi, %edi                  #  2     0x206a3  2      
  leal 0xc(%rdi), %eax             #  3     0x206a5  3      
  movl %edi, %edi                  #  4     0x206a8  2      
  movl $0x10020328, (%r15,%rdi,1)  #  5     0x206aa  8      
  movl %edi, %edi                  #  6     0x206b2  2      
  movl %esi, 0x4(%r15,%rdi,1)      #  7     0x206b4  5      
  nop                              #  8     0x206b9  1      
  movl %edi, %edi                  #  9     0x206ba  2      
  movl $0x0, 0x1c(%r15,%rdi,1)     #  10    0x206bc  9      
  movl %edi, %edi                  #  11    0x206c5  2      
  movl $0x0, 0xc(%r15,%rdi,1)      #  12    0x206c7  9      
  nop                              #  13    0x206d0  1      
  movl %edi, %edi                  #  14    0x206d1  2      
  movl $0x0, 0x10(%r15,%rdi,1)     #  15    0x206d3  9      
  movl %edi, %edi                  #  16    0x206dc  2      
  movl %eax, 0x14(%r15,%rdi,1)     #  17    0x206de  5      
  movl %edi, %edi                  #  18    0x206e3  2      
  movl %eax, 0x18(%r15,%rdi,1)     #  19    0x206e5  5      
  nop                              #  20    0x206ea  1      
  andl $0xffffffe0, %r11d          #  21    0x206eb  7      
  addq %r15, %r11                  #  22    0x206f2  3      
  jmpq %r11                        #  23    0x206f5  3      
  nop                              #  24    0x206f8  1      
  nop                              #  25    0x206f9  1      
                                                            
.size _ZN2pp8InstanceC1Ei, .-_ZN2pp8InstanceC1Ei

