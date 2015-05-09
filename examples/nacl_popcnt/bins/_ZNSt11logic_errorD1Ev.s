  .text
  .globl _ZNSt11logic_errorD1Ev
  .type _ZNSt11logic_errorD1Ev, @function

#! file-offset 0x4ed60
#! rip-offset  0x4ed60
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD1Ev:                 #        0x4ed60  0      
  pushq %rbx                             #  1     0x4ed60  2      
  movl %edi, %ebx                        #  2     0x4ed62  2      
  subl $0x10, %esp                       #  3     0x4ed64  3      
  addq %r15, %rsp                        #  4     0x4ed67  3      
  movl %ebx, %ebx                        #  5     0x4ed6a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ed6c  5      
  movl %ebx, %ebx                        #  7     0x4ed71  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4ed73  8      
  subl $0xc, %edi                        #  9     0x4ed7b  3      
  nop                                    #  10    0x4ed7e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ed7f  6      
  jne .L_4ede0                           #  12    0x4ed85  6      
  nop                                    #  13    0x4ed8b  1      
  nop                                    #  14    0x4ed8c  1      
.L_4eda0:                                #        0x4ed8d  0      
  movl %ebx, %edi                        #  15    0x4ed8d  2      
  nop                                    #  16    0x4ed8f  1      
  nop                                    #  17    0x4ed90  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ed91  5      
  addl $0x10, %esp                       #  19    0x4ed96  3      
  addq %r15, %rsp                        #  20    0x4ed99  3      
  popq %rbx                              #  21    0x4ed9c  2      
  popq %r11                              #  22    0x4ed9e  3      
  andl $0xffffffe0, %r11d                #  23    0x4eda1  7      
  addq %r15, %r11                        #  24    0x4eda8  3      
  jmpq %r11                              #  25    0x4edab  3      
  nop                                    #  26    0x4edae  1      
.L_4ede0:                                #        0x4edaf  0      
  movl %edi, %edi                        #  27    0x4edaf  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4edb1  5      
  leal -0x1(%rax), %edx                  #  29    0x4edb6  3      
  testl %eax, %eax                       #  30    0x4edb9  2      
  movl %edi, %edi                        #  31    0x4edbb  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4edbd  5      
  jg .L_4eda0                            #  33    0x4edc2  6      
  leal 0xf(%rsp), %esi                   #  34    0x4edc8  4      
  xchgw %ax, %ax                         #  35    0x4edcc  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4edcf  5      
  jmpq .L_4eda0                          #  37    0x4edd4  5      
  nop                                    #  38    0x4edd9  1      
  nop                                    #  39    0x4edda  1      
  nop                                    #  40    0x4eddb  1      
  nop                                    #  41    0x4eddc  1      
  nop                                    #  42    0x4eddd  1      
  nop                                    #  43    0x4edde  1      
  nop                                    #  44    0x4eddf  1      
  nop                                    #  45    0x4ede0  1      
  nop                                    #  46    0x4ede1  1      
  nop                                    #  47    0x4ede2  1      
  nop                                    #  48    0x4ede3  1      
  nop                                    #  49    0x4ede4  1      
  nop                                    #  50    0x4ede5  1      
  nop                                    #  51    0x4ede6  1      
  nop                                    #  52    0x4ede7  1      
  nop                                    #  53    0x4ede8  1      
  nop                                    #  54    0x4ede9  1      
  nop                                    #  55    0x4edea  1      
  nop                                    #  56    0x4edeb  1      
  nop                                    #  57    0x4edec  1      
  nop                                    #  58    0x4eded  1      
  nop                                    #  59    0x4edee  1      
  nop                                    #  60    0x4edef  1      
  nop                                    #  61    0x4edf0  1      
  nop                                    #  62    0x4edf1  1      
  nop                                    #  63    0x4edf2  1      
  nop                                    #  64    0x4edf3  1      
  nop                                    #  65    0x4edf4  1      
  nop                                    #  66    0x4edf5  1      
  nop                                    #  67    0x4edf6  1      
                                                                  
.size _ZNSt11logic_errorD1Ev, .-_ZNSt11logic_errorD1Ev

