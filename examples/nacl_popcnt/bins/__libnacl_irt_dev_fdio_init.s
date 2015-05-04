  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x88340
#! rip-offset  0x88340
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  
.__libnacl_irt_dev_fdio_init:  #        0x88340  0      
  subl $0x8, %esp              #  1     0x88340  3      
  addq %r15, %rsp              #  2     0x88343  3      
  movl $0x38, %edx             #  3     0x88346  5      
  movl $0x10036e80, %esi       #  4     0x8834b  5      
  movl $0x100251e0, %edi       #  5     0x88350  5      
  nop                          #  6     0x88355  1      
  callq .__libnacl_irt_query   #  7     0x88356  5      
  testl %eax, %eax             #  8     0x8835b  2      
  je .L_883a0                  #  9     0x8835d  6      
  nop                          #  10    0x88363  1      
  nop                          #  11    0x88364  1      
.L_88380:                      #        0x88365  0      
  addl $0x8, %esp              #  12    0x88365  3      
  addq %r15, %rsp              #  13    0x88368  3      
  popq %r11                    #  14    0x8836b  3      
  andl $0xffffffe0, %r11d      #  15    0x8836e  7      
  addq %r15, %r11              #  16    0x88375  3      
  jmpq %r11                    #  17    0x88378  3      
  nop                          #  18    0x8837b  1      
.L_883a0:                      #        0x8837c  0      
  movl $0x20, %edx             #  19    0x8837c  5      
  movl $0x10036e80, %esi       #  20    0x88381  5      
  movl $0x10023404, %edi       #  21    0x88386  5      
  nop                          #  22    0x8838b  1      
  callq .__libnacl_irt_query   #  23    0x8838c  5      
  testl %eax, %eax             #  24    0x88391  2      
  jne .L_88380                 #  25    0x88393  6      
  movl $0x20, %edx             #  26    0x88399  5      
  movl $0x10036e80, %esi       #  27    0x8839e  5      
  movl $0x10023416, %edi       #  28    0x883a3  5      
  addl $0x8, %esp              #  29    0x883a8  3      
  addq %r15, %rsp              #  30    0x883ab  3      
  jmpq .__libnacl_irt_query    #  31    0x883ae  5      
  nop                          #  32    0x883b3  1      
  nop                          #  33    0x883b4  1      
                                                        
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

