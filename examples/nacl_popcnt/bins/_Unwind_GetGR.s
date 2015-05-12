  .text
  .globl _Unwind_GetGR
  .type _Unwind_GetGR, @function

#! file-offset 0x59080
#! rip-offset  0x59080
#! capacity    288 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_GetGR:                   #        0x59080  0      
  subl $0x8, %esp                 #  1     0x59080  3      
  addq %r15, %rsp                 #  2     0x59083  3      
  cmpl $0x11, %esi                #  3     0x59086  3      
  movl %edi, %edi                 #  4     0x59089  2      
  jg .L_59180                     #  5     0x5908b  6      
  leal 0xffdd7a9(%rip), %edx      #  6     0x59091  6      
  movslq %esi, %rax               #  7     0x59097  3      
  nop                             #  8     0x5909a  1      
  movl %edi, %edi                 #  9     0x5909b  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  10    0x5909d  6      
  leaq (%rdx,%rax,1), %rax        #  11    0x590a3  4      
  leal (,%rsi,4), %edx            #  12    0x590a7  7      
  movslq %edx, %rdx               #  13    0x590ae  3      
  movl %eax, %eax                 #  14    0x590b1  2      
  movzbl (%r15,%rax,1), %ecx      #  15    0x590b3  5      
  nop                             #  16    0x590b8  1      
  leaq (%rdi,%rdx,1), %rdx        #  17    0x590b9  4      
  movl %edx, %edx                 #  18    0x590bd  2      
  movl (%r15,%rdx,1), %edx        #  19    0x590bf  4      
  jne .L_59120                    #  20    0x590c3  6      
  movzbl %cl, %eax                #  21    0x590c9  3      
  cmpl $0x4, %eax                 #  22    0x590cc  3      
  je .L_59160                     #  23    0x590cf  6      
  nop                             #  24    0x590d5  1      
.L_590e0:                         #        0x590d6  0      
  cmpl $0x8, %eax                 #  25    0x590d6  3      
  jne .L_59180                    #  26    0x590d9  6      
  movl %edx, %edx                 #  27    0x590df  2      
  movq (%r15,%rdx,1), %rax        #  28    0x590e1  4      
  xchgw %ax, %ax                  #  29    0x590e5  3      
  nop                             #  30    0x590e8  1      
.L_59100:                         #        0x590e9  0      
  addl $0x8, %esp                 #  31    0x590e9  3      
  addq %r15, %rsp                 #  32    0x590ec  3      
  popq %r11                       #  33    0x590ef  3      
  andl $0xffffffe0, %r11d         #  34    0x590f2  7      
  addq %r15, %r11                 #  35    0x590f9  3      
  jmpq %r11                       #  36    0x590fc  3      
  nop                             #  37    0x590ff  1      
.L_59120:                         #        0x59100  0      
  addl $0x70, %esi                #  38    0x59100  3      
  movq %rdx, %rax                 #  39    0x59103  3      
  movslq %esi, %rsi               #  40    0x59106  3      
  addq %rsi, %rdi                 #  41    0x59109  3      
  movl %edi, %edi                 #  42    0x5910c  2      
  cmpb $0x0, 0x8(%r15,%rdi,1)     #  43    0x5910e  6      
  jne .L_59100                    #  44    0x59114  6      
  movzbl %cl, %eax                #  45    0x5911a  3      
  cmpl $0x4, %eax                 #  46    0x5911d  3      
  nop                             #  47    0x59120  1      
  jne .L_590e0                    #  48    0x59121  6      
  nop                             #  49    0x59127  1      
  nop                             #  50    0x59128  1      
.L_59160:                         #        0x59129  0      
  movl %edx, %edx                 #  51    0x59129  2      
  movl (%r15,%rdx,1), %eax        #  52    0x5912b  4      
  addl $0x8, %esp                 #  53    0x5912f  3      
  addq %r15, %rsp                 #  54    0x59132  3      
  popq %r11                       #  55    0x59135  3      
  andl $0xffffffe0, %r11d         #  56    0x59138  7      
  addq %r15, %r11                 #  57    0x5913f  3      
  jmpq %r11                       #  58    0x59142  3      
  nop                             #  59    0x59145  1      
.L_59180:                         #        0x59146  0      
  nop                             #  60    0x59146  1      
  nop                             #  61    0x59147  1      
  callq .abort                    #  62    0x59148  5      
                                                           
.size _Unwind_GetGR, .-_Unwind_GetGR

