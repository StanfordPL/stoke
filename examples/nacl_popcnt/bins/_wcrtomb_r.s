  .text
  .globl _wcrtomb_r
  .type _wcrtomb_r, @function

#! file-offset 0x772c0
#! rip-offset  0x772c0
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
._wcrtomb_r:                   #        0x772c0  0      
  movq %r12, -0x18(%rsp)       #  1     0x772c0  5      
  movl %edi, %r12d             #  2     0x772c5  3      
  movq %rbx, -0x20(%rsp)       #  3     0x772c8  5      
  leal 0x114(%r12), %eax       #  4     0x772cd  8      
  movl %ecx, %ebx              #  5     0x772d5  2      
  movq %r14, -0x8(%rsp)        #  6     0x772d7  5      
  nop                          #  7     0x772dc  1      
  movq %r13, -0x10(%rsp)       #  8     0x772dd  5      
  movl %esi, %r14d             #  9     0x772e2  3      
  subl $0x48, %esp             #  10    0x772e5  3      
  addq %r15, %rsp              #  11    0x772e8  3      
  testq %rbx, %rbx             #  12    0x772eb  3      
  cmoveq %rax, %rbx            #  13    0x772ee  4      
  testq %r14, %r14             #  14    0x772f2  3      
  je .L_773a0                  #  15    0x772f5  6      
  xchgw %ax, %ax               #  16    0x772fb  3      
  movl 0xffb968b(%rip), %r13d  #  17    0x772fe  7      
  movl %edx, 0x8(%rsp)         #  18    0x77305  4      
  nop                          #  19    0x77309  1      
  nop                          #  20    0x7730a  1      
  callq .__locale_charset      #  21    0x7730b  5      
  movl %ebx, %r8d              #  22    0x77310  3      
  movl %eax, %ecx              #  23    0x77313  2      
  movl 0x8(%rsp), %edx         #  24    0x77315  4      
  movl %r14d, %esi             #  25    0x77319  3      
  movl %r12d, %edi             #  26    0x7731c  3      
  nop                          #  27    0x7731f  1      
  andl $0xffffffe0, %r13d      #  28    0x77320  7      
  addq %r15, %r13              #  29    0x77327  3      
  callq %r13                   #  30    0x7732a  3      
.L_77340:                      #        0x7732d  0      
  cmpl $0xffffffff, %eax       #  31    0x7732d  5      
  jne .L_77360                 #  32    0x77332  6      
  movl %ebx, %ebx              #  33    0x77338  2      
  movl $0x0, (%r15,%rbx,1)     #  34    0x7733a  8      
  movl %r12d, %r12d            #  35    0x77342  3      
  movl $0x54, (%r15,%r12,1)    #  36    0x77345  8      
  nop                          #  37    0x7734d  1      
.L_77360:                      #        0x7734e  0      
  movq 0x28(%rsp), %rbx        #  38    0x7734e  5      
  movq 0x30(%rsp), %r12        #  39    0x77353  5      
  movq 0x38(%rsp), %r13        #  40    0x77358  5      
  movq 0x40(%rsp), %r14        #  41    0x7735d  5      
  addl $0x48, %esp             #  42    0x77362  3      
  addq %r15, %rsp              #  43    0x77365  3      
  popq %r11                    #  44    0x77368  3      
  nop                          #  45    0x7736b  1      
  andl $0xffffffe0, %r11d      #  46    0x7736c  7      
  addq %r15, %r11              #  47    0x77373  3      
  jmpq %r11                    #  48    0x77376  3      
  nop                          #  49    0x77379  1      
  nop                          #  50    0x7737a  1      
.L_773a0:                      #        0x7737b  0      
  movl 0xffb960e(%rip), %r13d  #  51    0x7737b  7      
  nop                          #  52    0x77382  1      
  nop                          #  53    0x77383  1      
  callq .__locale_charset      #  54    0x77384  5      
  leal 0x10(%rsp), %esi        #  55    0x77389  4      
  movl %eax, %ecx              #  56    0x7738d  2      
  movl %ebx, %r8d              #  57    0x7738f  3      
  xorl %edx, %edx              #  58    0x77392  2      
  movl %r12d, %edi             #  59    0x77394  3      
  nop                          #  60    0x77397  1      
  andl $0xffffffe0, %r13d      #  61    0x77398  7      
  addq %r15, %r13              #  62    0x7739f  3      
  callq %r13                   #  63    0x773a2  3      
  jmpq .L_77340                #  64    0x773a5  5      
  nop                          #  65    0x773aa  1      
  nop                          #  66    0x773ab  1      
  nop                          #  67    0x773ac  1      
  nop                          #  68    0x773ad  1      
  nop                          #  69    0x773ae  1      
  nop                          #  70    0x773af  1      
  nop                          #  71    0x773b0  1      
  nop                          #  72    0x773b1  1      
  nop                          #  73    0x773b2  1      
  nop                          #  74    0x773b3  1      
  nop                          #  75    0x773b4  1      
  nop                          #  76    0x773b5  1      
  nop                          #  77    0x773b6  1      
  nop                          #  78    0x773b7  1      
  nop                          #  79    0x773b8  1      
  nop                          #  80    0x773b9  1      
  nop                          #  81    0x773ba  1      
  nop                          #  82    0x773bb  1      
  nop                          #  83    0x773bc  1      
  nop                          #  84    0x773bd  1      
  nop                          #  85    0x773be  1      
  nop                          #  86    0x773bf  1      
  nop                          #  87    0x773c0  1      
  nop                          #  88    0x773c1  1      
  nop                          #  89    0x773c2  1      
  nop                          #  90    0x773c3  1      
  nop                          #  91    0x773c4  1      
                                                        
.size _wcrtomb_r, .-_wcrtomb_r

