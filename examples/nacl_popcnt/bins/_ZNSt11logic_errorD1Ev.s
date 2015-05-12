  .text
  .globl _ZNSt11logic_errorD1Ev
  .type _ZNSt11logic_errorD1Ev, @function

#! file-offset 0x4ed80
#! rip-offset  0x4ed80
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD1Ev:                 #        0x4ed80  0      
  pushq %rbx                             #  1     0x4ed80  2      
  movl %edi, %ebx                        #  2     0x4ed82  2      
  subl $0x10, %esp                       #  3     0x4ed84  3      
  addq %r15, %rsp                        #  4     0x4ed87  3      
  movl %ebx, %ebx                        #  5     0x4ed8a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ed8c  5      
  movl %ebx, %ebx                        #  7     0x4ed91  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4ed93  8      
  subl $0xc, %edi                        #  9     0x4ed9b  3      
  nop                                    #  10    0x4ed9e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ed9f  6      
  jne .L_4ee00                           #  12    0x4eda5  6      
  nop                                    #  13    0x4edab  1      
  nop                                    #  14    0x4edac  1      
.L_4edc0:                                #        0x4edad  0      
  movl %ebx, %edi                        #  15    0x4edad  2      
  nop                                    #  16    0x4edaf  1      
  nop                                    #  17    0x4edb0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4edb1  5      
  addl $0x10, %esp                       #  19    0x4edb6  3      
  addq %r15, %rsp                        #  20    0x4edb9  3      
  popq %rbx                              #  21    0x4edbc  2      
  popq %r11                              #  22    0x4edbe  3      
  andl $0xffffffe0, %r11d                #  23    0x4edc1  7      
  addq %r15, %r11                        #  24    0x4edc8  3      
  jmpq %r11                              #  25    0x4edcb  3      
  nop                                    #  26    0x4edce  1      
.L_4ee00:                                #        0x4edcf  0      
  movl %edi, %edi                        #  27    0x4edcf  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4edd1  5      
  leal -0x1(%rax), %edx                  #  29    0x4edd6  3      
  testl %eax, %eax                       #  30    0x4edd9  2      
  movl %edi, %edi                        #  31    0x4eddb  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4eddd  5      
  jg .L_4edc0                            #  33    0x4ede2  6      
  leal 0xf(%rsp), %esi                   #  34    0x4ede8  4      
  xchgw %ax, %ax                         #  35    0x4edec  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4edef  5      
  jmpq .L_4edc0                          #  37    0x4edf4  5      
  nop                                    #  38    0x4edf9  1      
  nop                                    #  39    0x4edfa  1      
  nop                                    #  40    0x4edfb  1      
  nop                                    #  41    0x4edfc  1      
  nop                                    #  42    0x4edfd  1      
  nop                                    #  43    0x4edfe  1      
  nop                                    #  44    0x4edff  1      
  nop                                    #  45    0x4ee00  1      
  nop                                    #  46    0x4ee01  1      
  nop                                    #  47    0x4ee02  1      
  nop                                    #  48    0x4ee03  1      
  nop                                    #  49    0x4ee04  1      
  nop                                    #  50    0x4ee05  1      
  nop                                    #  51    0x4ee06  1      
  nop                                    #  52    0x4ee07  1      
  nop                                    #  53    0x4ee08  1      
  nop                                    #  54    0x4ee09  1      
  nop                                    #  55    0x4ee0a  1      
  nop                                    #  56    0x4ee0b  1      
  nop                                    #  57    0x4ee0c  1      
  nop                                    #  58    0x4ee0d  1      
  nop                                    #  59    0x4ee0e  1      
  nop                                    #  60    0x4ee0f  1      
  nop                                    #  61    0x4ee10  1      
  nop                                    #  62    0x4ee11  1      
  nop                                    #  63    0x4ee12  1      
  nop                                    #  64    0x4ee13  1      
  nop                                    #  65    0x4ee14  1      
  nop                                    #  66    0x4ee15  1      
  nop                                    #  67    0x4ee16  1      
                                                                  
.size _ZNSt11logic_errorD1Ev, .-_ZNSt11logic_errorD1Ev

