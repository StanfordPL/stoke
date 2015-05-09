  .text
  .globl _ZNKSs4copyEPcjj
  .type _ZNKSs4copyEPcjj, @function

#! file-offset 0x45e20
#! rip-offset  0x45e20
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs4copyEPcjj:                      #        0x45e20  0      
  movl %edi, %eax                       #  1     0x45e20  2      
  pushq %rbx                            #  2     0x45e22  2      
  movl %esi, %edi                       #  3     0x45e24  2      
  movl %eax, %eax                       #  4     0x45e26  2      
  movl (%r15,%rax,1), %esi              #  5     0x45e28  4      
  leal -0xc(%rsi), %eax                 #  6     0x45e2c  3      
  movl %eax, %eax                       #  7     0x45e2f  2      
  movl (%r15,%rax,1), %ebx              #  8     0x45e31  4      
  cmpl %ebx, %ecx                       #  9     0x45e35  2      
  ja .L_45ec0                           #  10    0x45e37  6      
  subl %ecx, %ebx                       #  11    0x45e3d  2      
  cmpl %edx, %ebx                       #  12    0x45e3f  2      
  cmoval %edx, %ebx                     #  13    0x45e41  3      
  testl %ebx, %ebx                      #  14    0x45e44  2      
  jne .L_45e60                          #  15    0x45e46  6      
  movl %ebx, %eax                       #  16    0x45e4c  2      
  popq %rbx                             #  17    0x45e4e  2      
  popq %r11                             #  18    0x45e50  3      
  andl $0xffffffe0, %r11d               #  19    0x45e53  7      
  addq %r15, %r11                       #  20    0x45e5a  3      
  jmpq %r11                             #  21    0x45e5d  3      
  nop                                   #  22    0x45e60  1      
.L_45e60:                               #        0x45e61  0      
  cmpl $0x1, %ebx                       #  23    0x45e61  3      
  leal (%rcx,%rsi,1), %esi              #  24    0x45e64  3      
  je .L_45ea0                           #  25    0x45e67  6      
  movl %ebx, %edx                       #  26    0x45e6d  2      
  xchgw %ax, %ax                        #  27    0x45e6f  3      
  nop                                   #  28    0x45e72  1      
  callq .memcpy                         #  29    0x45e73  5      
  movl %ebx, %eax                       #  30    0x45e78  2      
  popq %rbx                             #  31    0x45e7a  2      
  popq %r11                             #  32    0x45e7c  3      
  andl $0xffffffe0, %r11d               #  33    0x45e7f  7      
  addq %r15, %r11                       #  34    0x45e86  3      
  jmpq %r11                             #  35    0x45e89  3      
  xchgw %ax, %ax                        #  36    0x45e8c  3      
  nop                                   #  37    0x45e8f  1      
.L_45ea0:                               #        0x45e90  0      
  movl %esi, %esi                       #  38    0x45e90  2      
  movzbl (%r15,%rsi,1), %eax            #  39    0x45e92  5      
  movl %edi, %edi                       #  40    0x45e97  2      
  movb %al, (%r15,%rdi,1)               #  41    0x45e99  4      
  movl %ebx, %eax                       #  42    0x45e9d  2      
  popq %rbx                             #  43    0x45e9f  2      
  popq %r11                             #  44    0x45ea1  3      
  andl $0xffffffe0, %r11d               #  45    0x45ea4  7      
  addq %r15, %r11                       #  46    0x45eab  3      
  jmpq %r11                             #  47    0x45eae  3      
  nop                                   #  48    0x45eb1  1      
.L_45ec0:                               #        0x45eb2  0      
  movl $0x100209ca, %edi                #  49    0x45eb2  5      
  nop                                   #  50    0x45eb7  1      
  nop                                   #  51    0x45eb8  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  52    0x45eb9  5      
                                                                 
.size _ZNKSs4copyEPcjj, .-_ZNKSs4copyEPcjj

