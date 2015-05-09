  .text
  .globl _wcrtomb_r
  .type _wcrtomb_r, @function

#! file-offset 0x772a0
#! rip-offset  0x772a0
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
._wcrtomb_r:                   #        0x772a0  0      
  movq %r12, -0x18(%rsp)       #  1     0x772a0  5      
  movl %edi, %r12d             #  2     0x772a5  3      
  movq %rbx, -0x20(%rsp)       #  3     0x772a8  5      
  leal 0x114(%r12), %eax       #  4     0x772ad  8      
  movl %ecx, %ebx              #  5     0x772b5  2      
  movq %r14, -0x8(%rsp)        #  6     0x772b7  5      
  nop                          #  7     0x772bc  1      
  movq %r13, -0x10(%rsp)       #  8     0x772bd  5      
  movl %esi, %r14d             #  9     0x772c2  3      
  subl $0x48, %esp             #  10    0x772c5  3      
  addq %r15, %rsp              #  11    0x772c8  3      
  testq %rbx, %rbx             #  12    0x772cb  3      
  cmoveq %rax, %rbx            #  13    0x772ce  4      
  testq %r14, %r14             #  14    0x772d2  3      
  je .L_77380                  #  15    0x772d5  6      
  xchgw %ax, %ax               #  16    0x772db  3      
  movl 0xffb96ab(%rip), %r13d  #  17    0x772de  7      
  movl %edx, 0x8(%rsp)         #  18    0x772e5  4      
  nop                          #  19    0x772e9  1      
  nop                          #  20    0x772ea  1      
  callq .__locale_charset      #  21    0x772eb  5      
  movl %ebx, %r8d              #  22    0x772f0  3      
  movl %eax, %ecx              #  23    0x772f3  2      
  movl 0x8(%rsp), %edx         #  24    0x772f5  4      
  movl %r14d, %esi             #  25    0x772f9  3      
  movl %r12d, %edi             #  26    0x772fc  3      
  nop                          #  27    0x772ff  1      
  andl $0xffffffe0, %r13d      #  28    0x77300  7      
  addq %r15, %r13              #  29    0x77307  3      
  callq %r13                   #  30    0x7730a  3      
.L_77320:                      #        0x7730d  0      
  cmpl $0xffffffff, %eax       #  31    0x7730d  5      
  jne .L_77340                 #  32    0x77312  6      
  movl %ebx, %ebx              #  33    0x77318  2      
  movl $0x0, (%r15,%rbx,1)     #  34    0x7731a  8      
  movl %r12d, %r12d            #  35    0x77322  3      
  movl $0x54, (%r15,%r12,1)    #  36    0x77325  8      
  nop                          #  37    0x7732d  1      
.L_77340:                      #        0x7732e  0      
  movq 0x28(%rsp), %rbx        #  38    0x7732e  5      
  movq 0x30(%rsp), %r12        #  39    0x77333  5      
  movq 0x38(%rsp), %r13        #  40    0x77338  5      
  movq 0x40(%rsp), %r14        #  41    0x7733d  5      
  addl $0x48, %esp             #  42    0x77342  3      
  addq %r15, %rsp              #  43    0x77345  3      
  popq %r11                    #  44    0x77348  3      
  nop                          #  45    0x7734b  1      
  andl $0xffffffe0, %r11d      #  46    0x7734c  7      
  addq %r15, %r11              #  47    0x77353  3      
  jmpq %r11                    #  48    0x77356  3      
  nop                          #  49    0x77359  1      
  nop                          #  50    0x7735a  1      
.L_77380:                      #        0x7735b  0      
  movl 0xffb962e(%rip), %r13d  #  51    0x7735b  7      
  nop                          #  52    0x77362  1      
  nop                          #  53    0x77363  1      
  callq .__locale_charset      #  54    0x77364  5      
  leal 0x10(%rsp), %esi        #  55    0x77369  4      
  movl %eax, %ecx              #  56    0x7736d  2      
  movl %ebx, %r8d              #  57    0x7736f  3      
  xorl %edx, %edx              #  58    0x77372  2      
  movl %r12d, %edi             #  59    0x77374  3      
  nop                          #  60    0x77377  1      
  andl $0xffffffe0, %r13d      #  61    0x77378  7      
  addq %r15, %r13              #  62    0x7737f  3      
  callq %r13                   #  63    0x77382  3      
  jmpq .L_77320                #  64    0x77385  5      
  nop                          #  65    0x7738a  1      
  nop                          #  66    0x7738b  1      
  nop                          #  67    0x7738c  1      
  nop                          #  68    0x7738d  1      
  nop                          #  69    0x7738e  1      
  nop                          #  70    0x7738f  1      
  nop                          #  71    0x77390  1      
  nop                          #  72    0x77391  1      
  nop                          #  73    0x77392  1      
  nop                          #  74    0x77393  1      
  nop                          #  75    0x77394  1      
  nop                          #  76    0x77395  1      
  nop                          #  77    0x77396  1      
  nop                          #  78    0x77397  1      
  nop                          #  79    0x77398  1      
  nop                          #  80    0x77399  1      
  nop                          #  81    0x7739a  1      
  nop                          #  82    0x7739b  1      
  nop                          #  83    0x7739c  1      
  nop                          #  84    0x7739d  1      
  nop                          #  85    0x7739e  1      
  nop                          #  86    0x7739f  1      
  nop                          #  87    0x773a0  1      
  nop                          #  88    0x773a1  1      
  nop                          #  89    0x773a2  1      
  nop                          #  90    0x773a3  1      
  nop                          #  91    0x773a4  1      
                                                        
.size _wcrtomb_r, .-_wcrtomb_r

