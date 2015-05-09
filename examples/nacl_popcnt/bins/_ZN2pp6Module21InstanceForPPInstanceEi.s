  .text
  .globl _ZN2pp6Module21InstanceForPPInstanceEi
  .type _ZN2pp6Module21InstanceForPPInstanceEi, @function

#! file-offset 0x242c0
#! rip-offset  0x242c0
#! capacity    224 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp6Module21InstanceForPPInstanceEi:  #        0x242c0  0      
  movl %edi, %edi                         #  1     0x242c0  2      
  movl %edi, %edi                         #  2     0x242c2  2      
  movl 0xc(%r15,%rdi,1), %eax             #  3     0x242c4  5      
  leal 0x8(%rdi), %r8d                    #  4     0x242c9  4      
  movq %r8, %rcx                          #  5     0x242cd  3      
  testq %rax, %rax                        #  6     0x242d0  3      
  jne .L_24320                            #  7     0x242d3  6      
  jmpq .L_24340                           #  8     0x242d9  5      
  nop                                     #  9     0x242de  1      
.L_242e0:                                 #        0x242df  0      
  movl %eax, %eax                         #  10    0x242df  2      
  movl 0x8(%r15,%rax,1), %edx             #  11    0x242e1  5      
  movq %rax, %rcx                         #  12    0x242e6  3      
  testq %rdx, %rdx                        #  13    0x242e9  3      
  je .L_24340                             #  14    0x242ec  6      
  xchgw %ax, %ax                          #  15    0x242f2  3      
  nop                                     #  16    0x242f5  1      
.L_24300:                                 #        0x242f6  0      
  movq %rdx, %rax                         #  17    0x242f6  3      
  nop                                     #  18    0x242f9  1      
  nop                                     #  19    0x242fa  1      
.L_24320:                                 #        0x242fb  0      
  movl %eax, %eax                         #  20    0x242fb  2      
  cmpl 0x10(%r15,%rax,1), %esi            #  21    0x242fd  5      
  jle .L_242e0                            #  22    0x24302  6      
  movl %eax, %eax                         #  23    0x24308  2      
  movl 0xc(%r15,%rax,1), %edx             #  24    0x2430a  5      
  testq %rdx, %rdx                        #  25    0x2430f  3      
  jne .L_24300                            #  26    0x24312  6      
  nop                                     #  27    0x24318  1      
.L_24340:                                 #        0x24319  0      
  cmpl %ecx, %r8d                         #  28    0x24319  3      
  je .L_24360                             #  29    0x2431c  6      
  movl %ecx, %ecx                         #  30    0x24322  2      
  cmpl 0x10(%r15,%rcx,1), %esi            #  31    0x24324  5      
  jge .L_24380                            #  32    0x24329  6      
  nop                                     #  33    0x2432f  1      
  nop                                     #  34    0x24330  1      
.L_24360:                                 #        0x24331  0      
  xorl %eax, %eax                         #  35    0x24331  2      
  popq %r11                               #  36    0x24333  3      
  andl $0xffffffe0, %r11d                 #  37    0x24336  7      
  addq %r15, %r11                         #  38    0x2433d  3      
  jmpq %r11                               #  39    0x24340  3      
  nop                                     #  40    0x24343  1      
  nop                                     #  41    0x24344  1      
.L_24380:                                 #        0x24345  0      
  movl %ecx, %ecx                         #  42    0x24345  2      
  movl 0x14(%r15,%rcx,1), %eax            #  43    0x24347  5      
  popq %r11                               #  44    0x2434c  3      
  andl $0xffffffe0, %r11d                 #  45    0x2434f  7      
  addq %r15, %r11                         #  46    0x24356  3      
  jmpq %r11                               #  47    0x24359  3      
  nop                                     #  48    0x2435c  1      
  nop                                     #  49    0x2435d  1      
                                                                   
.size _ZN2pp6Module21InstanceForPPInstanceEi, .-_ZN2pp6Module21InstanceForPPInstanceEi

