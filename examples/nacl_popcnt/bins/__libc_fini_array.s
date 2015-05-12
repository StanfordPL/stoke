  .text
  .globl __libc_fini_array
  .type __libc_fini_array, @function

#! file-offset 0x68460
#! rip-offset  0x68460
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
.__libc_fini_array:                #        0x68460  0      
  pushq %r12                       #  1     0x68460  3      
  pushq %rbx                       #  2     0x68463  2      
  movl $0x10030484, %ebx           #  3     0x68465  5      
  subl $0x10030484, %ebx           #  4     0x6846a  6      
  sarl $0x2, %ebx                  #  5     0x68470  3      
  subl $0x8, %esp                  #  6     0x68473  3      
  addq %r15, %rsp                  #  7     0x68476  3      
  testl %ebx, %ebx                 #  8     0x68479  2      
  je .L_684e0                      #  9     0x6847b  6      
  nop                              #  10    0x68481  1      
  leal 0x10030480(,%rbx,4), %r12d  #  11    0x68482  8      
  nop                              #  12    0x6848a  1      
  nop                              #  13    0x6848b  1      
.L_684a0:                          #        0x6848c  0      
  movl %r12d, %eax                 #  14    0x6848c  3      
  subl $0x1, %ebx                  #  15    0x6848f  3      
  subl $0x4, %r12d                 #  16    0x68492  4      
  movl %eax, %eax                  #  17    0x68496  2      
  movl (%r15,%rax,1), %eax         #  18    0x68498  4      
  nop                              #  19    0x6849c  1      
  andl $0xffffffe0, %eax           #  20    0x6849d  5      
  addq %r15, %rax                  #  21    0x684a2  3      
  callq %rax                       #  22    0x684a5  2      
  testl %ebx, %ebx                 #  23    0x684a7  2      
  jne .L_684a0                     #  24    0x684a9  6      
  nop                              #  25    0x684af  1      
  nop                              #  26    0x684b0  1      
.L_684e0:                          #        0x684b1  0      
  addl $0x8, %esp                  #  27    0x684b1  3      
  addq %r15, %rsp                  #  28    0x684b4  3      
  popq %rbx                        #  29    0x684b7  2      
  popq %r12                        #  30    0x684b9  3      
  jmpq ._fini                      #  31    0x684bc  5      
  nop                              #  32    0x684c1  1      
  nop                              #  33    0x684c2  1      
  nop                              #  34    0x684c3  1      
  nop                              #  35    0x684c4  1      
  nop                              #  36    0x684c5  1      
  nop                              #  37    0x684c6  1      
  nop                              #  38    0x684c7  1      
  nop                              #  39    0x684c8  1      
  nop                              #  40    0x684c9  1      
  nop                              #  41    0x684ca  1      
  nop                              #  42    0x684cb  1      
  nop                              #  43    0x684cc  1      
  nop                              #  44    0x684cd  1      
  nop                              #  45    0x684ce  1      
  nop                              #  46    0x684cf  1      
  nop                              #  47    0x684d0  1      
  nop                              #  48    0x684d1  1      
  nop                              #  49    0x684d2  1      
                                                            
.size __libc_fini_array, .-__libc_fini_array

