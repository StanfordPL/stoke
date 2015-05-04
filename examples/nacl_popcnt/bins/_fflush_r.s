  .text
  .globl _fflush_r
  .type _fflush_r, @function

#! file-offset 0x7aca0
#! rip-offset  0x7aca0
#! capacity    384 bytes

# Text                                   #  Line  RIP      Bytes  
._fflush_r:                              #        0x7aca0  0      
  pushq %r12                             #  1     0x7aca0  3      
  movl %edi, %r12d                       #  2     0x7aca3  3      
  pushq %rbx                             #  3     0x7aca6  2      
  movl %esi, %ebx                        #  4     0x7aca8  2      
  subl $0x18, %esp                       #  5     0x7acaa  3      
  addq %r15, %rsp                        #  6     0x7acad  3      
  testq %r12, %r12                       #  7     0x7acb0  3      
  je .L_7ace0                            #  8     0x7acb3  6      
  movl %r12d, %r12d                      #  9     0x7acb9  3      
  movl 0x38(%r15,%r12,1), %r9d           #  10    0x7acbc  5      
  testl %r9d, %r9d                       #  11    0x7acc1  3      
  xchgw %ax, %ax                         #  12    0x7acc4  3      
  je .L_7ada0                            #  13    0x7acc7  6      
  nop                                    #  14    0x7accd  1      
  nop                                    #  15    0x7acce  1      
.L_7ace0:                                #        0x7accf  0      
  movl %ebx, %ebx                        #  16    0x7accf  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  17    0x7acd1  6      
  xorl %eax, %eax                        #  18    0x7acd7  2      
  testw %dx, %dx                         #  19    0x7acd9  3      
  je .L_7ad40                            #  20    0x7acdc  6      
  andb $0x2, %dh                         #  21    0x7ace2  3      
  je .L_7ade0                            #  22    0x7ace5  6      
  nop                                    #  23    0x7aceb  1      
.L_7ad00:                                #        0x7acec  0      
  movl %ebx, %esi                        #  24    0x7acec  2      
  movl %r12d, %edi                       #  25    0x7acee  3      
  nop                                    #  26    0x7acf1  1      
  nop                                    #  27    0x7acf2  1      
  callq .__sflush_r                      #  28    0x7acf3  5      
  movl %ebx, %ebx                        #  29    0x7acf8  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  30    0x7acfa  6      
  je .L_7ad60                            #  31    0x7ad00  6      
  nop                                    #  32    0x7ad06  1      
  nop                                    #  33    0x7ad07  1      
.L_7ad40:                                #        0x7ad08  0      
  addl $0x18, %esp                       #  34    0x7ad08  3      
  addq %r15, %rsp                        #  35    0x7ad0b  3      
  popq %rbx                              #  36    0x7ad0e  2      
  popq %r12                              #  37    0x7ad10  3      
  popq %r11                              #  38    0x7ad13  3      
  andl $0xffffffe0, %r11d                #  39    0x7ad16  7      
  addq %r15, %r11                        #  40    0x7ad1d  3      
  jmpq %r11                              #  41    0x7ad20  3      
  nop                                    #  42    0x7ad23  1      
.L_7ad60:                                #        0x7ad24  0      
  leal 0x5c(%rbx), %edi                  #  43    0x7ad24  3      
  movl %eax, 0x8(%rsp)                   #  44    0x7ad27  4      
  nop                                    #  45    0x7ad2b  1      
  nop                                    #  46    0x7ad2c  1      
  callq .__local_lock_release_recursive  #  47    0x7ad2d  5      
  movl 0x8(%rsp), %eax                   #  48    0x7ad32  4      
  addl $0x18, %esp                       #  49    0x7ad36  3      
  addq %r15, %rsp                        #  50    0x7ad39  3      
  popq %rbx                              #  51    0x7ad3c  2      
  popq %r12                              #  52    0x7ad3e  3      
  popq %r11                              #  53    0x7ad41  3      
  andl $0xffffffe0, %r11d                #  54    0x7ad44  7      
  addq %r15, %r11                        #  55    0x7ad4b  3      
  jmpq %r11                              #  56    0x7ad4e  3      
  nop                                    #  57    0x7ad51  1      
.L_7ada0:                                #        0x7ad52  0      
  movl %r12d, %edi                       #  58    0x7ad52  3      
  nop                                    #  59    0x7ad55  1      
  nop                                    #  60    0x7ad56  1      
  callq .__sinit                         #  61    0x7ad57  5      
  jmpq .L_7ace0                          #  62    0x7ad5c  5      
  nop                                    #  63    0x7ad61  1      
  nop                                    #  64    0x7ad62  1      
.L_7ade0:                                #        0x7ad63  0      
  leal 0x5c(%rbx), %edi                  #  65    0x7ad63  3      
  nop                                    #  66    0x7ad66  1      
  nop                                    #  67    0x7ad67  1      
  callq .__local_lock_acquire_recursive  #  68    0x7ad68  5      
  jmpq .L_7ad00                          #  69    0x7ad6d  5      
  nop                                    #  70    0x7ad72  1      
  nop                                    #  71    0x7ad73  1      
                                                                  
.size _fflush_r, .-_fflush_r

