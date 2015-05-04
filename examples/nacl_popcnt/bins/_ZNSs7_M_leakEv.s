  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0x48b20
#! rip-offset  0x48b20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs7_M_leakEv:              #        0x48b20  0      
  movl %edi, %edi              #  1     0x48b20  2      
  movl %edi, %edi              #  2     0x48b22  2      
  movl (%r15,%rdi,1), %eax     #  3     0x48b24  4      
  subl $0xc, %eax              #  4     0x48b28  3      
  movl %eax, %eax              #  5     0x48b2b  2      
  movl 0x8(%r15,%rax,1), %r8d  #  6     0x48b2d  5      
  testl %r8d, %r8d             #  7     0x48b32  3      
  js .L_48b40                  #  8     0x48b35  6      
  jmpq ._ZNSs12_M_leak_hardEv  #  9     0x48b3b  5      
  nop                          #  10    0x48b40  1      
.L_48b40:                      #        0x48b41  0      
  popq %r11                    #  11    0x48b41  3      
  andl $0xffffffe0, %r11d      #  12    0x48b44  7      
  addq %r15, %r11              #  13    0x48b4b  3      
  jmpq %r11                    #  14    0x48b4e  3      
  nop                          #  15    0x48b51  1      
  nop                          #  16    0x48b52  1      
  nop                          #  17    0x48b53  1      
  nop                          #  18    0x48b54  1      
  nop                          #  19    0x48b55  1      
  nop                          #  20    0x48b56  1      
  nop                          #  21    0x48b57  1      
  nop                          #  22    0x48b58  1      
  nop                          #  23    0x48b59  1      
  nop                          #  24    0x48b5a  1      
  nop                          #  25    0x48b5b  1      
  nop                          #  26    0x48b5c  1      
  nop                          #  27    0x48b5d  1      
  nop                          #  28    0x48b5e  1      
  nop                          #  29    0x48b5f  1      
  nop                          #  30    0x48b60  1      
  nop                          #  31    0x48b61  1      
  nop                          #  32    0x48b62  1      
  nop                          #  33    0x48b63  1      
  nop                          #  34    0x48b64  1      
                                                        
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

