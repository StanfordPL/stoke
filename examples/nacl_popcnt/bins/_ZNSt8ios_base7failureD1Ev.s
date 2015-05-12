  .text
  .globl _ZNSt8ios_base7failureD1Ev
  .type _ZNSt8ios_base7failureD1Ev, @function

#! file-offset 0x4e240
#! rip-offset  0x4e240
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD1Ev:             #        0x4e240  0      
  pushq %rbx                             #  1     0x4e240  2      
  movl %edi, %ebx                        #  2     0x4e242  2      
  subl $0x10, %esp                       #  3     0x4e244  3      
  addq %r15, %rsp                        #  4     0x4e247  3      
  movl %ebx, %ebx                        #  5     0x4e24a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e24c  5      
  movl %ebx, %ebx                        #  7     0x4e251  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e253  8      
  subl $0xc, %edi                        #  9     0x4e25b  3      
  nop                                    #  10    0x4e25e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e25f  6      
  jne .L_4e2c0                           #  12    0x4e265  6      
  nop                                    #  13    0x4e26b  1      
  nop                                    #  14    0x4e26c  1      
.L_4e280:                                #        0x4e26d  0      
  movl %ebx, %edi                        #  15    0x4e26d  2      
  nop                                    #  16    0x4e26f  1      
  nop                                    #  17    0x4e270  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e271  5      
  addl $0x10, %esp                       #  19    0x4e276  3      
  addq %r15, %rsp                        #  20    0x4e279  3      
  popq %rbx                              #  21    0x4e27c  2      
  popq %r11                              #  22    0x4e27e  3      
  andl $0xffffffe0, %r11d                #  23    0x4e281  7      
  addq %r15, %r11                        #  24    0x4e288  3      
  jmpq %r11                              #  25    0x4e28b  3      
  nop                                    #  26    0x4e28e  1      
.L_4e2c0:                                #        0x4e28f  0      
  movl %edi, %edi                        #  27    0x4e28f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e291  5      
  leal -0x1(%rax), %edx                  #  29    0x4e296  3      
  testl %eax, %eax                       #  30    0x4e299  2      
  movl %edi, %edi                        #  31    0x4e29b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e29d  5      
  jg .L_4e280                            #  33    0x4e2a2  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e2a8  4      
  xchgw %ax, %ax                         #  35    0x4e2ac  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e2af  5      
  jmpq .L_4e280                          #  37    0x4e2b4  5      
  nop                                    #  38    0x4e2b9  1      
  nop                                    #  39    0x4e2ba  1      
  nop                                    #  40    0x4e2bb  1      
  nop                                    #  41    0x4e2bc  1      
  nop                                    #  42    0x4e2bd  1      
  nop                                    #  43    0x4e2be  1      
  nop                                    #  44    0x4e2bf  1      
  nop                                    #  45    0x4e2c0  1      
  nop                                    #  46    0x4e2c1  1      
  nop                                    #  47    0x4e2c2  1      
  nop                                    #  48    0x4e2c3  1      
  nop                                    #  49    0x4e2c4  1      
  nop                                    #  50    0x4e2c5  1      
  nop                                    #  51    0x4e2c6  1      
  nop                                    #  52    0x4e2c7  1      
  nop                                    #  53    0x4e2c8  1      
  nop                                    #  54    0x4e2c9  1      
  nop                                    #  55    0x4e2ca  1      
  nop                                    #  56    0x4e2cb  1      
  nop                                    #  57    0x4e2cc  1      
  nop                                    #  58    0x4e2cd  1      
  nop                                    #  59    0x4e2ce  1      
  nop                                    #  60    0x4e2cf  1      
  nop                                    #  61    0x4e2d0  1      
  nop                                    #  62    0x4e2d1  1      
  nop                                    #  63    0x4e2d2  1      
  nop                                    #  64    0x4e2d3  1      
  nop                                    #  65    0x4e2d4  1      
  nop                                    #  66    0x4e2d5  1      
  nop                                    #  67    0x4e2d6  1      
                                                                  
.size _ZNSt8ios_base7failureD1Ev, .-_ZNSt8ios_base7failureD1Ev

