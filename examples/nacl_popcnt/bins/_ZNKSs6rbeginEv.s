  .text
  .globl _ZNKSs6rbeginEv
  .type _ZNKSs6rbeginEv, @function

#! file-offset 0x444c0
#! rip-offset  0x444c0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs6rbeginEv:           #        0x444c0  0      
  movl %esi, %esi           #  1     0x444c0  2      
  movl %edi, %eax           #  2     0x444c2  2      
  movl %esi, %esi           #  3     0x444c4  2      
  movl (%r15,%rsi,1), %edx  #  4     0x444c6  4      
  leal -0xc(%rdx), %ecx     #  5     0x444ca  3      
  movl %ecx, %ecx           #  6     0x444cd  2      
  addl (%r15,%rcx,1), %edx  #  7     0x444cf  4      
  movl %eax, %eax           #  8     0x444d3  2      
  movl %edx, (%r15,%rax,1)  #  9     0x444d5  4      
  popq %r11                 #  10    0x444d9  3      
  nop                       #  11    0x444dc  1      
  andl $0xffffffe0, %r11d   #  12    0x444dd  7      
  addq %r15, %r11           #  13    0x444e4  3      
  jmpq %r11                 #  14    0x444e7  3      
  nop                       #  15    0x444ea  1      
  nop                       #  16    0x444eb  1      
  nop                       #  17    0x444ec  1      
  nop                       #  18    0x444ed  1      
  nop                       #  19    0x444ee  1      
  nop                       #  20    0x444ef  1      
  nop                       #  21    0x444f0  1      
  nop                       #  22    0x444f1  1      
  nop                       #  23    0x444f2  1      
  nop                       #  24    0x444f3  1      
  nop                       #  25    0x444f4  1      
  nop                       #  26    0x444f5  1      
  nop                       #  27    0x444f6  1      
  nop                       #  28    0x444f7  1      
  nop                       #  29    0x444f8  1      
  nop                       #  30    0x444f9  1      
  nop                       #  31    0x444fa  1      
  nop                       #  32    0x444fb  1      
  nop                       #  33    0x444fc  1      
  nop                       #  34    0x444fd  1      
  nop                       #  35    0x444fe  1      
  nop                       #  36    0x444ff  1      
                                                     
.size _ZNKSs6rbeginEv, .-_ZNKSs6rbeginEv

