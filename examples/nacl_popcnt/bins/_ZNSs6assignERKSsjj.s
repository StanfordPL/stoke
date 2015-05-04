  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0x48500
#! rip-offset  0x48500
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6assignERKSsjj:                   #        0x48500  0      
  movl %esi, %esi                       #  1     0x48500  2      
  subl $0x8, %esp                       #  2     0x48502  3      
  addq %r15, %rsp                       #  3     0x48505  3      
  movl %edi, %edi                       #  4     0x48508  2      
  movl %esi, %esi                       #  5     0x4850a  2      
  movl (%r15,%rsi,1), %esi              #  6     0x4850c  4      
  leal -0xc(%rsi), %eax                 #  7     0x48510  3      
  movl %eax, %eax                       #  8     0x48513  2      
  movl (%r15,%rax,1), %eax              #  9     0x48515  4      
  cmpl %eax, %edx                       #  10    0x48519  2      
  nop                                   #  11    0x4851b  1      
  ja .L_48540                           #  12    0x4851c  6      
  subl %edx, %eax                       #  13    0x48522  2      
  leal (%rdx,%rsi,1), %esi              #  14    0x48524  3      
  cmpl %ecx, %eax                       #  15    0x48527  2      
  cmoval %ecx, %eax                     #  16    0x48529  3      
  addl $0x8, %esp                       #  17    0x4852c  3      
  addq %r15, %rsp                       #  18    0x4852f  3      
  movl %eax, %edx                       #  19    0x48532  2      
  jmpq ._ZNSs6assignEPKcj               #  20    0x48534  5      
  nop                                   #  21    0x48539  1      
.L_48540:                               #        0x4853a  0      
  movl $0x10020a22, %edi                #  22    0x4853a  5      
  nop                                   #  23    0x4853f  1      
  nop                                   #  24    0x48540  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x48541  5      
                                                                 
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

