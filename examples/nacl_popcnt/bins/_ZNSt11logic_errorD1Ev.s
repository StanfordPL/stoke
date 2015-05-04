  .text
  .globl _ZNSt11logic_errorD1Ev
  .type _ZNSt11logic_errorD1Ev, @function

#! file-offset 0x4ee00
#! rip-offset  0x4ee00
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD1Ev:                 #        0x4ee00  0      
  pushq %rbx                             #  1     0x4ee00  2      
  movl %edi, %ebx                        #  2     0x4ee02  2      
  subl $0x10, %esp                       #  3     0x4ee04  3      
  addq %r15, %rsp                        #  4     0x4ee07  3      
  movl %ebx, %ebx                        #  5     0x4ee0a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ee0c  5      
  movl %ebx, %ebx                        #  7     0x4ee11  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4ee13  8      
  subl $0xc, %edi                        #  9     0x4ee1b  3      
  nop                                    #  10    0x4ee1e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ee1f  6      
  jne .L_4ee80                           #  12    0x4ee25  6      
  nop                                    #  13    0x4ee2b  1      
  nop                                    #  14    0x4ee2c  1      
.L_4ee40:                                #        0x4ee2d  0      
  movl %ebx, %edi                        #  15    0x4ee2d  2      
  nop                                    #  16    0x4ee2f  1      
  nop                                    #  17    0x4ee30  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ee31  5      
  addl $0x10, %esp                       #  19    0x4ee36  3      
  addq %r15, %rsp                        #  20    0x4ee39  3      
  popq %rbx                              #  21    0x4ee3c  2      
  popq %r11                              #  22    0x4ee3e  3      
  andl $0xffffffe0, %r11d                #  23    0x4ee41  7      
  addq %r15, %r11                        #  24    0x4ee48  3      
  jmpq %r11                              #  25    0x4ee4b  3      
  nop                                    #  26    0x4ee4e  1      
.L_4ee80:                                #        0x4ee4f  0      
  movl %edi, %edi                        #  27    0x4ee4f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4ee51  5      
  leal -0x1(%rax), %edx                  #  29    0x4ee56  3      
  testl %eax, %eax                       #  30    0x4ee59  2      
  movl %edi, %edi                        #  31    0x4ee5b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4ee5d  5      
  jg .L_4ee40                            #  33    0x4ee62  6      
  leal 0xf(%rsp), %esi                   #  34    0x4ee68  4      
  xchgw %ax, %ax                         #  35    0x4ee6c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4ee6f  5      
  jmpq .L_4ee40                          #  37    0x4ee74  5      
  nop                                    #  38    0x4ee79  1      
  nop                                    #  39    0x4ee7a  1      
  nop                                    #  40    0x4ee7b  1      
  nop                                    #  41    0x4ee7c  1      
  nop                                    #  42    0x4ee7d  1      
  nop                                    #  43    0x4ee7e  1      
  nop                                    #  44    0x4ee7f  1      
  nop                                    #  45    0x4ee80  1      
  nop                                    #  46    0x4ee81  1      
  nop                                    #  47    0x4ee82  1      
  nop                                    #  48    0x4ee83  1      
  nop                                    #  49    0x4ee84  1      
  nop                                    #  50    0x4ee85  1      
  nop                                    #  51    0x4ee86  1      
  nop                                    #  52    0x4ee87  1      
  nop                                    #  53    0x4ee88  1      
  nop                                    #  54    0x4ee89  1      
  nop                                    #  55    0x4ee8a  1      
  nop                                    #  56    0x4ee8b  1      
  nop                                    #  57    0x4ee8c  1      
  nop                                    #  58    0x4ee8d  1      
  nop                                    #  59    0x4ee8e  1      
  nop                                    #  60    0x4ee8f  1      
  nop                                    #  61    0x4ee90  1      
  nop                                    #  62    0x4ee91  1      
  nop                                    #  63    0x4ee92  1      
  nop                                    #  64    0x4ee93  1      
  nop                                    #  65    0x4ee94  1      
  nop                                    #  66    0x4ee95  1      
  nop                                    #  67    0x4ee96  1      
                                                                  
.size _ZNSt11logic_errorD1Ev, .-_ZNSt11logic_errorD1Ev

