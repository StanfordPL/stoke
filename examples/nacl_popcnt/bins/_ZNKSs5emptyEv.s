  .text
  .globl _ZNKSs5emptyEv
  .type _ZNKSs5emptyEv, @function

#! file-offset 0x44500
#! rip-offset  0x44500
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5emptyEv:            #        0x44500  0      
  movl %edi, %edi           #  1     0x44500  2      
  movl %edi, %edi           #  2     0x44502  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44504  4      
  popq %r11                 #  4     0x44508  3      
  subl $0xc, %eax           #  5     0x4450b  3      
  movl %eax, %eax           #  6     0x4450e  2      
  movl (%r15,%rax,1), %eax  #  7     0x44510  4      
  testl %eax, %eax          #  8     0x44514  2      
  sete %al                  #  9     0x44516  3      
  nop                       #  10    0x44519  1      
  andl $0xffffffe0, %r11d   #  11    0x4451a  7      
  addq %r15, %r11           #  12    0x44521  3      
  jmpq %r11                 #  13    0x44524  3      
  nop                       #  14    0x44527  1      
  nop                       #  15    0x44528  1      
  nop                       #  16    0x44529  1      
  nop                       #  17    0x4452a  1      
  nop                       #  18    0x4452b  1      
  nop                       #  19    0x4452c  1      
  nop                       #  20    0x4452d  1      
  nop                       #  21    0x4452e  1      
  nop                       #  22    0x4452f  1      
  nop                       #  23    0x44530  1      
  nop                       #  24    0x44531  1      
  nop                       #  25    0x44532  1      
  nop                       #  26    0x44533  1      
  nop                       #  27    0x44534  1      
  nop                       #  28    0x44535  1      
  nop                       #  29    0x44536  1      
  nop                       #  30    0x44537  1      
  nop                       #  31    0x44538  1      
  nop                       #  32    0x44539  1      
  nop                       #  33    0x4453a  1      
  nop                       #  34    0x4453b  1      
  nop                       #  35    0x4453c  1      
                                                     
.size _ZNKSs5emptyEv, .-_ZNKSs5emptyEv

