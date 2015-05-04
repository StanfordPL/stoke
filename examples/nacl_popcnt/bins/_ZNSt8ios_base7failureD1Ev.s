  .text
  .globl _ZNSt8ios_base7failureD1Ev
  .type _ZNSt8ios_base7failureD1Ev, @function

#! file-offset 0x4e2c0
#! rip-offset  0x4e2c0
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD1Ev:             #        0x4e2c0  0      
  pushq %rbx                             #  1     0x4e2c0  2      
  movl %edi, %ebx                        #  2     0x4e2c2  2      
  subl $0x10, %esp                       #  3     0x4e2c4  3      
  addq %r15, %rsp                        #  4     0x4e2c7  3      
  movl %ebx, %ebx                        #  5     0x4e2ca  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e2cc  5      
  movl %ebx, %ebx                        #  7     0x4e2d1  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e2d3  8      
  subl $0xc, %edi                        #  9     0x4e2db  3      
  nop                                    #  10    0x4e2de  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e2df  6      
  jne .L_4e340                           #  12    0x4e2e5  6      
  nop                                    #  13    0x4e2eb  1      
  nop                                    #  14    0x4e2ec  1      
.L_4e300:                                #        0x4e2ed  0      
  movl %ebx, %edi                        #  15    0x4e2ed  2      
  nop                                    #  16    0x4e2ef  1      
  nop                                    #  17    0x4e2f0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e2f1  5      
  addl $0x10, %esp                       #  19    0x4e2f6  3      
  addq %r15, %rsp                        #  20    0x4e2f9  3      
  popq %rbx                              #  21    0x4e2fc  2      
  popq %r11                              #  22    0x4e2fe  3      
  andl $0xffffffe0, %r11d                #  23    0x4e301  7      
  addq %r15, %r11                        #  24    0x4e308  3      
  jmpq %r11                              #  25    0x4e30b  3      
  nop                                    #  26    0x4e30e  1      
.L_4e340:                                #        0x4e30f  0      
  movl %edi, %edi                        #  27    0x4e30f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e311  5      
  leal -0x1(%rax), %edx                  #  29    0x4e316  3      
  testl %eax, %eax                       #  30    0x4e319  2      
  movl %edi, %edi                        #  31    0x4e31b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e31d  5      
  jg .L_4e300                            #  33    0x4e322  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e328  4      
  xchgw %ax, %ax                         #  35    0x4e32c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e32f  5      
  jmpq .L_4e300                          #  37    0x4e334  5      
  nop                                    #  38    0x4e339  1      
  nop                                    #  39    0x4e33a  1      
  nop                                    #  40    0x4e33b  1      
  nop                                    #  41    0x4e33c  1      
  nop                                    #  42    0x4e33d  1      
  nop                                    #  43    0x4e33e  1      
  nop                                    #  44    0x4e33f  1      
  nop                                    #  45    0x4e340  1      
  nop                                    #  46    0x4e341  1      
  nop                                    #  47    0x4e342  1      
  nop                                    #  48    0x4e343  1      
  nop                                    #  49    0x4e344  1      
  nop                                    #  50    0x4e345  1      
  nop                                    #  51    0x4e346  1      
  nop                                    #  52    0x4e347  1      
  nop                                    #  53    0x4e348  1      
  nop                                    #  54    0x4e349  1      
  nop                                    #  55    0x4e34a  1      
  nop                                    #  56    0x4e34b  1      
  nop                                    #  57    0x4e34c  1      
  nop                                    #  58    0x4e34d  1      
  nop                                    #  59    0x4e34e  1      
  nop                                    #  60    0x4e34f  1      
  nop                                    #  61    0x4e350  1      
  nop                                    #  62    0x4e351  1      
  nop                                    #  63    0x4e352  1      
  nop                                    #  64    0x4e353  1      
  nop                                    #  65    0x4e354  1      
  nop                                    #  66    0x4e355  1      
  nop                                    #  67    0x4e356  1      
                                                                  
.size _ZNSt8ios_base7failureD1Ev, .-_ZNSt8ios_base7failureD1Ev

