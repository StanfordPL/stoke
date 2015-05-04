  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0x49940
#! rip-offset  0x49940
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjRKSsjj:                  #        0x49940  0      
  movl %edx, %edx                       #  1     0x49940  2      
  subl $0x8, %esp                       #  2     0x49942  3      
  addq %r15, %rsp                       #  3     0x49945  3      
  movl %edi, %edi                       #  4     0x49948  2      
  movl %edx, %edx                       #  5     0x4994a  2      
  movl (%r15,%rdx,1), %edx              #  6     0x4994c  4      
  leal -0xc(%rdx), %eax                 #  7     0x49950  3      
  movl %eax, %eax                       #  8     0x49953  2      
  movl (%r15,%rax,1), %eax              #  9     0x49955  4      
  cmpl %eax, %ecx                       #  10    0x49959  2      
  nop                                   #  11    0x4995b  1      
  ja .L_49980                           #  12    0x4995c  6      
  subl %ecx, %eax                       #  13    0x49962  2      
  leal (%rcx,%rdx,1), %edx              #  14    0x49964  3      
  cmpl %r8d, %eax                       #  15    0x49967  3      
  cmoval %r8d, %eax                     #  16    0x4996a  4      
  addl $0x8, %esp                       #  17    0x4996e  3      
  addq %r15, %rsp                       #  18    0x49971  3      
  movl %eax, %ecx                       #  19    0x49974  2      
  jmpq ._ZNSs6insertEjPKcj              #  20    0x49976  5      
  nop                                   #  21    0x4997b  1      
.L_49980:                               #        0x4997c  0      
  movl $0x10020a6a, %edi                #  22    0x4997c  5      
  nop                                   #  23    0x49981  1      
  nop                                   #  24    0x49982  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x49983  5      
                                                                 
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

