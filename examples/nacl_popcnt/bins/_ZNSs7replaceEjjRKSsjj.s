  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0x49220
#! rip-offset  0x49220
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs7replaceEjjRKSsjj:                #        0x49220  0      
  movl %ecx, %ecx                       #  1     0x49220  2      
  subl $0x8, %esp                       #  2     0x49222  3      
  addq %r15, %rsp                       #  3     0x49225  3      
  movl %r8d, %eax                       #  4     0x49228  3      
  movl %ecx, %ecx                       #  5     0x4922b  2      
  movl (%r15,%rcx,1), %ecx              #  6     0x4922d  4      
  movl %edi, %edi                       #  7     0x49231  2      
  leal -0xc(%rcx), %r8d                 #  8     0x49233  4      
  movl %r8d, %r8d                       #  9     0x49237  3      
  movl (%r15,%r8,1), %r8d               #  10    0x4923a  4      
  xchgw %ax, %ax                        #  11    0x4923e  3      
  cmpl %r8d, %eax                       #  12    0x49241  3      
  ja .L_49260                           #  13    0x49244  6      
  subl %eax, %r8d                       #  14    0x4924a  3      
  leal (%rax,%rcx,1), %ecx              #  15    0x4924d  3      
  cmpl %r9d, %r8d                       #  16    0x49250  3      
  cmoval %r9d, %r8d                     #  17    0x49253  4      
  addl $0x8, %esp                       #  18    0x49257  3      
  addq %r15, %rsp                       #  19    0x4925a  3      
  jmpq ._ZNSs7replaceEjjPKcj            #  20    0x4925d  5      
  nop                                   #  21    0x49262  1      
.L_49260:                               #        0x49263  0      
  movl $0x10020a54, %edi                #  22    0x49263  5      
  nop                                   #  23    0x49268  1      
  nop                                   #  24    0x49269  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x4926a  5      
                                                                 
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj

