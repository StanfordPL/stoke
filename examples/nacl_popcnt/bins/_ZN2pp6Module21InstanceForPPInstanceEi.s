  .text
  .globl _ZN2pp6Module21InstanceForPPInstanceEi
  .type _ZN2pp6Module21InstanceForPPInstanceEi, @function

#! file-offset 0x242e0
#! rip-offset  0x242e0
#! capacity    224 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp6Module21InstanceForPPInstanceEi:  #        0x242e0  0      
  movl %edi, %edi                         #  1     0x242e0  2      
  movl %edi, %edi                         #  2     0x242e2  2      
  movl 0xc(%r15,%rdi,1), %eax             #  3     0x242e4  5      
  leal 0x8(%rdi), %r8d                    #  4     0x242e9  4      
  movq %r8, %rcx                          #  5     0x242ed  3      
  testq %rax, %rax                        #  6     0x242f0  3      
  jne .L_24340                            #  7     0x242f3  6      
  jmpq .L_24360                           #  8     0x242f9  5      
  nop                                     #  9     0x242fe  1      
.L_24300:                                 #        0x242ff  0      
  movl %eax, %eax                         #  10    0x242ff  2      
  movl 0x8(%r15,%rax,1), %edx             #  11    0x24301  5      
  movq %rax, %rcx                         #  12    0x24306  3      
  testq %rdx, %rdx                        #  13    0x24309  3      
  je .L_24360                             #  14    0x2430c  6      
  xchgw %ax, %ax                          #  15    0x24312  3      
  nop                                     #  16    0x24315  1      
.L_24320:                                 #        0x24316  0      
  movq %rdx, %rax                         #  17    0x24316  3      
  nop                                     #  18    0x24319  1      
  nop                                     #  19    0x2431a  1      
.L_24340:                                 #        0x2431b  0      
  movl %eax, %eax                         #  20    0x2431b  2      
  cmpl 0x10(%r15,%rax,1), %esi            #  21    0x2431d  5      
  jle .L_24300                            #  22    0x24322  6      
  movl %eax, %eax                         #  23    0x24328  2      
  movl 0xc(%r15,%rax,1), %edx             #  24    0x2432a  5      
  testq %rdx, %rdx                        #  25    0x2432f  3      
  jne .L_24320                            #  26    0x24332  6      
  nop                                     #  27    0x24338  1      
.L_24360:                                 #        0x24339  0      
  cmpl %ecx, %r8d                         #  28    0x24339  3      
  je .L_24380                             #  29    0x2433c  6      
  movl %ecx, %ecx                         #  30    0x24342  2      
  cmpl 0x10(%r15,%rcx,1), %esi            #  31    0x24344  5      
  jge .L_243a0                            #  32    0x24349  6      
  nop                                     #  33    0x2434f  1      
  nop                                     #  34    0x24350  1      
.L_24380:                                 #        0x24351  0      
  xorl %eax, %eax                         #  35    0x24351  2      
  popq %r11                               #  36    0x24353  3      
  andl $0xffffffe0, %r11d                 #  37    0x24356  7      
  addq %r15, %r11                         #  38    0x2435d  3      
  jmpq %r11                               #  39    0x24360  3      
  nop                                     #  40    0x24363  1      
  nop                                     #  41    0x24364  1      
.L_243a0:                                 #        0x24365  0      
  movl %ecx, %ecx                         #  42    0x24365  2      
  movl 0x14(%r15,%rcx,1), %eax            #  43    0x24367  5      
  popq %r11                               #  44    0x2436c  3      
  andl $0xffffffe0, %r11d                 #  45    0x2436f  7      
  addq %r15, %r11                         #  46    0x24376  3      
  jmpq %r11                               #  47    0x24379  3      
  nop                                     #  48    0x2437c  1      
  nop                                     #  49    0x2437d  1      
                                                                   
.size _ZN2pp6Module21InstanceForPPInstanceEi, .-_ZN2pp6Module21InstanceForPPInstanceEi

