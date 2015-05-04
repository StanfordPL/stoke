  .text
  .globl _Unwind_SetGR
  .type _Unwind_SetGR, @function

#! file-offset 0x59000
#! rip-offset  0x59000
#! capacity    256 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_SetGR:                   #        0x59000  0      
  subl $0x8, %esp                 #  1     0x59000  3      
  addq %r15, %rsp                 #  2     0x59003  3      
  cmpl $0x11, %esi                #  3     0x59006  3      
  movl %edi, %edi                 #  4     0x59009  2      
  jg .L_590e0                     #  5     0x5900b  6      
  leal 0xffdd829(%rip), %ecx      #  6     0x59011  6      
  movl %edi, %edi                 #  7     0x59017  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  8     0x59019  6      
  nop                             #  9     0x5901f  1      
  movslq %esi, %rax               #  10    0x59020  3      
  leaq (%rcx,%rax,1), %rax        #  11    0x59023  4      
  movl %eax, %eax                 #  12    0x59027  2      
  movzbl (%r15,%rax,1), %eax      #  13    0x59029  5      
  jne .L_59080                    #  14    0x5902e  6      
  nop                             #  15    0x59034  1      
  nop                             #  16    0x59035  1      
.L_59040:                         #        0x59036  0      
  shll $0x2, %esi                 #  17    0x59036  3      
  movzbl %al, %eax                #  18    0x59039  3      
  movslq %esi, %rsi               #  19    0x5903c  3      
  addq %rsi, %rdi                 #  20    0x5903f  3      
  cmpl $0x4, %eax                 #  21    0x59042  3      
  movl %edi, %edi                 #  22    0x59045  2      
  movl (%r15,%rdi,1), %ecx        #  23    0x59047  4      
  je .L_590c0                     #  24    0x5904b  6      
  cmpl $0x8, %eax                 #  25    0x59051  3      
  jne .L_590e0                    #  26    0x59054  6      
  movl %ecx, %ecx                 #  27    0x5905a  2      
  movq %rdx, (%r15,%rcx,1)        #  28    0x5905c  4      
  addl $0x8, %esp                 #  29    0x59060  3      
  addq %r15, %rsp                 #  30    0x59063  3      
  popq %r11                       #  31    0x59066  3      
  andl $0xffffffe0, %r11d         #  32    0x59069  7      
  addq %r15, %r11                 #  33    0x59070  3      
  jmpq %r11                       #  34    0x59073  3      
  nop                             #  35    0x59076  1      
.L_59080:                         #        0x59077  0      
  leal 0x70(%rsi), %ecx           #  36    0x59077  3      
  movslq %ecx, %rcx               #  37    0x5907a  3      
  leaq (%rdi,%rcx,1), %rcx        #  38    0x5907d  4      
  movl %ecx, %ecx                 #  39    0x59081  2      
  cmpb $0x0, 0x8(%r15,%rcx,1)     #  40    0x59083  6      
  je .L_59040                     #  41    0x59089  6      
  shll $0x2, %esi                 #  42    0x5908f  3      
  movslq %esi, %rsi               #  43    0x59092  3      
  addq %rsi, %rdi                 #  44    0x59095  3      
  nop                             #  45    0x59098  1      
  movl %edi, %edi                 #  46    0x59099  2      
  movl %edx, (%r15,%rdi,1)        #  47    0x5909b  4      
  addl $0x8, %esp                 #  48    0x5909f  3      
  addq %r15, %rsp                 #  49    0x590a2  3      
  popq %r11                       #  50    0x590a5  3      
  andl $0xffffffe0, %r11d         #  51    0x590a8  7      
  addq %r15, %r11                 #  52    0x590af  3      
  jmpq %r11                       #  53    0x590b2  3      
  nop                             #  54    0x590b5  1      
.L_590c0:                         #        0x590b6  0      
  movl %ecx, %ecx                 #  55    0x590b6  2      
  movl %edx, (%r15,%rcx,1)        #  56    0x590b8  4      
  addl $0x8, %esp                 #  57    0x590bc  3      
  addq %r15, %rsp                 #  58    0x590bf  3      
  popq %r11                       #  59    0x590c2  3      
  andl $0xffffffe0, %r11d         #  60    0x590c5  7      
  addq %r15, %r11                 #  61    0x590cc  3      
  jmpq %r11                       #  62    0x590cf  3      
  nop                             #  63    0x590d2  1      
.L_590e0:                         #        0x590d3  0      
  nop                             #  64    0x590d3  1      
  nop                             #  65    0x590d4  1      
  callq .abort                    #  66    0x590d5  5      
                                                           
.size _Unwind_SetGR, .-_Unwind_SetGR

