  .text
  .globl pthread_setspecific
  .type pthread_setspecific, @function

#! file-offset 0x40300
#! rip-offset  0x40300
#! capacity    352 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_setspecific:            #        0x40300  0      
  movq %rbx, -0x20(%rsp)         #  1     0x40300  5      
  movq %r13, -0x10(%rsp)         #  2     0x40305  5      
  movl %edi, %ebx                #  3     0x4030a  2      
  movq %r12, -0x18(%rsp)         #  4     0x4030c  5      
  movq %r14, -0x8(%rsp)          #  5     0x40311  5      
  subl $0x28, %esp               #  6     0x40316  3      
  addq %r15, %rsp                #  7     0x40319  3      
  nop                            #  8     0x4031c  1      
  cmpl $0x1ff, %edi              #  9     0x4031d  6      
  movl %esi, %r13d               #  10    0x40323  3      
  ja .L_403a0                    #  11    0x40326  6      
  leal (,%rbx,8), %eax           #  12    0x4032c  7      
  cltq                           #  13    0x40333  2      
  addq $0x10030da4, %rax         #  14    0x40335  6      
  movl %eax, %eax                #  15    0x4033b  2      
  movl (%r15,%rax,1), %r12d      #  16    0x4033d  4      
  testb $0x1, %r12b              #  17    0x40341  4      
  je .L_403a0                    #  18    0x40345  6      
  nop                            #  19    0x4034b  1      
  nop                            #  20    0x4034c  1      
  callq .__nacl_read_tp          #  21    0x4034d  5      
  movl %eax, %eax                #  22    0x40352  2      
  movl -0x4(%r15,%rax,1), %r14d  #  23    0x40354  5      
  testq %r14, %r14               #  24    0x40359  3      
  je .L_40400                    #  25    0x4035c  6      
  nop                            #  26    0x40362  1      
.L_40380:                        #        0x40363  0      
  shll $0x3, %ebx                #  27    0x40363  3      
  xorl %eax, %eax                #  28    0x40366  2      
  movslq %ebx, %rbx              #  29    0x40368  3      
  addq %rbx, %r14                #  30    0x4036b  3      
  movl %r14d, %r14d              #  31    0x4036e  3      
  movl %r12d, 0x4(%r15,%r14,1)   #  32    0x40371  5      
  movl %r14d, %r14d              #  33    0x40376  3      
  movl %r13d, (%r15,%r14,1)      #  34    0x40379  4      
  jmpq .L_403c0                  #  35    0x4037d  5      
  nop                            #  36    0x40382  1      
.L_403a0:                        #        0x40383  0      
  movl $0x16, %eax               #  37    0x40383  5      
  nop                            #  38    0x40388  1      
  nop                            #  39    0x40389  1      
.L_403c0:                        #        0x4038a  0      
  movq 0x8(%rsp), %rbx           #  40    0x4038a  5      
  movq 0x10(%rsp), %r12          #  41    0x4038f  5      
  movq 0x18(%rsp), %r13          #  42    0x40394  5      
  movq 0x20(%rsp), %r14          #  43    0x40399  5      
  addl $0x28, %esp               #  44    0x4039e  3      
  addq %r15, %rsp                #  45    0x403a1  3      
  popq %r11                      #  46    0x403a4  3      
  nop                            #  47    0x403a7  1      
  andl $0xffffffe0, %r11d        #  48    0x403a8  7      
  addq %r15, %r11                #  49    0x403af  3      
  jmpq %r11                      #  50    0x403b2  3      
  nop                            #  51    0x403b5  1      
  nop                            #  52    0x403b6  1      
.L_40400:                        #        0x403b7  0      
  xorl %eax, %eax                #  53    0x403b7  2      
  testq %r13, %r13               #  54    0x403b9  3      
  je .L_403c0                    #  55    0x403bc  6      
  movl $0x1000, %esi             #  56    0x403c2  5      
  movl $0x1, %edi                #  57    0x403c7  5      
  nop                            #  58    0x403cc  1      
  callq .calloc                  #  59    0x403cd  5      
  movl %eax, %r14d               #  60    0x403d2  3      
  nop                            #  61    0x403d5  1      
  nop                            #  62    0x403d6  1      
  callq .__nacl_read_tp          #  63    0x403d7  5      
  testq %r14, %r14               #  64    0x403dc  3      
  movl %eax, %eax                #  65    0x403df  2      
  movl %r14d, -0x4(%r15,%rax,1)  #  66    0x403e1  5      
  movl $0xc, %eax                #  67    0x403e6  5      
  jne .L_40380                   #  68    0x403eb  6      
  jmpq .L_403c0                  #  69    0x403f1  5      
  nop                            #  70    0x403f6  1      
                                                          
.size pthread_setspecific, .-pthread_setspecific

