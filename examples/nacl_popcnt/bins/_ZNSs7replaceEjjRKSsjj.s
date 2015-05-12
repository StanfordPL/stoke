  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0x49240
#! rip-offset  0x49240
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs7replaceEjjRKSsjj:                #        0x49240  0      
  movl %ecx, %ecx                       #  1     0x49240  2      
  subl $0x8, %esp                       #  2     0x49242  3      
  addq %r15, %rsp                       #  3     0x49245  3      
  movl %r8d, %eax                       #  4     0x49248  3      
  movl %ecx, %ecx                       #  5     0x4924b  2      
  movl (%r15,%rcx,1), %ecx              #  6     0x4924d  4      
  movl %edi, %edi                       #  7     0x49251  2      
  leal -0xc(%rcx), %r8d                 #  8     0x49253  4      
  movl %r8d, %r8d                       #  9     0x49257  3      
  movl (%r15,%r8,1), %r8d               #  10    0x4925a  4      
  xchgw %ax, %ax                        #  11    0x4925e  3      
  cmpl %r8d, %eax                       #  12    0x49261  3      
  ja .L_49280                           #  13    0x49264  6      
  subl %eax, %r8d                       #  14    0x4926a  3      
  leal (%rax,%rcx,1), %ecx              #  15    0x4926d  3      
  cmpl %r9d, %r8d                       #  16    0x49270  3      
  cmoval %r9d, %r8d                     #  17    0x49273  4      
  addl $0x8, %esp                       #  18    0x49277  3      
  addq %r15, %rsp                       #  19    0x4927a  3      
  jmpq ._ZNSs7replaceEjjPKcj            #  20    0x4927d  5      
  nop                                   #  21    0x49282  1      
.L_49280:                               #        0x49283  0      
  movl $0x10020a54, %edi                #  22    0x49283  5      
  nop                                   #  23    0x49288  1      
  nop                                   #  24    0x49289  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x4928a  5      
                                                                 
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj

