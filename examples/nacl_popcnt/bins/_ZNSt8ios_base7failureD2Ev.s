  .text
  .globl _ZNSt8ios_base7failureD2Ev
  .type _ZNSt8ios_base7failureD2Ev, @function

#! file-offset 0x4e2e0
#! rip-offset  0x4e2e0
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD2Ev:             #        0x4e2e0  0      
  pushq %rbx                             #  1     0x4e2e0  2      
  movl %edi, %ebx                        #  2     0x4e2e2  2      
  subl $0x10, %esp                       #  3     0x4e2e4  3      
  addq %r15, %rsp                        #  4     0x4e2e7  3      
  movl %ebx, %ebx                        #  5     0x4e2ea  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e2ec  5      
  movl %ebx, %ebx                        #  7     0x4e2f1  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e2f3  8      
  subl $0xc, %edi                        #  9     0x4e2fb  3      
  nop                                    #  10    0x4e2fe  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e2ff  6      
  jne .L_4e360                           #  12    0x4e305  6      
  nop                                    #  13    0x4e30b  1      
  nop                                    #  14    0x4e30c  1      
.L_4e320:                                #        0x4e30d  0      
  movl %ebx, %edi                        #  15    0x4e30d  2      
  nop                                    #  16    0x4e30f  1      
  nop                                    #  17    0x4e310  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e311  5      
  addl $0x10, %esp                       #  19    0x4e316  3      
  addq %r15, %rsp                        #  20    0x4e319  3      
  popq %rbx                              #  21    0x4e31c  2      
  popq %r11                              #  22    0x4e31e  3      
  andl $0xffffffe0, %r11d                #  23    0x4e321  7      
  addq %r15, %r11                        #  24    0x4e328  3      
  jmpq %r11                              #  25    0x4e32b  3      
  nop                                    #  26    0x4e32e  1      
.L_4e360:                                #        0x4e32f  0      
  movl %edi, %edi                        #  27    0x4e32f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e331  5      
  leal -0x1(%rax), %edx                  #  29    0x4e336  3      
  testl %eax, %eax                       #  30    0x4e339  2      
  movl %edi, %edi                        #  31    0x4e33b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e33d  5      
  jg .L_4e320                            #  33    0x4e342  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e348  4      
  xchgw %ax, %ax                         #  35    0x4e34c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e34f  5      
  jmpq .L_4e320                          #  37    0x4e354  5      
  nop                                    #  38    0x4e359  1      
  nop                                    #  39    0x4e35a  1      
  nop                                    #  40    0x4e35b  1      
  nop                                    #  41    0x4e35c  1      
  nop                                    #  42    0x4e35d  1      
  nop                                    #  43    0x4e35e  1      
  nop                                    #  44    0x4e35f  1      
  nop                                    #  45    0x4e360  1      
  nop                                    #  46    0x4e361  1      
  nop                                    #  47    0x4e362  1      
  nop                                    #  48    0x4e363  1      
  nop                                    #  49    0x4e364  1      
  nop                                    #  50    0x4e365  1      
  nop                                    #  51    0x4e366  1      
  nop                                    #  52    0x4e367  1      
  nop                                    #  53    0x4e368  1      
  nop                                    #  54    0x4e369  1      
  nop                                    #  55    0x4e36a  1      
  nop                                    #  56    0x4e36b  1      
  nop                                    #  57    0x4e36c  1      
  nop                                    #  58    0x4e36d  1      
  nop                                    #  59    0x4e36e  1      
  nop                                    #  60    0x4e36f  1      
  nop                                    #  61    0x4e370  1      
  nop                                    #  62    0x4e371  1      
  nop                                    #  63    0x4e372  1      
  nop                                    #  64    0x4e373  1      
  nop                                    #  65    0x4e374  1      
  nop                                    #  66    0x4e375  1      
  nop                                    #  67    0x4e376  1      
                                                                  
.size _ZNSt8ios_base7failureD2Ev, .-_ZNSt8ios_base7failureD2Ev

