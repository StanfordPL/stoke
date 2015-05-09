  .text
  .globl _Unwind_SetGR
  .type _Unwind_SetGR, @function

#! file-offset 0x58f60
#! rip-offset  0x58f60
#! capacity    256 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_SetGR:                   #        0x58f60  0      
  subl $0x8, %esp                 #  1     0x58f60  3      
  addq %r15, %rsp                 #  2     0x58f63  3      
  cmpl $0x11, %esi                #  3     0x58f66  3      
  movl %edi, %edi                 #  4     0x58f69  2      
  jg .L_59040                     #  5     0x58f6b  6      
  leal 0xffdd8c9(%rip), %ecx      #  6     0x58f71  6      
  movl %edi, %edi                 #  7     0x58f77  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  8     0x58f79  6      
  nop                             #  9     0x58f7f  1      
  movslq %esi, %rax               #  10    0x58f80  3      
  leaq (%rcx,%rax,1), %rax        #  11    0x58f83  4      
  movl %eax, %eax                 #  12    0x58f87  2      
  movzbl (%r15,%rax,1), %eax      #  13    0x58f89  5      
  jne .L_58fe0                    #  14    0x58f8e  6      
  nop                             #  15    0x58f94  1      
  nop                             #  16    0x58f95  1      
.L_58fa0:                         #        0x58f96  0      
  shll $0x2, %esi                 #  17    0x58f96  3      
  movzbl %al, %eax                #  18    0x58f99  3      
  movslq %esi, %rsi               #  19    0x58f9c  3      
  addq %rsi, %rdi                 #  20    0x58f9f  3      
  cmpl $0x4, %eax                 #  21    0x58fa2  3      
  movl %edi, %edi                 #  22    0x58fa5  2      
  movl (%r15,%rdi,1), %ecx        #  23    0x58fa7  4      
  je .L_59020                     #  24    0x58fab  6      
  cmpl $0x8, %eax                 #  25    0x58fb1  3      
  jne .L_59040                    #  26    0x58fb4  6      
  movl %ecx, %ecx                 #  27    0x58fba  2      
  movq %rdx, (%r15,%rcx,1)        #  28    0x58fbc  4      
  addl $0x8, %esp                 #  29    0x58fc0  3      
  addq %r15, %rsp                 #  30    0x58fc3  3      
  popq %r11                       #  31    0x58fc6  3      
  andl $0xffffffe0, %r11d         #  32    0x58fc9  7      
  addq %r15, %r11                 #  33    0x58fd0  3      
  jmpq %r11                       #  34    0x58fd3  3      
  nop                             #  35    0x58fd6  1      
.L_58fe0:                         #        0x58fd7  0      
  leal 0x70(%rsi), %ecx           #  36    0x58fd7  3      
  movslq %ecx, %rcx               #  37    0x58fda  3      
  leaq (%rdi,%rcx,1), %rcx        #  38    0x58fdd  4      
  movl %ecx, %ecx                 #  39    0x58fe1  2      
  cmpb $0x0, 0x8(%r15,%rcx,1)     #  40    0x58fe3  6      
  je .L_58fa0                     #  41    0x58fe9  6      
  shll $0x2, %esi                 #  42    0x58fef  3      
  movslq %esi, %rsi               #  43    0x58ff2  3      
  addq %rsi, %rdi                 #  44    0x58ff5  3      
  nop                             #  45    0x58ff8  1      
  movl %edi, %edi                 #  46    0x58ff9  2      
  movl %edx, (%r15,%rdi,1)        #  47    0x58ffb  4      
  addl $0x8, %esp                 #  48    0x58fff  3      
  addq %r15, %rsp                 #  49    0x59002  3      
  popq %r11                       #  50    0x59005  3      
  andl $0xffffffe0, %r11d         #  51    0x59008  7      
  addq %r15, %r11                 #  52    0x5900f  3      
  jmpq %r11                       #  53    0x59012  3      
  nop                             #  54    0x59015  1      
.L_59020:                         #        0x59016  0      
  movl %ecx, %ecx                 #  55    0x59016  2      
  movl %edx, (%r15,%rcx,1)        #  56    0x59018  4      
  addl $0x8, %esp                 #  57    0x5901c  3      
  addq %r15, %rsp                 #  58    0x5901f  3      
  popq %r11                       #  59    0x59022  3      
  andl $0xffffffe0, %r11d         #  60    0x59025  7      
  addq %r15, %r11                 #  61    0x5902c  3      
  jmpq %r11                       #  62    0x5902f  3      
  nop                             #  63    0x59032  1      
.L_59040:                         #        0x59033  0      
  nop                             #  64    0x59033  1      
  nop                             #  65    0x59034  1      
  callq .abort                    #  66    0x59035  5      
                                                           
.size _Unwind_SetGR, .-_Unwind_SetGR

