  .text
  .globl wcrtomb
  .type wcrtomb, @function

#! file-offset 0x77140
#! rip-offset  0x77140
#! capacity    352 bytes

# Text                         #  Line  RIP      Bytes  
.wcrtomb:                      #        0x77140  0      
  movq %rbx, -0x20(%rsp)       #  1     0x77140  5      
  movq %r12, -0x18(%rsp)       #  2     0x77145  5      
  movl %edx, %ebx              #  3     0x7714a  2      
  movq %r14, -0x8(%rsp)        #  4     0x7714c  5      
  movq %r13, -0x10(%rsp)       #  5     0x77151  5      
  subl $0x48, %esp             #  6     0x77156  3      
  addq %r15, %rsp              #  7     0x77159  3      
  movl %edi, %r14d             #  8     0x7715c  3      
  nop                          #  9     0x7715f  1      
  movl %esi, 0xc(%rsp)         #  10    0x77160  4      
  nop                          #  11    0x77164  1      
  nop                          #  12    0x77165  1      
  callq .__nacl_read_tp        #  13    0x77166  5      
  leaq -0x480(%rax), %rax      #  14    0x7716b  7      
  testq %rbx, %rbx             #  15    0x77172  3      
  movl %eax, %eax              #  16    0x77175  2      
  movl (%r15,%rax,1), %r12d    #  17    0x77177  4      
  leal 0x114(%r12), %eax       #  18    0x7717b  8      
  cmoveq %rax, %rbx            #  19    0x77183  4      
  testq %r14, %r14             #  20    0x77187  3      
  nop                          #  21    0x7718a  1      
  je .L_77240                  #  22    0x7718b  6      
  movl 0xffb97f8(%rip), %r13d  #  23    0x77191  7      
  nop                          #  24    0x77198  1      
  callq .__locale_charset      #  25    0x77199  5      
  movl %ebx, %r8d              #  26    0x7719e  3      
  movl %eax, %ecx              #  27    0x771a1  2      
  movl 0xc(%rsp), %edx         #  28    0x771a3  4      
  movl %r14d, %esi             #  29    0x771a7  3      
  movl %r12d, %edi             #  30    0x771aa  3      
  nop                          #  31    0x771ad  1      
  andl $0xffffffe0, %r13d      #  32    0x771ae  7      
  addq %r15, %r13              #  33    0x771b5  3      
  callq %r13                   #  34    0x771b8  3      
.L_771e0:                      #        0x771bb  0      
  cmpl $0xffffffff, %eax       #  35    0x771bb  5      
  jne .L_77200                 #  36    0x771c0  6      
  movl %ebx, %ebx              #  37    0x771c6  2      
  movl $0x0, (%r15,%rbx,1)     #  38    0x771c8  8      
  movl %r12d, %r12d            #  39    0x771d0  3      
  movl $0x54, (%r15,%r12,1)    #  40    0x771d3  8      
  nop                          #  41    0x771db  1      
.L_77200:                      #        0x771dc  0      
  movq 0x28(%rsp), %rbx        #  42    0x771dc  5      
  movq 0x30(%rsp), %r12        #  43    0x771e1  5      
  movq 0x38(%rsp), %r13        #  44    0x771e6  5      
  movq 0x40(%rsp), %r14        #  45    0x771eb  5      
  addl $0x48, %esp             #  46    0x771f0  3      
  addq %r15, %rsp              #  47    0x771f3  3      
  popq %r11                    #  48    0x771f6  3      
  nop                          #  49    0x771f9  1      
  andl $0xffffffe0, %r11d      #  50    0x771fa  7      
  addq %r15, %r11              #  51    0x77201  3      
  jmpq %r11                    #  52    0x77204  3      
  nop                          #  53    0x77207  1      
  nop                          #  54    0x77208  1      
.L_77240:                      #        0x77209  0      
  movl 0xffb9780(%rip), %r13d  #  55    0x77209  7      
  nop                          #  56    0x77210  1      
  nop                          #  57    0x77211  1      
  callq .__locale_charset      #  58    0x77212  5      
  leal 0x10(%rsp), %esi        #  59    0x77217  4      
  movl %eax, %ecx              #  60    0x7721b  2      
  movl %ebx, %r8d              #  61    0x7721d  3      
  xorl %edx, %edx              #  62    0x77220  2      
  movl %r12d, %edi             #  63    0x77222  3      
  nop                          #  64    0x77225  1      
  andl $0xffffffe0, %r13d      #  65    0x77226  7      
  addq %r15, %r13              #  66    0x7722d  3      
  callq %r13                   #  67    0x77230  3      
  jmpq .L_771e0                #  68    0x77233  5      
  nop                          #  69    0x77238  1      
  nop                          #  70    0x77239  1      
                                                        
.size wcrtomb, .-wcrtomb

