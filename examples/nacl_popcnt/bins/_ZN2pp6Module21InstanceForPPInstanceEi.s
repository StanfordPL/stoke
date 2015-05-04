  .text
  .globl _ZN2pp6Module21InstanceForPPInstanceEi
  .type _ZN2pp6Module21InstanceForPPInstanceEi, @function

#! file-offset 0x24360
#! rip-offset  0x24360
#! capacity    224 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp6Module21InstanceForPPInstanceEi:  #        0x24360  0      
  movl %edi, %edi                         #  1     0x24360  2      
  movl %edi, %edi                         #  2     0x24362  2      
  movl 0xc(%r15,%rdi,1), %eax             #  3     0x24364  5      
  leal 0x8(%rdi), %r8d                    #  4     0x24369  4      
  movq %r8, %rcx                          #  5     0x2436d  3      
  testq %rax, %rax                        #  6     0x24370  3      
  jne .L_243c0                            #  7     0x24373  6      
  jmpq .L_243e0                           #  8     0x24379  5      
  nop                                     #  9     0x2437e  1      
.L_24380:                                 #        0x2437f  0      
  movl %eax, %eax                         #  10    0x2437f  2      
  movl 0x8(%r15,%rax,1), %edx             #  11    0x24381  5      
  movq %rax, %rcx                         #  12    0x24386  3      
  testq %rdx, %rdx                        #  13    0x24389  3      
  je .L_243e0                             #  14    0x2438c  6      
  xchgw %ax, %ax                          #  15    0x24392  3      
  nop                                     #  16    0x24395  1      
.L_243a0:                                 #        0x24396  0      
  movq %rdx, %rax                         #  17    0x24396  3      
  nop                                     #  18    0x24399  1      
  nop                                     #  19    0x2439a  1      
.L_243c0:                                 #        0x2439b  0      
  movl %eax, %eax                         #  20    0x2439b  2      
  cmpl 0x10(%r15,%rax,1), %esi            #  21    0x2439d  5      
  jle .L_24380                            #  22    0x243a2  6      
  movl %eax, %eax                         #  23    0x243a8  2      
  movl 0xc(%r15,%rax,1), %edx             #  24    0x243aa  5      
  testq %rdx, %rdx                        #  25    0x243af  3      
  jne .L_243a0                            #  26    0x243b2  6      
  nop                                     #  27    0x243b8  1      
.L_243e0:                                 #        0x243b9  0      
  cmpl %ecx, %r8d                         #  28    0x243b9  3      
  je .L_24400                             #  29    0x243bc  6      
  movl %ecx, %ecx                         #  30    0x243c2  2      
  cmpl 0x10(%r15,%rcx,1), %esi            #  31    0x243c4  5      
  jge .L_24420                            #  32    0x243c9  6      
  nop                                     #  33    0x243cf  1      
  nop                                     #  34    0x243d0  1      
.L_24400:                                 #        0x243d1  0      
  xorl %eax, %eax                         #  35    0x243d1  2      
  popq %r11                               #  36    0x243d3  3      
  andl $0xffffffe0, %r11d                 #  37    0x243d6  7      
  addq %r15, %r11                         #  38    0x243dd  3      
  jmpq %r11                               #  39    0x243e0  3      
  nop                                     #  40    0x243e3  1      
  nop                                     #  41    0x243e4  1      
.L_24420:                                 #        0x243e5  0      
  movl %ecx, %ecx                         #  42    0x243e5  2      
  movl 0x14(%r15,%rcx,1), %eax            #  43    0x243e7  5      
  popq %r11                               #  44    0x243ec  3      
  andl $0xffffffe0, %r11d                 #  45    0x243ef  7      
  addq %r15, %r11                         #  46    0x243f6  3      
  jmpq %r11                               #  47    0x243f9  3      
  nop                                     #  48    0x243fc  1      
  nop                                     #  49    0x243fd  1      
                                                                   
.size _ZN2pp6Module21InstanceForPPInstanceEi, .-_ZN2pp6Module21InstanceForPPInstanceEi

