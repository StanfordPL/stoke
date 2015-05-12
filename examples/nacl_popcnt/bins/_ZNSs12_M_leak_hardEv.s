  .text
  .globl _ZNSs12_M_leak_hardEv
  .type _ZNSs12_M_leak_hardEv, @function

#! file-offset 0x48a00
#! rip-offset  0x48a00
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSs12_M_leak_hardEv:               #        0x48a00  0      
  pushq %rbx                          #  1     0x48a00  2      
  movl %edi, %ebx                     #  2     0x48a02  2      
  movl %ebx, %ebx                     #  3     0x48a04  2      
  movl (%r15,%rbx,1), %eax            #  4     0x48a06  4      
  subl $0xc, %eax                     #  5     0x48a0a  3      
  cmpl $0x10031da0, %eax              #  6     0x48a0d  5      
  je .L_48a80                         #  7     0x48a12  6      
  movl %eax, %eax                     #  8     0x48a18  2      
  movl 0x8(%r15,%rax,1), %edi         #  9     0x48a1a  5      
  testl %edi, %edi                    #  10    0x48a1f  2      
  nop                                 #  11    0x48a21  1      
  jle .L_48a60                        #  12    0x48a22  6      
  xorl %ecx, %ecx                     #  13    0x48a28  2      
  xorl %edx, %edx                     #  14    0x48a2a  2      
  xorl %esi, %esi                     #  15    0x48a2c  2      
  movl %ebx, %edi                     #  16    0x48a2e  2      
  xchgw %ax, %ax                      #  17    0x48a30  3      
  nop                                 #  18    0x48a33  1      
  callq ._ZNSs9_M_mutateEjjj          #  19    0x48a34  5      
  movl %ebx, %ebx                     #  20    0x48a39  2      
  movl (%r15,%rbx,1), %eax            #  21    0x48a3b  4      
  subl $0xc, %eax                     #  22    0x48a3f  3      
  nop                                 #  23    0x48a42  1      
  nop                                 #  24    0x48a43  1      
.L_48a60:                             #        0x48a44  0      
  movl %eax, %eax                     #  25    0x48a44  2      
  movl $0xffffffff, 0x8(%r15,%rax,1)  #  26    0x48a46  9      
  nop                                 #  27    0x48a4f  1      
  nop                                 #  28    0x48a50  1      
.L_48a80:                             #        0x48a51  0      
  popq %rbx                           #  29    0x48a51  2      
  popq %r11                           #  30    0x48a53  3      
  andl $0xffffffe0, %r11d             #  31    0x48a56  7      
  addq %r15, %r11                     #  32    0x48a5d  3      
  jmpq %r11                           #  33    0x48a60  3      
  nop                                 #  34    0x48a63  1      
  nop                                 #  35    0x48a64  1      
  nop                                 #  36    0x48a65  1      
  nop                                 #  37    0x48a66  1      
  nop                                 #  38    0x48a67  1      
  nop                                 #  39    0x48a68  1      
  nop                                 #  40    0x48a69  1      
  nop                                 #  41    0x48a6a  1      
  nop                                 #  42    0x48a6b  1      
  nop                                 #  43    0x48a6c  1      
  nop                                 #  44    0x48a6d  1      
  nop                                 #  45    0x48a6e  1      
  nop                                 #  46    0x48a6f  1      
  nop                                 #  47    0x48a70  1      
  nop                                 #  48    0x48a71  1      
  nop                                 #  49    0x48a72  1      
  nop                                 #  50    0x48a73  1      
  nop                                 #  51    0x48a74  1      
  nop                                 #  52    0x48a75  1      
                                                               
.size _ZNSs12_M_leak_hardEv, .-_ZNSs12_M_leak_hardEv

