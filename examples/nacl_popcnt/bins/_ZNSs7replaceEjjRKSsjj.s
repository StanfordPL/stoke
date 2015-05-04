  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0x492c0
#! rip-offset  0x492c0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs7replaceEjjRKSsjj:                #        0x492c0  0      
  movl %ecx, %ecx                       #  1     0x492c0  2      
  subl $0x8, %esp                       #  2     0x492c2  3      
  addq %r15, %rsp                       #  3     0x492c5  3      
  movl %r8d, %eax                       #  4     0x492c8  3      
  movl %ecx, %ecx                       #  5     0x492cb  2      
  movl (%r15,%rcx,1), %ecx              #  6     0x492cd  4      
  movl %edi, %edi                       #  7     0x492d1  2      
  leal -0xc(%rcx), %r8d                 #  8     0x492d3  4      
  movl %r8d, %r8d                       #  9     0x492d7  3      
  movl (%r15,%r8,1), %r8d               #  10    0x492da  4      
  xchgw %ax, %ax                        #  11    0x492de  3      
  cmpl %r8d, %eax                       #  12    0x492e1  3      
  ja .L_49300                           #  13    0x492e4  6      
  subl %eax, %r8d                       #  14    0x492ea  3      
  leal (%rax,%rcx,1), %ecx              #  15    0x492ed  3      
  cmpl %r9d, %r8d                       #  16    0x492f0  3      
  cmoval %r9d, %r8d                     #  17    0x492f3  4      
  addl $0x8, %esp                       #  18    0x492f7  3      
  addq %r15, %rsp                       #  19    0x492fa  3      
  jmpq ._ZNSs7replaceEjjPKcj            #  20    0x492fd  5      
  nop                                   #  21    0x49302  1      
.L_49300:                               #        0x49303  0      
  movl $0x10020a54, %edi                #  22    0x49303  5      
  nop                                   #  23    0x49308  1      
  nop                                   #  24    0x49309  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x4930a  5      
                                                                 
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj

