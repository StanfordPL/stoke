  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0x48460
#! rip-offset  0x48460
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6assignERKSsjj:                   #        0x48460  0      
  movl %esi, %esi                       #  1     0x48460  2      
  subl $0x8, %esp                       #  2     0x48462  3      
  addq %r15, %rsp                       #  3     0x48465  3      
  movl %edi, %edi                       #  4     0x48468  2      
  movl %esi, %esi                       #  5     0x4846a  2      
  movl (%r15,%rsi,1), %esi              #  6     0x4846c  4      
  leal -0xc(%rsi), %eax                 #  7     0x48470  3      
  movl %eax, %eax                       #  8     0x48473  2      
  movl (%r15,%rax,1), %eax              #  9     0x48475  4      
  cmpl %eax, %edx                       #  10    0x48479  2      
  nop                                   #  11    0x4847b  1      
  ja .L_484a0                           #  12    0x4847c  6      
  subl %edx, %eax                       #  13    0x48482  2      
  leal (%rdx,%rsi,1), %esi              #  14    0x48484  3      
  cmpl %ecx, %eax                       #  15    0x48487  2      
  cmoval %ecx, %eax                     #  16    0x48489  3      
  addl $0x8, %esp                       #  17    0x4848c  3      
  addq %r15, %rsp                       #  18    0x4848f  3      
  movl %eax, %edx                       #  19    0x48492  2      
  jmpq ._ZNSs6assignEPKcj               #  20    0x48494  5      
  nop                                   #  21    0x48499  1      
.L_484a0:                               #        0x4849a  0      
  movl $0x10020a22, %edi                #  22    0x4849a  5      
  nop                                   #  23    0x4849f  1      
  nop                                   #  24    0x484a0  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x484a1  5      
                                                                 
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

