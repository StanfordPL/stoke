  .text
  .globl _Unwind_GetGR
  .type _Unwind_GetGR, @function

#! file-offset 0x59100
#! rip-offset  0x59100
#! capacity    288 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_GetGR:                   #        0x59100  0      
  subl $0x8, %esp                 #  1     0x59100  3      
  addq %r15, %rsp                 #  2     0x59103  3      
  cmpl $0x11, %esi                #  3     0x59106  3      
  movl %edi, %edi                 #  4     0x59109  2      
  jg .L_59200                     #  5     0x5910b  6      
  leal 0xffdd729(%rip), %edx      #  6     0x59111  6      
  movslq %esi, %rax               #  7     0x59117  3      
  nop                             #  8     0x5911a  1      
  movl %edi, %edi                 #  9     0x5911b  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  10    0x5911d  6      
  leaq (%rdx,%rax,1), %rax        #  11    0x59123  4      
  leal (,%rsi,4), %edx            #  12    0x59127  7      
  movslq %edx, %rdx               #  13    0x5912e  3      
  movl %eax, %eax                 #  14    0x59131  2      
  movzbl (%r15,%rax,1), %ecx      #  15    0x59133  5      
  nop                             #  16    0x59138  1      
  leaq (%rdi,%rdx,1), %rdx        #  17    0x59139  4      
  movl %edx, %edx                 #  18    0x5913d  2      
  movl (%r15,%rdx,1), %edx        #  19    0x5913f  4      
  jne .L_591a0                    #  20    0x59143  6      
  movzbl %cl, %eax                #  21    0x59149  3      
  cmpl $0x4, %eax                 #  22    0x5914c  3      
  je .L_591e0                     #  23    0x5914f  6      
  nop                             #  24    0x59155  1      
.L_59160:                         #        0x59156  0      
  cmpl $0x8, %eax                 #  25    0x59156  3      
  jne .L_59200                    #  26    0x59159  6      
  movl %edx, %edx                 #  27    0x5915f  2      
  movq (%r15,%rdx,1), %rax        #  28    0x59161  4      
  xchgw %ax, %ax                  #  29    0x59165  3      
  nop                             #  30    0x59168  1      
.L_59180:                         #        0x59169  0      
  addl $0x8, %esp                 #  31    0x59169  3      
  addq %r15, %rsp                 #  32    0x5916c  3      
  popq %r11                       #  33    0x5916f  3      
  andl $0xffffffe0, %r11d         #  34    0x59172  7      
  addq %r15, %r11                 #  35    0x59179  3      
  jmpq %r11                       #  36    0x5917c  3      
  nop                             #  37    0x5917f  1      
.L_591a0:                         #        0x59180  0      
  addl $0x70, %esi                #  38    0x59180  3      
  movq %rdx, %rax                 #  39    0x59183  3      
  movslq %esi, %rsi               #  40    0x59186  3      
  addq %rsi, %rdi                 #  41    0x59189  3      
  movl %edi, %edi                 #  42    0x5918c  2      
  cmpb $0x0, 0x8(%r15,%rdi,1)     #  43    0x5918e  6      
  jne .L_59180                    #  44    0x59194  6      
  movzbl %cl, %eax                #  45    0x5919a  3      
  cmpl $0x4, %eax                 #  46    0x5919d  3      
  nop                             #  47    0x591a0  1      
  jne .L_59160                    #  48    0x591a1  6      
  nop                             #  49    0x591a7  1      
  nop                             #  50    0x591a8  1      
.L_591e0:                         #        0x591a9  0      
  movl %edx, %edx                 #  51    0x591a9  2      
  movl (%r15,%rdx,1), %eax        #  52    0x591ab  4      
  addl $0x8, %esp                 #  53    0x591af  3      
  addq %r15, %rsp                 #  54    0x591b2  3      
  popq %r11                       #  55    0x591b5  3      
  andl $0xffffffe0, %r11d         #  56    0x591b8  7      
  addq %r15, %r11                 #  57    0x591bf  3      
  jmpq %r11                       #  58    0x591c2  3      
  nop                             #  59    0x591c5  1      
.L_59200:                         #        0x591c6  0      
  nop                             #  60    0x591c6  1      
  nop                             #  61    0x591c7  1      
  callq .abort                    #  62    0x591c8  5      
                                                           
.size _Unwind_GetGR, .-_Unwind_GetGR

