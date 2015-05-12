  .text
  .globl _Unwind_SetGR
  .type _Unwind_SetGR, @function

#! file-offset 0x58f80
#! rip-offset  0x58f80
#! capacity    256 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_SetGR:                   #        0x58f80  0      
  subl $0x8, %esp                 #  1     0x58f80  3      
  addq %r15, %rsp                 #  2     0x58f83  3      
  cmpl $0x11, %esi                #  3     0x58f86  3      
  movl %edi, %edi                 #  4     0x58f89  2      
  jg .L_59060                     #  5     0x58f8b  6      
  leal 0xffdd8a9(%rip), %ecx      #  6     0x58f91  6      
  movl %edi, %edi                 #  7     0x58f97  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  8     0x58f99  6      
  nop                             #  9     0x58f9f  1      
  movslq %esi, %rax               #  10    0x58fa0  3      
  leaq (%rcx,%rax,1), %rax        #  11    0x58fa3  4      
  movl %eax, %eax                 #  12    0x58fa7  2      
  movzbl (%r15,%rax,1), %eax      #  13    0x58fa9  5      
  jne .L_59000                    #  14    0x58fae  6      
  nop                             #  15    0x58fb4  1      
  nop                             #  16    0x58fb5  1      
.L_58fc0:                         #        0x58fb6  0      
  shll $0x2, %esi                 #  17    0x58fb6  3      
  movzbl %al, %eax                #  18    0x58fb9  3      
  movslq %esi, %rsi               #  19    0x58fbc  3      
  addq %rsi, %rdi                 #  20    0x58fbf  3      
  cmpl $0x4, %eax                 #  21    0x58fc2  3      
  movl %edi, %edi                 #  22    0x58fc5  2      
  movl (%r15,%rdi,1), %ecx        #  23    0x58fc7  4      
  je .L_59040                     #  24    0x58fcb  6      
  cmpl $0x8, %eax                 #  25    0x58fd1  3      
  jne .L_59060                    #  26    0x58fd4  6      
  movl %ecx, %ecx                 #  27    0x58fda  2      
  movq %rdx, (%r15,%rcx,1)        #  28    0x58fdc  4      
  addl $0x8, %esp                 #  29    0x58fe0  3      
  addq %r15, %rsp                 #  30    0x58fe3  3      
  popq %r11                       #  31    0x58fe6  3      
  andl $0xffffffe0, %r11d         #  32    0x58fe9  7      
  addq %r15, %r11                 #  33    0x58ff0  3      
  jmpq %r11                       #  34    0x58ff3  3      
  nop                             #  35    0x58ff6  1      
.L_59000:                         #        0x58ff7  0      
  leal 0x70(%rsi), %ecx           #  36    0x58ff7  3      
  movslq %ecx, %rcx               #  37    0x58ffa  3      
  leaq (%rdi,%rcx,1), %rcx        #  38    0x58ffd  4      
  movl %ecx, %ecx                 #  39    0x59001  2      
  cmpb $0x0, 0x8(%r15,%rcx,1)     #  40    0x59003  6      
  je .L_58fc0                     #  41    0x59009  6      
  shll $0x2, %esi                 #  42    0x5900f  3      
  movslq %esi, %rsi               #  43    0x59012  3      
  addq %rsi, %rdi                 #  44    0x59015  3      
  nop                             #  45    0x59018  1      
  movl %edi, %edi                 #  46    0x59019  2      
  movl %edx, (%r15,%rdi,1)        #  47    0x5901b  4      
  addl $0x8, %esp                 #  48    0x5901f  3      
  addq %r15, %rsp                 #  49    0x59022  3      
  popq %r11                       #  50    0x59025  3      
  andl $0xffffffe0, %r11d         #  51    0x59028  7      
  addq %r15, %r11                 #  52    0x5902f  3      
  jmpq %r11                       #  53    0x59032  3      
  nop                             #  54    0x59035  1      
.L_59040:                         #        0x59036  0      
  movl %ecx, %ecx                 #  55    0x59036  2      
  movl %edx, (%r15,%rcx,1)        #  56    0x59038  4      
  addl $0x8, %esp                 #  57    0x5903c  3      
  addq %r15, %rsp                 #  58    0x5903f  3      
  popq %r11                       #  59    0x59042  3      
  andl $0xffffffe0, %r11d         #  60    0x59045  7      
  addq %r15, %r11                 #  61    0x5904c  3      
  jmpq %r11                       #  62    0x5904f  3      
  nop                             #  63    0x59052  1      
.L_59060:                         #        0x59053  0      
  nop                             #  64    0x59053  1      
  nop                             #  65    0x59054  1      
  callq .abort                    #  66    0x59055  5      
                                                           
.size _Unwind_SetGR, .-_Unwind_SetGR

