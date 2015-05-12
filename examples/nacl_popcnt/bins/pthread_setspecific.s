  .text
  .globl pthread_setspecific
  .type pthread_setspecific, @function

#! file-offset 0x40320
#! rip-offset  0x40320
#! capacity    352 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_setspecific:            #        0x40320  0      
  movq %rbx, -0x20(%rsp)         #  1     0x40320  5      
  movq %r13, -0x10(%rsp)         #  2     0x40325  5      
  movl %edi, %ebx                #  3     0x4032a  2      
  movq %r12, -0x18(%rsp)         #  4     0x4032c  5      
  movq %r14, -0x8(%rsp)          #  5     0x40331  5      
  subl $0x28, %esp               #  6     0x40336  3      
  addq %r15, %rsp                #  7     0x40339  3      
  nop                            #  8     0x4033c  1      
  cmpl $0x1ff, %edi              #  9     0x4033d  6      
  movl %esi, %r13d               #  10    0x40343  3      
  ja .L_403c0                    #  11    0x40346  6      
  leal (,%rbx,8), %eax           #  12    0x4034c  7      
  cltq                           #  13    0x40353  2      
  addq $0x10030da4, %rax         #  14    0x40355  6      
  movl %eax, %eax                #  15    0x4035b  2      
  movl (%r15,%rax,1), %r12d      #  16    0x4035d  4      
  testb $0x1, %r12b              #  17    0x40361  4      
  je .L_403c0                    #  18    0x40365  6      
  nop                            #  19    0x4036b  1      
  nop                            #  20    0x4036c  1      
  callq .__nacl_read_tp          #  21    0x4036d  5      
  movl %eax, %eax                #  22    0x40372  2      
  movl -0x4(%r15,%rax,1), %r14d  #  23    0x40374  5      
  testq %r14, %r14               #  24    0x40379  3      
  je .L_40420                    #  25    0x4037c  6      
  nop                            #  26    0x40382  1      
.L_403a0:                        #        0x40383  0      
  shll $0x3, %ebx                #  27    0x40383  3      
  xorl %eax, %eax                #  28    0x40386  2      
  movslq %ebx, %rbx              #  29    0x40388  3      
  addq %rbx, %r14                #  30    0x4038b  3      
  movl %r14d, %r14d              #  31    0x4038e  3      
  movl %r12d, 0x4(%r15,%r14,1)   #  32    0x40391  5      
  movl %r14d, %r14d              #  33    0x40396  3      
  movl %r13d, (%r15,%r14,1)      #  34    0x40399  4      
  jmpq .L_403e0                  #  35    0x4039d  5      
  nop                            #  36    0x403a2  1      
.L_403c0:                        #        0x403a3  0      
  movl $0x16, %eax               #  37    0x403a3  5      
  nop                            #  38    0x403a8  1      
  nop                            #  39    0x403a9  1      
.L_403e0:                        #        0x403aa  0      
  movq 0x8(%rsp), %rbx           #  40    0x403aa  5      
  movq 0x10(%rsp), %r12          #  41    0x403af  5      
  movq 0x18(%rsp), %r13          #  42    0x403b4  5      
  movq 0x20(%rsp), %r14          #  43    0x403b9  5      
  addl $0x28, %esp               #  44    0x403be  3      
  addq %r15, %rsp                #  45    0x403c1  3      
  popq %r11                      #  46    0x403c4  3      
  nop                            #  47    0x403c7  1      
  andl $0xffffffe0, %r11d        #  48    0x403c8  7      
  addq %r15, %r11                #  49    0x403cf  3      
  jmpq %r11                      #  50    0x403d2  3      
  nop                            #  51    0x403d5  1      
  nop                            #  52    0x403d6  1      
.L_40420:                        #        0x403d7  0      
  xorl %eax, %eax                #  53    0x403d7  2      
  testq %r13, %r13               #  54    0x403d9  3      
  je .L_403e0                    #  55    0x403dc  6      
  movl $0x1000, %esi             #  56    0x403e2  5      
  movl $0x1, %edi                #  57    0x403e7  5      
  nop                            #  58    0x403ec  1      
  callq .calloc                  #  59    0x403ed  5      
  movl %eax, %r14d               #  60    0x403f2  3      
  nop                            #  61    0x403f5  1      
  nop                            #  62    0x403f6  1      
  callq .__nacl_read_tp          #  63    0x403f7  5      
  testq %r14, %r14               #  64    0x403fc  3      
  movl %eax, %eax                #  65    0x403ff  2      
  movl %r14d, -0x4(%r15,%rax,1)  #  66    0x40401  5      
  movl $0xc, %eax                #  67    0x40406  5      
  jne .L_403a0                   #  68    0x4040b  6      
  jmpq .L_403e0                  #  69    0x40411  5      
  nop                            #  70    0x40416  1      
                                                          
.size pthread_setspecific, .-pthread_setspecific

