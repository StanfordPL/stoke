  .text
  .globl pthread_setspecific
  .type pthread_setspecific, @function

#! file-offset 0x403a0
#! rip-offset  0x403a0
#! capacity    352 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_setspecific:            #        0x403a0  0      
  movq %rbx, -0x20(%rsp)         #  1     0x403a0  5      
  movq %r13, -0x10(%rsp)         #  2     0x403a5  5      
  movl %edi, %ebx                #  3     0x403aa  2      
  movq %r12, -0x18(%rsp)         #  4     0x403ac  5      
  movq %r14, -0x8(%rsp)          #  5     0x403b1  5      
  subl $0x28, %esp               #  6     0x403b6  3      
  addq %r15, %rsp                #  7     0x403b9  3      
  nop                            #  8     0x403bc  1      
  cmpl $0x1ff, %edi              #  9     0x403bd  6      
  movl %esi, %r13d               #  10    0x403c3  3      
  ja .L_40440                    #  11    0x403c6  6      
  leal (,%rbx,8), %eax           #  12    0x403cc  7      
  cltq                           #  13    0x403d3  2      
  addq $0x10030da4, %rax         #  14    0x403d5  6      
  movl %eax, %eax                #  15    0x403db  2      
  movl (%r15,%rax,1), %r12d      #  16    0x403dd  4      
  testb $0x1, %r12b              #  17    0x403e1  4      
  je .L_40440                    #  18    0x403e5  6      
  nop                            #  19    0x403eb  1      
  nop                            #  20    0x403ec  1      
  callq .__nacl_read_tp          #  21    0x403ed  5      
  movl %eax, %eax                #  22    0x403f2  2      
  movl -0x4(%r15,%rax,1), %r14d  #  23    0x403f4  5      
  testq %r14, %r14               #  24    0x403f9  3      
  je .L_404a0                    #  25    0x403fc  6      
  nop                            #  26    0x40402  1      
.L_40420:                        #        0x40403  0      
  shll $0x3, %ebx                #  27    0x40403  3      
  xorl %eax, %eax                #  28    0x40406  2      
  movslq %ebx, %rbx              #  29    0x40408  3      
  addq %rbx, %r14                #  30    0x4040b  3      
  movl %r14d, %r14d              #  31    0x4040e  3      
  movl %r12d, 0x4(%r15,%r14,1)   #  32    0x40411  5      
  movl %r14d, %r14d              #  33    0x40416  3      
  movl %r13d, (%r15,%r14,1)      #  34    0x40419  4      
  jmpq .L_40460                  #  35    0x4041d  5      
  nop                            #  36    0x40422  1      
.L_40440:                        #        0x40423  0      
  movl $0x16, %eax               #  37    0x40423  5      
  nop                            #  38    0x40428  1      
  nop                            #  39    0x40429  1      
.L_40460:                        #        0x4042a  0      
  movq 0x8(%rsp), %rbx           #  40    0x4042a  5      
  movq 0x10(%rsp), %r12          #  41    0x4042f  5      
  movq 0x18(%rsp), %r13          #  42    0x40434  5      
  movq 0x20(%rsp), %r14          #  43    0x40439  5      
  addl $0x28, %esp               #  44    0x4043e  3      
  addq %r15, %rsp                #  45    0x40441  3      
  popq %r11                      #  46    0x40444  3      
  nop                            #  47    0x40447  1      
  andl $0xffffffe0, %r11d        #  48    0x40448  7      
  addq %r15, %r11                #  49    0x4044f  3      
  jmpq %r11                      #  50    0x40452  3      
  nop                            #  51    0x40455  1      
  nop                            #  52    0x40456  1      
.L_404a0:                        #        0x40457  0      
  xorl %eax, %eax                #  53    0x40457  2      
  testq %r13, %r13               #  54    0x40459  3      
  je .L_40460                    #  55    0x4045c  6      
  movl $0x1000, %esi             #  56    0x40462  5      
  movl $0x1, %edi                #  57    0x40467  5      
  nop                            #  58    0x4046c  1      
  callq .calloc                  #  59    0x4046d  5      
  movl %eax, %r14d               #  60    0x40472  3      
  nop                            #  61    0x40475  1      
  nop                            #  62    0x40476  1      
  callq .__nacl_read_tp          #  63    0x40477  5      
  testq %r14, %r14               #  64    0x4047c  3      
  movl %eax, %eax                #  65    0x4047f  2      
  movl %r14d, -0x4(%r15,%rax,1)  #  66    0x40481  5      
  movl $0xc, %eax                #  67    0x40486  5      
  jne .L_40420                   #  68    0x4048b  6      
  jmpq .L_40460                  #  69    0x40491  5      
  nop                            #  70    0x40496  1      
                                                          
.size pthread_setspecific, .-pthread_setspecific

