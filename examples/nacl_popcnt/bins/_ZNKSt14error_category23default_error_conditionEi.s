  .text
  .globl _ZNKSt14error_category23default_error_conditionEi
  .type _ZNKSt14error_category23default_error_conditionEi, @function

#! file-offset 0x4ef60
#! rip-offset  0x4ef60
#! capacity    32 bytes

# Text                                               #  Line  RIP      Bytes  
._ZNKSt14error_category23default_error_conditionEi:  #        0x4ef60  0      
  popq %r11                                          #  1     0x4ef60  3      
  movq %rdi, %rax                                    #  2     0x4ef63  3      
  movl %esi, %esi                                    #  3     0x4ef66  2      
  shlq $0x20, %rax                                   #  4     0x4ef68  4      
  orq %rsi, %rax                                     #  5     0x4ef6c  3      
  andl $0xffffffe0, %r11d                            #  6     0x4ef6f  7      
  addq %r15, %r11                                    #  7     0x4ef76  3      
  jmpq %r11                                          #  8     0x4ef79  3      
  nop                                                #  9     0x4ef7c  1      
  nop                                                #  10    0x4ef7d  1      
  nop                                                #  11    0x4ef7e  1      
  nop                                                #  12    0x4ef7f  1      
  nop                                                #  13    0x4ef80  1      
  nop                                                #  14    0x4ef81  1      
  nop                                                #  15    0x4ef82  1      
  nop                                                #  16    0x4ef83  1      
                                                                              
.size _ZNKSt14error_category23default_error_conditionEi, .-_ZNKSt14error_category23default_error_conditionEi

