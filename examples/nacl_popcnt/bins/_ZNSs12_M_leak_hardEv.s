  .text
  .globl _ZNSs12_M_leak_hardEv
  .type _ZNSs12_M_leak_hardEv, @function

#! file-offset 0x489e0
#! rip-offset  0x489e0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSs12_M_leak_hardEv:               #        0x489e0  0      
  pushq %rbx                          #  1     0x489e0  2      
  movl %edi, %ebx                     #  2     0x489e2  2      
  movl %ebx, %ebx                     #  3     0x489e4  2      
  movl (%r15,%rbx,1), %eax            #  4     0x489e6  4      
  subl $0xc, %eax                     #  5     0x489ea  3      
  cmpl $0x10031da0, %eax              #  6     0x489ed  5      
  je .L_48a60                         #  7     0x489f2  6      
  movl %eax, %eax                     #  8     0x489f8  2      
  movl 0x8(%r15,%rax,1), %edi         #  9     0x489fa  5      
  testl %edi, %edi                    #  10    0x489ff  2      
  nop                                 #  11    0x48a01  1      
  jle .L_48a40                        #  12    0x48a02  6      
  xorl %ecx, %ecx                     #  13    0x48a08  2      
  xorl %edx, %edx                     #  14    0x48a0a  2      
  xorl %esi, %esi                     #  15    0x48a0c  2      
  movl %ebx, %edi                     #  16    0x48a0e  2      
  xchgw %ax, %ax                      #  17    0x48a10  3      
  nop                                 #  18    0x48a13  1      
  callq ._ZNSs9_M_mutateEjjj          #  19    0x48a14  5      
  movl %ebx, %ebx                     #  20    0x48a19  2      
  movl (%r15,%rbx,1), %eax            #  21    0x48a1b  4      
  subl $0xc, %eax                     #  22    0x48a1f  3      
  nop                                 #  23    0x48a22  1      
  nop                                 #  24    0x48a23  1      
.L_48a40:                             #        0x48a24  0      
  movl %eax, %eax                     #  25    0x48a24  2      
  movl $0xffffffff, 0x8(%r15,%rax,1)  #  26    0x48a26  9      
  nop                                 #  27    0x48a2f  1      
  nop                                 #  28    0x48a30  1      
.L_48a60:                             #        0x48a31  0      
  popq %rbx                           #  29    0x48a31  2      
  popq %r11                           #  30    0x48a33  3      
  andl $0xffffffe0, %r11d             #  31    0x48a36  7      
  addq %r15, %r11                     #  32    0x48a3d  3      
  jmpq %r11                           #  33    0x48a40  3      
  nop                                 #  34    0x48a43  1      
  nop                                 #  35    0x48a44  1      
  nop                                 #  36    0x48a45  1      
  nop                                 #  37    0x48a46  1      
  nop                                 #  38    0x48a47  1      
  nop                                 #  39    0x48a48  1      
  nop                                 #  40    0x48a49  1      
  nop                                 #  41    0x48a4a  1      
  nop                                 #  42    0x48a4b  1      
  nop                                 #  43    0x48a4c  1      
  nop                                 #  44    0x48a4d  1      
  nop                                 #  45    0x48a4e  1      
  nop                                 #  46    0x48a4f  1      
  nop                                 #  47    0x48a50  1      
  nop                                 #  48    0x48a51  1      
  nop                                 #  49    0x48a52  1      
  nop                                 #  50    0x48a53  1      
  nop                                 #  51    0x48a54  1      
  nop                                 #  52    0x48a55  1      
                                                               
.size _ZNSs12_M_leak_hardEv, .-_ZNSs12_M_leak_hardEv

