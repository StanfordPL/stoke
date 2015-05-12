  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0x44320
#! rip-offset  0x44320
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs11_M_disjunctEPKc:   #        0x44320  0      
  movl %edi, %edi           #  1     0x44320  2      
  movl %esi, %esi           #  2     0x44322  2      
  movl $0x1, %eax           #  3     0x44324  5      
  movl %edi, %edi           #  4     0x44329  2      
  movl (%r15,%rdi,1), %edx  #  5     0x4432b  4      
  cmpl %esi, %edx           #  6     0x4432f  2      
  ja .L_44360               #  7     0x44331  6      
  leal -0xc(%rdx), %eax     #  8     0x44337  3      
  movl %eax, %eax           #  9     0x4433a  2      
  addl (%r15,%rax,1), %edx  #  10    0x4433c  4      
  cmpl %esi, %edx           #  11    0x44340  2      
  xchgw %ax, %ax            #  12    0x44342  3      
  setb %al                  #  13    0x44345  3      
  nop                       #  14    0x44348  1      
  nop                       #  15    0x44349  1      
.L_44360:                   #        0x4434a  0      
  popq %r11                 #  16    0x4434a  3      
  andl $0xffffffe0, %r11d   #  17    0x4434d  7      
  addq %r15, %r11           #  18    0x44354  3      
  jmpq %r11                 #  19    0x44357  3      
  nop                       #  20    0x4435a  1      
  nop                       #  21    0x4435b  1      
  nop                       #  22    0x4435c  1      
  nop                       #  23    0x4435d  1      
  nop                       #  24    0x4435e  1      
  nop                       #  25    0x4435f  1      
  nop                       #  26    0x44360  1      
  nop                       #  27    0x44361  1      
  nop                       #  28    0x44362  1      
  nop                       #  29    0x44363  1      
  nop                       #  30    0x44364  1      
  nop                       #  31    0x44365  1      
  nop                       #  32    0x44366  1      
  nop                       #  33    0x44367  1      
  nop                       #  34    0x44368  1      
  nop                       #  35    0x44369  1      
  nop                       #  36    0x4436a  1      
  nop                       #  37    0x4436b  1      
  nop                       #  38    0x4436c  1      
  nop                       #  39    0x4436d  1      
                                                     
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

