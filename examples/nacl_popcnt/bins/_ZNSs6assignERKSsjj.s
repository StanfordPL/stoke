  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0x48480
#! rip-offset  0x48480
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6assignERKSsjj:                   #        0x48480  0      
  movl %esi, %esi                       #  1     0x48480  2      
  subl $0x8, %esp                       #  2     0x48482  3      
  addq %r15, %rsp                       #  3     0x48485  3      
  movl %edi, %edi                       #  4     0x48488  2      
  movl %esi, %esi                       #  5     0x4848a  2      
  movl (%r15,%rsi,1), %esi              #  6     0x4848c  4      
  leal -0xc(%rsi), %eax                 #  7     0x48490  3      
  movl %eax, %eax                       #  8     0x48493  2      
  movl (%r15,%rax,1), %eax              #  9     0x48495  4      
  cmpl %eax, %edx                       #  10    0x48499  2      
  nop                                   #  11    0x4849b  1      
  ja .L_484c0                           #  12    0x4849c  6      
  subl %edx, %eax                       #  13    0x484a2  2      
  leal (%rdx,%rsi,1), %esi              #  14    0x484a4  3      
  cmpl %ecx, %eax                       #  15    0x484a7  2      
  cmoval %ecx, %eax                     #  16    0x484a9  3      
  addl $0x8, %esp                       #  17    0x484ac  3      
  addq %r15, %rsp                       #  18    0x484af  3      
  movl %eax, %edx                       #  19    0x484b2  2      
  jmpq ._ZNSs6assignEPKcj               #  20    0x484b4  5      
  nop                                   #  21    0x484b9  1      
.L_484c0:                               #        0x484ba  0      
  movl $0x10020a22, %edi                #  22    0x484ba  5      
  nop                                   #  23    0x484bf  1      
  nop                                   #  24    0x484c0  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x484c1  5      
                                                                 
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

