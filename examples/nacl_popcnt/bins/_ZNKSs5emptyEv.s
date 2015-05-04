  .text
  .globl _ZNKSs5emptyEv
  .type _ZNKSs5emptyEv, @function

#! file-offset 0x445a0
#! rip-offset  0x445a0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5emptyEv:            #        0x445a0  0      
  movl %edi, %edi           #  1     0x445a0  2      
  movl %edi, %edi           #  2     0x445a2  2      
  movl (%r15,%rdi,1), %eax  #  3     0x445a4  4      
  popq %r11                 #  4     0x445a8  3      
  subl $0xc, %eax           #  5     0x445ab  3      
  movl %eax, %eax           #  6     0x445ae  2      
  movl (%r15,%rax,1), %eax  #  7     0x445b0  4      
  testl %eax, %eax          #  8     0x445b4  2      
  sete %al                  #  9     0x445b6  3      
  nop                       #  10    0x445b9  1      
  andl $0xffffffe0, %r11d   #  11    0x445ba  7      
  addq %r15, %r11           #  12    0x445c1  3      
  jmpq %r11                 #  13    0x445c4  3      
  nop                       #  14    0x445c7  1      
  nop                       #  15    0x445c8  1      
  nop                       #  16    0x445c9  1      
  nop                       #  17    0x445ca  1      
  nop                       #  18    0x445cb  1      
  nop                       #  19    0x445cc  1      
  nop                       #  20    0x445cd  1      
  nop                       #  21    0x445ce  1      
  nop                       #  22    0x445cf  1      
  nop                       #  23    0x445d0  1      
  nop                       #  24    0x445d1  1      
  nop                       #  25    0x445d2  1      
  nop                       #  26    0x445d3  1      
  nop                       #  27    0x445d4  1      
  nop                       #  28    0x445d5  1      
  nop                       #  29    0x445d6  1      
  nop                       #  30    0x445d7  1      
  nop                       #  31    0x445d8  1      
  nop                       #  32    0x445d9  1      
  nop                       #  33    0x445da  1      
  nop                       #  34    0x445db  1      
  nop                       #  35    0x445dc  1      
                                                     
.size _ZNKSs5emptyEv, .-_ZNKSs5emptyEv

