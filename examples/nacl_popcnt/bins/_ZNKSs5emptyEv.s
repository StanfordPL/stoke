  .text
  .globl _ZNKSs5emptyEv
  .type _ZNKSs5emptyEv, @function

#! file-offset 0x44520
#! rip-offset  0x44520
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5emptyEv:            #        0x44520  0      
  movl %edi, %edi           #  1     0x44520  2      
  movl %edi, %edi           #  2     0x44522  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44524  4      
  popq %r11                 #  4     0x44528  3      
  subl $0xc, %eax           #  5     0x4452b  3      
  movl %eax, %eax           #  6     0x4452e  2      
  movl (%r15,%rax,1), %eax  #  7     0x44530  4      
  testl %eax, %eax          #  8     0x44534  2      
  sete %al                  #  9     0x44536  3      
  nop                       #  10    0x44539  1      
  andl $0xffffffe0, %r11d   #  11    0x4453a  7      
  addq %r15, %r11           #  12    0x44541  3      
  jmpq %r11                 #  13    0x44544  3      
  nop                       #  14    0x44547  1      
  nop                       #  15    0x44548  1      
  nop                       #  16    0x44549  1      
  nop                       #  17    0x4454a  1      
  nop                       #  18    0x4454b  1      
  nop                       #  19    0x4454c  1      
  nop                       #  20    0x4454d  1      
  nop                       #  21    0x4454e  1      
  nop                       #  22    0x4454f  1      
  nop                       #  23    0x44550  1      
  nop                       #  24    0x44551  1      
  nop                       #  25    0x44552  1      
  nop                       #  26    0x44553  1      
  nop                       #  27    0x44554  1      
  nop                       #  28    0x44555  1      
  nop                       #  29    0x44556  1      
  nop                       #  30    0x44557  1      
  nop                       #  31    0x44558  1      
  nop                       #  32    0x44559  1      
  nop                       #  33    0x4455a  1      
  nop                       #  34    0x4455b  1      
  nop                       #  35    0x4455c  1      
                                                     
.size _ZNKSs5emptyEv, .-_ZNKSs5emptyEv

