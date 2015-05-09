  .text
  .globl _Unwind_GetGR
  .type _Unwind_GetGR, @function

#! file-offset 0x59060
#! rip-offset  0x59060
#! capacity    288 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_GetGR:                   #        0x59060  0      
  subl $0x8, %esp                 #  1     0x59060  3      
  addq %r15, %rsp                 #  2     0x59063  3      
  cmpl $0x11, %esi                #  3     0x59066  3      
  movl %edi, %edi                 #  4     0x59069  2      
  jg .L_59160                     #  5     0x5906b  6      
  leal 0xffdd7c9(%rip), %edx      #  6     0x59071  6      
  movslq %esi, %rax               #  7     0x59077  3      
  nop                             #  8     0x5907a  1      
  movl %edi, %edi                 #  9     0x5907b  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  10    0x5907d  6      
  leaq (%rdx,%rax,1), %rax        #  11    0x59083  4      
  leal (,%rsi,4), %edx            #  12    0x59087  7      
  movslq %edx, %rdx               #  13    0x5908e  3      
  movl %eax, %eax                 #  14    0x59091  2      
  movzbl (%r15,%rax,1), %ecx      #  15    0x59093  5      
  nop                             #  16    0x59098  1      
  leaq (%rdi,%rdx,1), %rdx        #  17    0x59099  4      
  movl %edx, %edx                 #  18    0x5909d  2      
  movl (%r15,%rdx,1), %edx        #  19    0x5909f  4      
  jne .L_59100                    #  20    0x590a3  6      
  movzbl %cl, %eax                #  21    0x590a9  3      
  cmpl $0x4, %eax                 #  22    0x590ac  3      
  je .L_59140                     #  23    0x590af  6      
  nop                             #  24    0x590b5  1      
.L_590c0:                         #        0x590b6  0      
  cmpl $0x8, %eax                 #  25    0x590b6  3      
  jne .L_59160                    #  26    0x590b9  6      
  movl %edx, %edx                 #  27    0x590bf  2      
  movq (%r15,%rdx,1), %rax        #  28    0x590c1  4      
  xchgw %ax, %ax                  #  29    0x590c5  3      
  nop                             #  30    0x590c8  1      
.L_590e0:                         #        0x590c9  0      
  addl $0x8, %esp                 #  31    0x590c9  3      
  addq %r15, %rsp                 #  32    0x590cc  3      
  popq %r11                       #  33    0x590cf  3      
  andl $0xffffffe0, %r11d         #  34    0x590d2  7      
  addq %r15, %r11                 #  35    0x590d9  3      
  jmpq %r11                       #  36    0x590dc  3      
  nop                             #  37    0x590df  1      
.L_59100:                         #        0x590e0  0      
  addl $0x70, %esi                #  38    0x590e0  3      
  movq %rdx, %rax                 #  39    0x590e3  3      
  movslq %esi, %rsi               #  40    0x590e6  3      
  addq %rsi, %rdi                 #  41    0x590e9  3      
  movl %edi, %edi                 #  42    0x590ec  2      
  cmpb $0x0, 0x8(%r15,%rdi,1)     #  43    0x590ee  6      
  jne .L_590e0                    #  44    0x590f4  6      
  movzbl %cl, %eax                #  45    0x590fa  3      
  cmpl $0x4, %eax                 #  46    0x590fd  3      
  nop                             #  47    0x59100  1      
  jne .L_590c0                    #  48    0x59101  6      
  nop                             #  49    0x59107  1      
  nop                             #  50    0x59108  1      
.L_59140:                         #        0x59109  0      
  movl %edx, %edx                 #  51    0x59109  2      
  movl (%r15,%rdx,1), %eax        #  52    0x5910b  4      
  addl $0x8, %esp                 #  53    0x5910f  3      
  addq %r15, %rsp                 #  54    0x59112  3      
  popq %r11                       #  55    0x59115  3      
  andl $0xffffffe0, %r11d         #  56    0x59118  7      
  addq %r15, %r11                 #  57    0x5911f  3      
  jmpq %r11                       #  58    0x59122  3      
  nop                             #  59    0x59125  1      
.L_59160:                         #        0x59126  0      
  nop                             #  60    0x59126  1      
  nop                             #  61    0x59127  1      
  callq .abort                    #  62    0x59128  5      
                                                           
.size _Unwind_GetGR, .-_Unwind_GetGR

