  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x510
#! rip-offset  0x400510
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  
.__libc_csu_init:            #        0x400510  0      
  pushq %r15                 #  1     0x400510  3      
  movl %edi, %r15d           #  2     0x400513  3      
  pushq %r14                 #  3     0x400516  3      
  movq %rsi, %r14            #  4     0x400519  3      
  pushq %r13                 #  5     0x40051c  3      
  movq %rdx, %r13            #  6     0x40051f  3      
  pushq %r12                 #  7     0x400522  3      
  leaq 0x2008e8(%rip), %r12  #  8     0x400525  7      
  pushq %rbp                 #  9     0x40052c  2      
  leaq 0x2008e8(%rip), %rbp  #  10    0x40052e  7      
  pushq %rbx                 #  11    0x400535  2      
  subq %r12, %rbp            #  12    0x400537  3      
  xorl %ebx, %ebx            #  13    0x40053a  2      
  sarq $0x3, %rbp            #  14    0x40053c  4      
  subq $0x8, %rsp            #  15    0x400540  4      
  callq ._init               #  16    0x400544  5      
  testq %rbp, %rbp           #  17    0x400549  3      
  je .L_400566               #  18    0x40054c  6      
  nop                        #  19    0x400552  1      
.L_400550:                   #        0x400553  0      
  movq %r13, %rdx            #  20    0x400553  3      
  movq %r14, %rsi            #  21    0x400556  3      
  movl %r15d, %edi           #  22    0x400559  3      
  callq (%r12,%rbx,8)        #  23    0x40055c  4      
  addq $0x1, %rbx            #  24    0x400560  4      
  cmpq %rbp, %rbx            #  25    0x400564  3      
  jne .L_400550              #  26    0x400567  6      
.L_400566:                   #        0x40056d  0      
  addq $0x8, %rsp            #  27    0x40056d  4      
  popq %rbx                  #  28    0x400571  2      
  popq %rbp                  #  29    0x400573  2      
  popq %r12                  #  30    0x400575  3      
  popq %r13                  #  31    0x400578  3      
  popq %r14                  #  32    0x40057b  3      
  popq %r15                  #  33    0x40057e  3      
  retq                       #  34    0x400581  1      
  nop                        #  35    0x400582  1      
                                                       
.size __libc_csu_init, .-__libc_csu_init

