  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0x48aa0
#! rip-offset  0x48aa0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs7_M_leakEv:              #        0x48aa0  0      
  movl %edi, %edi              #  1     0x48aa0  2      
  movl %edi, %edi              #  2     0x48aa2  2      
  movl (%r15,%rdi,1), %eax     #  3     0x48aa4  4      
  subl $0xc, %eax              #  4     0x48aa8  3      
  movl %eax, %eax              #  5     0x48aab  2      
  movl 0x8(%r15,%rax,1), %r8d  #  6     0x48aad  5      
  testl %r8d, %r8d             #  7     0x48ab2  3      
  js .L_48ac0                  #  8     0x48ab5  6      
  jmpq ._ZNSs12_M_leak_hardEv  #  9     0x48abb  5      
  nop                          #  10    0x48ac0  1      
.L_48ac0:                      #        0x48ac1  0      
  popq %r11                    #  11    0x48ac1  3      
  andl $0xffffffe0, %r11d      #  12    0x48ac4  7      
  addq %r15, %r11              #  13    0x48acb  3      
  jmpq %r11                    #  14    0x48ace  3      
  nop                          #  15    0x48ad1  1      
  nop                          #  16    0x48ad2  1      
  nop                          #  17    0x48ad3  1      
  nop                          #  18    0x48ad4  1      
  nop                          #  19    0x48ad5  1      
  nop                          #  20    0x48ad6  1      
  nop                          #  21    0x48ad7  1      
  nop                          #  22    0x48ad8  1      
  nop                          #  23    0x48ad9  1      
  nop                          #  24    0x48ada  1      
  nop                          #  25    0x48adb  1      
  nop                          #  26    0x48adc  1      
  nop                          #  27    0x48add  1      
  nop                          #  28    0x48ade  1      
  nop                          #  29    0x48adf  1      
  nop                          #  30    0x48ae0  1      
  nop                          #  31    0x48ae1  1      
  nop                          #  32    0x48ae2  1      
  nop                          #  33    0x48ae3  1      
  nop                          #  34    0x48ae4  1      
                                                        
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

