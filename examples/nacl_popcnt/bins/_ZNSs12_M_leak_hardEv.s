  .text
  .globl _ZNSs12_M_leak_hardEv
  .type _ZNSs12_M_leak_hardEv, @function

#! file-offset 0x48a80
#! rip-offset  0x48a80
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSs12_M_leak_hardEv:               #        0x48a80  0      
  pushq %rbx                          #  1     0x48a80  2      
  movl %edi, %ebx                     #  2     0x48a82  2      
  movl %ebx, %ebx                     #  3     0x48a84  2      
  movl (%r15,%rbx,1), %eax            #  4     0x48a86  4      
  subl $0xc, %eax                     #  5     0x48a8a  3      
  cmpl $0x10031da0, %eax              #  6     0x48a8d  5      
  je .L_48b00                         #  7     0x48a92  6      
  movl %eax, %eax                     #  8     0x48a98  2      
  movl 0x8(%r15,%rax,1), %edi         #  9     0x48a9a  5      
  testl %edi, %edi                    #  10    0x48a9f  2      
  nop                                 #  11    0x48aa1  1      
  jle .L_48ae0                        #  12    0x48aa2  6      
  xorl %ecx, %ecx                     #  13    0x48aa8  2      
  xorl %edx, %edx                     #  14    0x48aaa  2      
  xorl %esi, %esi                     #  15    0x48aac  2      
  movl %ebx, %edi                     #  16    0x48aae  2      
  xchgw %ax, %ax                      #  17    0x48ab0  3      
  nop                                 #  18    0x48ab3  1      
  callq ._ZNSs9_M_mutateEjjj          #  19    0x48ab4  5      
  movl %ebx, %ebx                     #  20    0x48ab9  2      
  movl (%r15,%rbx,1), %eax            #  21    0x48abb  4      
  subl $0xc, %eax                     #  22    0x48abf  3      
  nop                                 #  23    0x48ac2  1      
  nop                                 #  24    0x48ac3  1      
.L_48ae0:                             #        0x48ac4  0      
  movl %eax, %eax                     #  25    0x48ac4  2      
  movl $0xffffffff, 0x8(%r15,%rax,1)  #  26    0x48ac6  9      
  nop                                 #  27    0x48acf  1      
  nop                                 #  28    0x48ad0  1      
.L_48b00:                             #        0x48ad1  0      
  popq %rbx                           #  29    0x48ad1  2      
  popq %r11                           #  30    0x48ad3  3      
  andl $0xffffffe0, %r11d             #  31    0x48ad6  7      
  addq %r15, %r11                     #  32    0x48add  3      
  jmpq %r11                           #  33    0x48ae0  3      
  nop                                 #  34    0x48ae3  1      
  nop                                 #  35    0x48ae4  1      
  nop                                 #  36    0x48ae5  1      
  nop                                 #  37    0x48ae6  1      
  nop                                 #  38    0x48ae7  1      
  nop                                 #  39    0x48ae8  1      
  nop                                 #  40    0x48ae9  1      
  nop                                 #  41    0x48aea  1      
  nop                                 #  42    0x48aeb  1      
  nop                                 #  43    0x48aec  1      
  nop                                 #  44    0x48aed  1      
  nop                                 #  45    0x48aee  1      
  nop                                 #  46    0x48aef  1      
  nop                                 #  47    0x48af0  1      
  nop                                 #  48    0x48af1  1      
  nop                                 #  49    0x48af2  1      
  nop                                 #  50    0x48af3  1      
  nop                                 #  51    0x48af4  1      
  nop                                 #  52    0x48af5  1      
                                                               
.size _ZNSs12_M_leak_hardEv, .-_ZNSs12_M_leak_hardEv

