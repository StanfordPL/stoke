  .text
  .globl _fflush_r
  .type _fflush_r, @function

#! file-offset 0x7ac20
#! rip-offset  0x7ac20
#! capacity    384 bytes

# Text                                   #  Line  RIP      Bytes  
._fflush_r:                              #        0x7ac20  0      
  pushq %r12                             #  1     0x7ac20  3      
  movl %edi, %r12d                       #  2     0x7ac23  3      
  pushq %rbx                             #  3     0x7ac26  2      
  movl %esi, %ebx                        #  4     0x7ac28  2      
  subl $0x18, %esp                       #  5     0x7ac2a  3      
  addq %r15, %rsp                        #  6     0x7ac2d  3      
  testq %r12, %r12                       #  7     0x7ac30  3      
  je .L_7ac60                            #  8     0x7ac33  6      
  movl %r12d, %r12d                      #  9     0x7ac39  3      
  movl 0x38(%r15,%r12,1), %r9d           #  10    0x7ac3c  5      
  testl %r9d, %r9d                       #  11    0x7ac41  3      
  xchgw %ax, %ax                         #  12    0x7ac44  3      
  je .L_7ad20                            #  13    0x7ac47  6      
  nop                                    #  14    0x7ac4d  1      
  nop                                    #  15    0x7ac4e  1      
.L_7ac60:                                #        0x7ac4f  0      
  movl %ebx, %ebx                        #  16    0x7ac4f  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  17    0x7ac51  6      
  xorl %eax, %eax                        #  18    0x7ac57  2      
  testw %dx, %dx                         #  19    0x7ac59  3      
  je .L_7acc0                            #  20    0x7ac5c  6      
  andb $0x2, %dh                         #  21    0x7ac62  3      
  je .L_7ad60                            #  22    0x7ac65  6      
  nop                                    #  23    0x7ac6b  1      
.L_7ac80:                                #        0x7ac6c  0      
  movl %ebx, %esi                        #  24    0x7ac6c  2      
  movl %r12d, %edi                       #  25    0x7ac6e  3      
  nop                                    #  26    0x7ac71  1      
  nop                                    #  27    0x7ac72  1      
  callq .__sflush_r                      #  28    0x7ac73  5      
  movl %ebx, %ebx                        #  29    0x7ac78  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  30    0x7ac7a  6      
  je .L_7ace0                            #  31    0x7ac80  6      
  nop                                    #  32    0x7ac86  1      
  nop                                    #  33    0x7ac87  1      
.L_7acc0:                                #        0x7ac88  0      
  addl $0x18, %esp                       #  34    0x7ac88  3      
  addq %r15, %rsp                        #  35    0x7ac8b  3      
  popq %rbx                              #  36    0x7ac8e  2      
  popq %r12                              #  37    0x7ac90  3      
  popq %r11                              #  38    0x7ac93  3      
  andl $0xffffffe0, %r11d                #  39    0x7ac96  7      
  addq %r15, %r11                        #  40    0x7ac9d  3      
  jmpq %r11                              #  41    0x7aca0  3      
  nop                                    #  42    0x7aca3  1      
.L_7ace0:                                #        0x7aca4  0      
  leal 0x5c(%rbx), %edi                  #  43    0x7aca4  3      
  movl %eax, 0x8(%rsp)                   #  44    0x7aca7  4      
  nop                                    #  45    0x7acab  1      
  nop                                    #  46    0x7acac  1      
  callq .__local_lock_release_recursive  #  47    0x7acad  5      
  movl 0x8(%rsp), %eax                   #  48    0x7acb2  4      
  addl $0x18, %esp                       #  49    0x7acb6  3      
  addq %r15, %rsp                        #  50    0x7acb9  3      
  popq %rbx                              #  51    0x7acbc  2      
  popq %r12                              #  52    0x7acbe  3      
  popq %r11                              #  53    0x7acc1  3      
  andl $0xffffffe0, %r11d                #  54    0x7acc4  7      
  addq %r15, %r11                        #  55    0x7accb  3      
  jmpq %r11                              #  56    0x7acce  3      
  nop                                    #  57    0x7acd1  1      
.L_7ad20:                                #        0x7acd2  0      
  movl %r12d, %edi                       #  58    0x7acd2  3      
  nop                                    #  59    0x7acd5  1      
  nop                                    #  60    0x7acd6  1      
  callq .__sinit                         #  61    0x7acd7  5      
  jmpq .L_7ac60                          #  62    0x7acdc  5      
  nop                                    #  63    0x7ace1  1      
  nop                                    #  64    0x7ace2  1      
.L_7ad60:                                #        0x7ace3  0      
  leal 0x5c(%rbx), %edi                  #  65    0x7ace3  3      
  nop                                    #  66    0x7ace6  1      
  nop                                    #  67    0x7ace7  1      
  callq .__local_lock_acquire_recursive  #  68    0x7ace8  5      
  jmpq .L_7ac80                          #  69    0x7aced  5      
  nop                                    #  70    0x7acf2  1      
  nop                                    #  71    0x7acf3  1      
                                                                  
.size _fflush_r, .-_fflush_r

