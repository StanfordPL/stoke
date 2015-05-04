  .text
  .globl __libc_fini_array
  .type __libc_fini_array, @function

#! file-offset 0x684e0
#! rip-offset  0x684e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
.__libc_fini_array:                #        0x684e0  0      
  pushq %r12                       #  1     0x684e0  3      
  pushq %rbx                       #  2     0x684e3  2      
  movl $0x10030484, %ebx           #  3     0x684e5  5      
  subl $0x10030484, %ebx           #  4     0x684ea  6      
  sarl $0x2, %ebx                  #  5     0x684f0  3      
  subl $0x8, %esp                  #  6     0x684f3  3      
  addq %r15, %rsp                  #  7     0x684f6  3      
  testl %ebx, %ebx                 #  8     0x684f9  2      
  je .L_68560                      #  9     0x684fb  6      
  nop                              #  10    0x68501  1      
  leal 0x10030480(,%rbx,4), %r12d  #  11    0x68502  8      
  nop                              #  12    0x6850a  1      
  nop                              #  13    0x6850b  1      
.L_68520:                          #        0x6850c  0      
  movl %r12d, %eax                 #  14    0x6850c  3      
  subl $0x1, %ebx                  #  15    0x6850f  3      
  subl $0x4, %r12d                 #  16    0x68512  4      
  movl %eax, %eax                  #  17    0x68516  2      
  movl (%r15,%rax,1), %eax         #  18    0x68518  4      
  nop                              #  19    0x6851c  1      
  andl $0xffffffe0, %eax           #  20    0x6851d  5      
  addq %r15, %rax                  #  21    0x68522  3      
  callq %rax                       #  22    0x68525  2      
  testl %ebx, %ebx                 #  23    0x68527  2      
  jne .L_68520                     #  24    0x68529  6      
  nop                              #  25    0x6852f  1      
  nop                              #  26    0x68530  1      
.L_68560:                          #        0x68531  0      
  addl $0x8, %esp                  #  27    0x68531  3      
  addq %r15, %rsp                  #  28    0x68534  3      
  popq %rbx                        #  29    0x68537  2      
  popq %r12                        #  30    0x68539  3      
  jmpq ._fini                      #  31    0x6853c  5      
  nop                              #  32    0x68541  1      
  nop                              #  33    0x68542  1      
  nop                              #  34    0x68543  1      
  nop                              #  35    0x68544  1      
  nop                              #  36    0x68545  1      
  nop                              #  37    0x68546  1      
  nop                              #  38    0x68547  1      
  nop                              #  39    0x68548  1      
  nop                              #  40    0x68549  1      
  nop                              #  41    0x6854a  1      
  nop                              #  42    0x6854b  1      
  nop                              #  43    0x6854c  1      
  nop                              #  44    0x6854d  1      
  nop                              #  45    0x6854e  1      
  nop                              #  46    0x6854f  1      
  nop                              #  47    0x68550  1      
  nop                              #  48    0x68551  1      
  nop                              #  49    0x68552  1      
                                                            
.size __libc_fini_array, .-__libc_fini_array

