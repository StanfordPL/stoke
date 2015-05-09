  .text
  .globl __libc_fini_array
  .type __libc_fini_array, @function

#! file-offset 0x68440
#! rip-offset  0x68440
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
.__libc_fini_array:                #        0x68440  0      
  pushq %r12                       #  1     0x68440  3      
  pushq %rbx                       #  2     0x68443  2      
  movl $0x10030484, %ebx           #  3     0x68445  5      
  subl $0x10030484, %ebx           #  4     0x6844a  6      
  sarl $0x2, %ebx                  #  5     0x68450  3      
  subl $0x8, %esp                  #  6     0x68453  3      
  addq %r15, %rsp                  #  7     0x68456  3      
  testl %ebx, %ebx                 #  8     0x68459  2      
  je .L_684c0                      #  9     0x6845b  6      
  nop                              #  10    0x68461  1      
  leal 0x10030480(,%rbx,4), %r12d  #  11    0x68462  8      
  nop                              #  12    0x6846a  1      
  nop                              #  13    0x6846b  1      
.L_68480:                          #        0x6846c  0      
  movl %r12d, %eax                 #  14    0x6846c  3      
  subl $0x1, %ebx                  #  15    0x6846f  3      
  subl $0x4, %r12d                 #  16    0x68472  4      
  movl %eax, %eax                  #  17    0x68476  2      
  movl (%r15,%rax,1), %eax         #  18    0x68478  4      
  nop                              #  19    0x6847c  1      
  andl $0xffffffe0, %eax           #  20    0x6847d  5      
  addq %r15, %rax                  #  21    0x68482  3      
  callq %rax                       #  22    0x68485  2      
  testl %ebx, %ebx                 #  23    0x68487  2      
  jne .L_68480                     #  24    0x68489  6      
  nop                              #  25    0x6848f  1      
  nop                              #  26    0x68490  1      
.L_684c0:                          #        0x68491  0      
  addl $0x8, %esp                  #  27    0x68491  3      
  addq %r15, %rsp                  #  28    0x68494  3      
  popq %rbx                        #  29    0x68497  2      
  popq %r12                        #  30    0x68499  3      
  jmpq ._fini                      #  31    0x6849c  5      
  nop                              #  32    0x684a1  1      
  nop                              #  33    0x684a2  1      
  nop                              #  34    0x684a3  1      
  nop                              #  35    0x684a4  1      
  nop                              #  36    0x684a5  1      
  nop                              #  37    0x684a6  1      
  nop                              #  38    0x684a7  1      
  nop                              #  39    0x684a8  1      
  nop                              #  40    0x684a9  1      
  nop                              #  41    0x684aa  1      
  nop                              #  42    0x684ab  1      
  nop                              #  43    0x684ac  1      
  nop                              #  44    0x684ad  1      
  nop                              #  45    0x684ae  1      
  nop                              #  46    0x684af  1      
  nop                              #  47    0x684b0  1      
  nop                              #  48    0x684b1  1      
  nop                              #  49    0x684b2  1      
                                                            
.size __libc_fini_array, .-__libc_fini_array

