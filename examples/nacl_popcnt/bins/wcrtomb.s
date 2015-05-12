  .text
  .globl wcrtomb
  .type wcrtomb, @function

#! file-offset 0x77160
#! rip-offset  0x77160
#! capacity    352 bytes

# Text                         #  Line  RIP      Bytes  
.wcrtomb:                      #        0x77160  0      
  movq %rbx, -0x20(%rsp)       #  1     0x77160  5      
  movq %r12, -0x18(%rsp)       #  2     0x77165  5      
  movl %edx, %ebx              #  3     0x7716a  2      
  movq %r14, -0x8(%rsp)        #  4     0x7716c  5      
  movq %r13, -0x10(%rsp)       #  5     0x77171  5      
  subl $0x48, %esp             #  6     0x77176  3      
  addq %r15, %rsp              #  7     0x77179  3      
  movl %edi, %r14d             #  8     0x7717c  3      
  nop                          #  9     0x7717f  1      
  movl %esi, 0xc(%rsp)         #  10    0x77180  4      
  nop                          #  11    0x77184  1      
  nop                          #  12    0x77185  1      
  callq .__nacl_read_tp        #  13    0x77186  5      
  leaq -0x480(%rax), %rax      #  14    0x7718b  7      
  testq %rbx, %rbx             #  15    0x77192  3      
  movl %eax, %eax              #  16    0x77195  2      
  movl (%r15,%rax,1), %r12d    #  17    0x77197  4      
  leal 0x114(%r12), %eax       #  18    0x7719b  8      
  cmoveq %rax, %rbx            #  19    0x771a3  4      
  testq %r14, %r14             #  20    0x771a7  3      
  nop                          #  21    0x771aa  1      
  je .L_77260                  #  22    0x771ab  6      
  movl 0xffb97d8(%rip), %r13d  #  23    0x771b1  7      
  nop                          #  24    0x771b8  1      
  callq .__locale_charset      #  25    0x771b9  5      
  movl %ebx, %r8d              #  26    0x771be  3      
  movl %eax, %ecx              #  27    0x771c1  2      
  movl 0xc(%rsp), %edx         #  28    0x771c3  4      
  movl %r14d, %esi             #  29    0x771c7  3      
  movl %r12d, %edi             #  30    0x771ca  3      
  nop                          #  31    0x771cd  1      
  andl $0xffffffe0, %r13d      #  32    0x771ce  7      
  addq %r15, %r13              #  33    0x771d5  3      
  callq %r13                   #  34    0x771d8  3      
.L_77200:                      #        0x771db  0      
  cmpl $0xffffffff, %eax       #  35    0x771db  5      
  jne .L_77220                 #  36    0x771e0  6      
  movl %ebx, %ebx              #  37    0x771e6  2      
  movl $0x0, (%r15,%rbx,1)     #  38    0x771e8  8      
  movl %r12d, %r12d            #  39    0x771f0  3      
  movl $0x54, (%r15,%r12,1)    #  40    0x771f3  8      
  nop                          #  41    0x771fb  1      
.L_77220:                      #        0x771fc  0      
  movq 0x28(%rsp), %rbx        #  42    0x771fc  5      
  movq 0x30(%rsp), %r12        #  43    0x77201  5      
  movq 0x38(%rsp), %r13        #  44    0x77206  5      
  movq 0x40(%rsp), %r14        #  45    0x7720b  5      
  addl $0x48, %esp             #  46    0x77210  3      
  addq %r15, %rsp              #  47    0x77213  3      
  popq %r11                    #  48    0x77216  3      
  nop                          #  49    0x77219  1      
  andl $0xffffffe0, %r11d      #  50    0x7721a  7      
  addq %r15, %r11              #  51    0x77221  3      
  jmpq %r11                    #  52    0x77224  3      
  nop                          #  53    0x77227  1      
  nop                          #  54    0x77228  1      
.L_77260:                      #        0x77229  0      
  movl 0xffb9760(%rip), %r13d  #  55    0x77229  7      
  nop                          #  56    0x77230  1      
  nop                          #  57    0x77231  1      
  callq .__locale_charset      #  58    0x77232  5      
  leal 0x10(%rsp), %esi        #  59    0x77237  4      
  movl %eax, %ecx              #  60    0x7723b  2      
  movl %ebx, %r8d              #  61    0x7723d  3      
  xorl %edx, %edx              #  62    0x77240  2      
  movl %r12d, %edi             #  63    0x77242  3      
  nop                          #  64    0x77245  1      
  andl $0xffffffe0, %r13d      #  65    0x77246  7      
  addq %r15, %r13              #  66    0x7724d  3      
  callq %r13                   #  67    0x77250  3      
  jmpq .L_77200                #  68    0x77253  5      
  nop                          #  69    0x77258  1      
  nop                          #  70    0x77259  1      
                                                        
.size wcrtomb, .-wcrtomb

