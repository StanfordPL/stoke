  .text
  .globl _ZNSt11logic_errorD0Ev
  .type _ZNSt11logic_errorD0Ev, @function

#! file-offset 0x4eca0
#! rip-offset  0x4eca0
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD0Ev:                 #        0x4eca0  0      
  pushq %rbx                             #  1     0x4eca0  2      
  movl %edi, %ebx                        #  2     0x4eca2  2      
  subl $0x10, %esp                       #  3     0x4eca4  3      
  addq %r15, %rsp                        #  4     0x4eca7  3      
  movl %ebx, %ebx                        #  5     0x4ecaa  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ecac  5      
  movl %ebx, %ebx                        #  7     0x4ecb1  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4ecb3  8      
  subl $0xc, %edi                        #  9     0x4ecbb  3      
  nop                                    #  10    0x4ecbe  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ecbf  6      
  jne .L_4ed40                           #  12    0x4ecc5  6      
  nop                                    #  13    0x4eccb  1      
  nop                                    #  14    0x4eccc  1      
.L_4ece0:                                #        0x4eccd  0      
  movl %ebx, %edi                        #  15    0x4eccd  2      
  nop                                    #  16    0x4eccf  1      
  nop                                    #  17    0x4ecd0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ecd1  5      
  movl %ebx, %edi                        #  19    0x4ecd6  2      
  nop                                    #  20    0x4ecd8  1      
  nop                                    #  21    0x4ecd9  1      
  callq ._ZdlPv                          #  22    0x4ecda  5      
  addl $0x10, %esp                       #  23    0x4ecdf  3      
  addq %r15, %rsp                        #  24    0x4ece2  3      
  popq %rbx                              #  25    0x4ece5  2      
  popq %r11                              #  26    0x4ece7  3      
  andl $0xffffffe0, %r11d                #  27    0x4ecea  7      
  addq %r15, %r11                        #  28    0x4ecf1  3      
  jmpq %r11                              #  29    0x4ecf4  3      
  nop                                    #  30    0x4ecf7  1      
.L_4ed40:                                #        0x4ecf8  0      
  movl %edi, %edi                        #  31    0x4ecf8  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4ecfa  5      
  leal -0x1(%rax), %edx                  #  33    0x4ecff  3      
  testl %eax, %eax                       #  34    0x4ed02  2      
  movl %edi, %edi                        #  35    0x4ed04  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4ed06  5      
  jg .L_4ece0                            #  37    0x4ed0b  6      
  leal 0xf(%rsp), %esi                   #  38    0x4ed11  4      
  xchgw %ax, %ax                         #  39    0x4ed15  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4ed18  5      
  jmpq .L_4ece0                          #  41    0x4ed1d  5      
  nop                                    #  42    0x4ed22  1      
  nop                                    #  43    0x4ed23  1      
  nop                                    #  44    0x4ed24  1      
  nop                                    #  45    0x4ed25  1      
  nop                                    #  46    0x4ed26  1      
  nop                                    #  47    0x4ed27  1      
  nop                                    #  48    0x4ed28  1      
  nop                                    #  49    0x4ed29  1      
  nop                                    #  50    0x4ed2a  1      
  nop                                    #  51    0x4ed2b  1      
  nop                                    #  52    0x4ed2c  1      
  nop                                    #  53    0x4ed2d  1      
  nop                                    #  54    0x4ed2e  1      
  nop                                    #  55    0x4ed2f  1      
  nop                                    #  56    0x4ed30  1      
  nop                                    #  57    0x4ed31  1      
  nop                                    #  58    0x4ed32  1      
  nop                                    #  59    0x4ed33  1      
  nop                                    #  60    0x4ed34  1      
  nop                                    #  61    0x4ed35  1      
  nop                                    #  62    0x4ed36  1      
  nop                                    #  63    0x4ed37  1      
  nop                                    #  64    0x4ed38  1      
  nop                                    #  65    0x4ed39  1      
  nop                                    #  66    0x4ed3a  1      
  nop                                    #  67    0x4ed3b  1      
  nop                                    #  68    0x4ed3c  1      
                                                                  
.size _ZNSt11logic_errorD0Ev, .-_ZNSt11logic_errorD0Ev

