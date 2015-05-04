  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0x443a0
#! rip-offset  0x443a0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs11_M_disjunctEPKc:   #        0x443a0  0      
  movl %edi, %edi           #  1     0x443a0  2      
  movl %esi, %esi           #  2     0x443a2  2      
  movl $0x1, %eax           #  3     0x443a4  5      
  movl %edi, %edi           #  4     0x443a9  2      
  movl (%r15,%rdi,1), %edx  #  5     0x443ab  4      
  cmpl %esi, %edx           #  6     0x443af  2      
  ja .L_443e0               #  7     0x443b1  6      
  leal -0xc(%rdx), %eax     #  8     0x443b7  3      
  movl %eax, %eax           #  9     0x443ba  2      
  addl (%r15,%rax,1), %edx  #  10    0x443bc  4      
  cmpl %esi, %edx           #  11    0x443c0  2      
  xchgw %ax, %ax            #  12    0x443c2  3      
  setb %al                  #  13    0x443c5  3      
  nop                       #  14    0x443c8  1      
  nop                       #  15    0x443c9  1      
.L_443e0:                   #        0x443ca  0      
  popq %r11                 #  16    0x443ca  3      
  andl $0xffffffe0, %r11d   #  17    0x443cd  7      
  addq %r15, %r11           #  18    0x443d4  3      
  jmpq %r11                 #  19    0x443d7  3      
  nop                       #  20    0x443da  1      
  nop                       #  21    0x443db  1      
  nop                       #  22    0x443dc  1      
  nop                       #  23    0x443dd  1      
  nop                       #  24    0x443de  1      
  nop                       #  25    0x443df  1      
  nop                       #  26    0x443e0  1      
  nop                       #  27    0x443e1  1      
  nop                       #  28    0x443e2  1      
  nop                       #  29    0x443e3  1      
  nop                       #  30    0x443e4  1      
  nop                       #  31    0x443e5  1      
  nop                       #  32    0x443e6  1      
  nop                       #  33    0x443e7  1      
  nop                       #  34    0x443e8  1      
  nop                       #  35    0x443e9  1      
  nop                       #  36    0x443ea  1      
  nop                       #  37    0x443eb  1      
  nop                       #  38    0x443ec  1      
  nop                       #  39    0x443ed  1      
                                                     
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

