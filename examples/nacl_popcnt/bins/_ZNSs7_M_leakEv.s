  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0x48a80
#! rip-offset  0x48a80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs7_M_leakEv:              #        0x48a80  0      
  movl %edi, %edi              #  1     0x48a80  2      
  movl %edi, %edi              #  2     0x48a82  2      
  movl (%r15,%rdi,1), %eax     #  3     0x48a84  4      
  subl $0xc, %eax              #  4     0x48a88  3      
  movl %eax, %eax              #  5     0x48a8b  2      
  movl 0x8(%r15,%rax,1), %r8d  #  6     0x48a8d  5      
  testl %r8d, %r8d             #  7     0x48a92  3      
  js .L_48aa0                  #  8     0x48a95  6      
  jmpq ._ZNSs12_M_leak_hardEv  #  9     0x48a9b  5      
  nop                          #  10    0x48aa0  1      
.L_48aa0:                      #        0x48aa1  0      
  popq %r11                    #  11    0x48aa1  3      
  andl $0xffffffe0, %r11d      #  12    0x48aa4  7      
  addq %r15, %r11              #  13    0x48aab  3      
  jmpq %r11                    #  14    0x48aae  3      
  nop                          #  15    0x48ab1  1      
  nop                          #  16    0x48ab2  1      
  nop                          #  17    0x48ab3  1      
  nop                          #  18    0x48ab4  1      
  nop                          #  19    0x48ab5  1      
  nop                          #  20    0x48ab6  1      
  nop                          #  21    0x48ab7  1      
  nop                          #  22    0x48ab8  1      
  nop                          #  23    0x48ab9  1      
  nop                          #  24    0x48aba  1      
  nop                          #  25    0x48abb  1      
  nop                          #  26    0x48abc  1      
  nop                          #  27    0x48abd  1      
  nop                          #  28    0x48abe  1      
  nop                          #  29    0x48abf  1      
  nop                          #  30    0x48ac0  1      
  nop                          #  31    0x48ac1  1      
  nop                          #  32    0x48ac2  1      
  nop                          #  33    0x48ac3  1      
  nop                          #  34    0x48ac4  1      
                                                        
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

