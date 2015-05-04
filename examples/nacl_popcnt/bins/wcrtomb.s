  .text
  .globl wcrtomb
  .type wcrtomb, @function

#! file-offset 0x771e0
#! rip-offset  0x771e0
#! capacity    352 bytes

# Text                         #  Line  RIP      Bytes  
.wcrtomb:                      #        0x771e0  0      
  movq %rbx, -0x20(%rsp)       #  1     0x771e0  5      
  movq %r12, -0x18(%rsp)       #  2     0x771e5  5      
  movl %edx, %ebx              #  3     0x771ea  2      
  movq %r14, -0x8(%rsp)        #  4     0x771ec  5      
  movq %r13, -0x10(%rsp)       #  5     0x771f1  5      
  subl $0x48, %esp             #  6     0x771f6  3      
  addq %r15, %rsp              #  7     0x771f9  3      
  movl %edi, %r14d             #  8     0x771fc  3      
  nop                          #  9     0x771ff  1      
  movl %esi, 0xc(%rsp)         #  10    0x77200  4      
  nop                          #  11    0x77204  1      
  nop                          #  12    0x77205  1      
  callq .__nacl_read_tp        #  13    0x77206  5      
  leaq -0x480(%rax), %rax      #  14    0x7720b  7      
  testq %rbx, %rbx             #  15    0x77212  3      
  movl %eax, %eax              #  16    0x77215  2      
  movl (%r15,%rax,1), %r12d    #  17    0x77217  4      
  leal 0x114(%r12), %eax       #  18    0x7721b  8      
  cmoveq %rax, %rbx            #  19    0x77223  4      
  testq %r14, %r14             #  20    0x77227  3      
  nop                          #  21    0x7722a  1      
  je .L_772e0                  #  22    0x7722b  6      
  movl 0xffb9758(%rip), %r13d  #  23    0x77231  7      
  nop                          #  24    0x77238  1      
  callq .__locale_charset      #  25    0x77239  5      
  movl %ebx, %r8d              #  26    0x7723e  3      
  movl %eax, %ecx              #  27    0x77241  2      
  movl 0xc(%rsp), %edx         #  28    0x77243  4      
  movl %r14d, %esi             #  29    0x77247  3      
  movl %r12d, %edi             #  30    0x7724a  3      
  nop                          #  31    0x7724d  1      
  andl $0xffffffe0, %r13d      #  32    0x7724e  7      
  addq %r15, %r13              #  33    0x77255  3      
  callq %r13                   #  34    0x77258  3      
.L_77280:                      #        0x7725b  0      
  cmpl $0xffffffff, %eax       #  35    0x7725b  5      
  jne .L_772a0                 #  36    0x77260  6      
  movl %ebx, %ebx              #  37    0x77266  2      
  movl $0x0, (%r15,%rbx,1)     #  38    0x77268  8      
  movl %r12d, %r12d            #  39    0x77270  3      
  movl $0x54, (%r15,%r12,1)    #  40    0x77273  8      
  nop                          #  41    0x7727b  1      
.L_772a0:                      #        0x7727c  0      
  movq 0x28(%rsp), %rbx        #  42    0x7727c  5      
  movq 0x30(%rsp), %r12        #  43    0x77281  5      
  movq 0x38(%rsp), %r13        #  44    0x77286  5      
  movq 0x40(%rsp), %r14        #  45    0x7728b  5      
  addl $0x48, %esp             #  46    0x77290  3      
  addq %r15, %rsp              #  47    0x77293  3      
  popq %r11                    #  48    0x77296  3      
  nop                          #  49    0x77299  1      
  andl $0xffffffe0, %r11d      #  50    0x7729a  7      
  addq %r15, %r11              #  51    0x772a1  3      
  jmpq %r11                    #  52    0x772a4  3      
  nop                          #  53    0x772a7  1      
  nop                          #  54    0x772a8  1      
.L_772e0:                      #        0x772a9  0      
  movl 0xffb96e0(%rip), %r13d  #  55    0x772a9  7      
  nop                          #  56    0x772b0  1      
  nop                          #  57    0x772b1  1      
  callq .__locale_charset      #  58    0x772b2  5      
  leal 0x10(%rsp), %esi        #  59    0x772b7  4      
  movl %eax, %ecx              #  60    0x772bb  2      
  movl %ebx, %r8d              #  61    0x772bd  3      
  xorl %edx, %edx              #  62    0x772c0  2      
  movl %r12d, %edi             #  63    0x772c2  3      
  nop                          #  64    0x772c5  1      
  andl $0xffffffe0, %r13d      #  65    0x772c6  7      
  addq %r15, %r13              #  66    0x772cd  3      
  callq %r13                   #  67    0x772d0  3      
  jmpq .L_77280                #  68    0x772d3  5      
  nop                          #  69    0x772d8  1      
  nop                          #  70    0x772d9  1      
                                                        
.size wcrtomb, .-wcrtomb

