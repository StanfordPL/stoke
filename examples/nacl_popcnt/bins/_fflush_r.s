  .text
  .globl _fflush_r
  .type _fflush_r, @function

#! file-offset 0x7ac00
#! rip-offset  0x7ac00
#! capacity    384 bytes

# Text                                   #  Line  RIP      Bytes  
._fflush_r:                              #        0x7ac00  0      
  pushq %r12                             #  1     0x7ac00  3      
  movl %edi, %r12d                       #  2     0x7ac03  3      
  pushq %rbx                             #  3     0x7ac06  2      
  movl %esi, %ebx                        #  4     0x7ac08  2      
  subl $0x18, %esp                       #  5     0x7ac0a  3      
  addq %r15, %rsp                        #  6     0x7ac0d  3      
  testq %r12, %r12                       #  7     0x7ac10  3      
  je .L_7ac40                            #  8     0x7ac13  6      
  movl %r12d, %r12d                      #  9     0x7ac19  3      
  movl 0x38(%r15,%r12,1), %r9d           #  10    0x7ac1c  5      
  testl %r9d, %r9d                       #  11    0x7ac21  3      
  xchgw %ax, %ax                         #  12    0x7ac24  3      
  je .L_7ad00                            #  13    0x7ac27  6      
  nop                                    #  14    0x7ac2d  1      
  nop                                    #  15    0x7ac2e  1      
.L_7ac40:                                #        0x7ac2f  0      
  movl %ebx, %ebx                        #  16    0x7ac2f  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  17    0x7ac31  6      
  xorl %eax, %eax                        #  18    0x7ac37  2      
  testw %dx, %dx                         #  19    0x7ac39  3      
  je .L_7aca0                            #  20    0x7ac3c  6      
  andb $0x2, %dh                         #  21    0x7ac42  3      
  je .L_7ad40                            #  22    0x7ac45  6      
  nop                                    #  23    0x7ac4b  1      
.L_7ac60:                                #        0x7ac4c  0      
  movl %ebx, %esi                        #  24    0x7ac4c  2      
  movl %r12d, %edi                       #  25    0x7ac4e  3      
  nop                                    #  26    0x7ac51  1      
  nop                                    #  27    0x7ac52  1      
  callq .__sflush_r                      #  28    0x7ac53  5      
  movl %ebx, %ebx                        #  29    0x7ac58  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  30    0x7ac5a  6      
  je .L_7acc0                            #  31    0x7ac60  6      
  nop                                    #  32    0x7ac66  1      
  nop                                    #  33    0x7ac67  1      
.L_7aca0:                                #        0x7ac68  0      
  addl $0x18, %esp                       #  34    0x7ac68  3      
  addq %r15, %rsp                        #  35    0x7ac6b  3      
  popq %rbx                              #  36    0x7ac6e  2      
  popq %r12                              #  37    0x7ac70  3      
  popq %r11                              #  38    0x7ac73  3      
  andl $0xffffffe0, %r11d                #  39    0x7ac76  7      
  addq %r15, %r11                        #  40    0x7ac7d  3      
  jmpq %r11                              #  41    0x7ac80  3      
  nop                                    #  42    0x7ac83  1      
.L_7acc0:                                #        0x7ac84  0      
  leal 0x5c(%rbx), %edi                  #  43    0x7ac84  3      
  movl %eax, 0x8(%rsp)                   #  44    0x7ac87  4      
  nop                                    #  45    0x7ac8b  1      
  nop                                    #  46    0x7ac8c  1      
  callq .__local_lock_release_recursive  #  47    0x7ac8d  5      
  movl 0x8(%rsp), %eax                   #  48    0x7ac92  4      
  addl $0x18, %esp                       #  49    0x7ac96  3      
  addq %r15, %rsp                        #  50    0x7ac99  3      
  popq %rbx                              #  51    0x7ac9c  2      
  popq %r12                              #  52    0x7ac9e  3      
  popq %r11                              #  53    0x7aca1  3      
  andl $0xffffffe0, %r11d                #  54    0x7aca4  7      
  addq %r15, %r11                        #  55    0x7acab  3      
  jmpq %r11                              #  56    0x7acae  3      
  nop                                    #  57    0x7acb1  1      
.L_7ad00:                                #        0x7acb2  0      
  movl %r12d, %edi                       #  58    0x7acb2  3      
  nop                                    #  59    0x7acb5  1      
  nop                                    #  60    0x7acb6  1      
  callq .__sinit                         #  61    0x7acb7  5      
  jmpq .L_7ac40                          #  62    0x7acbc  5      
  nop                                    #  63    0x7acc1  1      
  nop                                    #  64    0x7acc2  1      
.L_7ad40:                                #        0x7acc3  0      
  leal 0x5c(%rbx), %edi                  #  65    0x7acc3  3      
  nop                                    #  66    0x7acc6  1      
  nop                                    #  67    0x7acc7  1      
  callq .__local_lock_acquire_recursive  #  68    0x7acc8  5      
  jmpq .L_7ac60                          #  69    0x7accd  5      
  nop                                    #  70    0x7acd2  1      
  nop                                    #  71    0x7acd3  1      
                                                                  
.size _fflush_r, .-_fflush_r

