  .text
  .globl _ZNKSs6rbeginEv
  .type _ZNKSs6rbeginEv, @function

#! file-offset 0x44440
#! rip-offset  0x44440
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs6rbeginEv:           #        0x44440  0      
  movl %esi, %esi           #  1     0x44440  2      
  movl %edi, %eax           #  2     0x44442  2      
  movl %esi, %esi           #  3     0x44444  2      
  movl (%r15,%rsi,1), %edx  #  4     0x44446  4      
  leal -0xc(%rdx), %ecx     #  5     0x4444a  3      
  movl %ecx, %ecx           #  6     0x4444d  2      
  addl (%r15,%rcx,1), %edx  #  7     0x4444f  4      
  movl %eax, %eax           #  8     0x44453  2      
  movl %edx, (%r15,%rax,1)  #  9     0x44455  4      
  popq %r11                 #  10    0x44459  3      
  nop                       #  11    0x4445c  1      
  andl $0xffffffe0, %r11d   #  12    0x4445d  7      
  addq %r15, %r11           #  13    0x44464  3      
  jmpq %r11                 #  14    0x44467  3      
  nop                       #  15    0x4446a  1      
  nop                       #  16    0x4446b  1      
  nop                       #  17    0x4446c  1      
  nop                       #  18    0x4446d  1      
  nop                       #  19    0x4446e  1      
  nop                       #  20    0x4446f  1      
  nop                       #  21    0x44470  1      
  nop                       #  22    0x44471  1      
  nop                       #  23    0x44472  1      
  nop                       #  24    0x44473  1      
  nop                       #  25    0x44474  1      
  nop                       #  26    0x44475  1      
  nop                       #  27    0x44476  1      
  nop                       #  28    0x44477  1      
  nop                       #  29    0x44478  1      
  nop                       #  30    0x44479  1      
  nop                       #  31    0x4447a  1      
  nop                       #  32    0x4447b  1      
  nop                       #  33    0x4447c  1      
  nop                       #  34    0x4447d  1      
  nop                       #  35    0x4447e  1      
  nop                       #  36    0x4447f  1      
                                                     
.size _ZNKSs6rbeginEv, .-_ZNKSs6rbeginEv

