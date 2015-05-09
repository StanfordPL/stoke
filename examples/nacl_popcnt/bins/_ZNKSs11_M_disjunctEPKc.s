  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0x44300
#! rip-offset  0x44300
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs11_M_disjunctEPKc:   #        0x44300  0      
  movl %edi, %edi           #  1     0x44300  2      
  movl %esi, %esi           #  2     0x44302  2      
  movl $0x1, %eax           #  3     0x44304  5      
  movl %edi, %edi           #  4     0x44309  2      
  movl (%r15,%rdi,1), %edx  #  5     0x4430b  4      
  cmpl %esi, %edx           #  6     0x4430f  2      
  ja .L_44340               #  7     0x44311  6      
  leal -0xc(%rdx), %eax     #  8     0x44317  3      
  movl %eax, %eax           #  9     0x4431a  2      
  addl (%r15,%rax,1), %edx  #  10    0x4431c  4      
  cmpl %esi, %edx           #  11    0x44320  2      
  xchgw %ax, %ax            #  12    0x44322  3      
  setb %al                  #  13    0x44325  3      
  nop                       #  14    0x44328  1      
  nop                       #  15    0x44329  1      
.L_44340:                   #        0x4432a  0      
  popq %r11                 #  16    0x4432a  3      
  andl $0xffffffe0, %r11d   #  17    0x4432d  7      
  addq %r15, %r11           #  18    0x44334  3      
  jmpq %r11                 #  19    0x44337  3      
  nop                       #  20    0x4433a  1      
  nop                       #  21    0x4433b  1      
  nop                       #  22    0x4433c  1      
  nop                       #  23    0x4433d  1      
  nop                       #  24    0x4433e  1      
  nop                       #  25    0x4433f  1      
  nop                       #  26    0x44340  1      
  nop                       #  27    0x44341  1      
  nop                       #  28    0x44342  1      
  nop                       #  29    0x44343  1      
  nop                       #  30    0x44344  1      
  nop                       #  31    0x44345  1      
  nop                       #  32    0x44346  1      
  nop                       #  33    0x44347  1      
  nop                       #  34    0x44348  1      
  nop                       #  35    0x44349  1      
  nop                       #  36    0x4434a  1      
  nop                       #  37    0x4434b  1      
  nop                       #  38    0x4434c  1      
  nop                       #  39    0x4434d  1      
                                                     
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

