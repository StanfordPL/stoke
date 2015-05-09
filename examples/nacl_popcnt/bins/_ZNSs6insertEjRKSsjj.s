  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0x498a0
#! rip-offset  0x498a0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjRKSsjj:                  #        0x498a0  0      
  movl %edx, %edx                       #  1     0x498a0  2      
  subl $0x8, %esp                       #  2     0x498a2  3      
  addq %r15, %rsp                       #  3     0x498a5  3      
  movl %edi, %edi                       #  4     0x498a8  2      
  movl %edx, %edx                       #  5     0x498aa  2      
  movl (%r15,%rdx,1), %edx              #  6     0x498ac  4      
  leal -0xc(%rdx), %eax                 #  7     0x498b0  3      
  movl %eax, %eax                       #  8     0x498b3  2      
  movl (%r15,%rax,1), %eax              #  9     0x498b5  4      
  cmpl %eax, %ecx                       #  10    0x498b9  2      
  nop                                   #  11    0x498bb  1      
  ja .L_498e0                           #  12    0x498bc  6      
  subl %ecx, %eax                       #  13    0x498c2  2      
  leal (%rcx,%rdx,1), %edx              #  14    0x498c4  3      
  cmpl %r8d, %eax                       #  15    0x498c7  3      
  cmoval %r8d, %eax                     #  16    0x498ca  4      
  addl $0x8, %esp                       #  17    0x498ce  3      
  addq %r15, %rsp                       #  18    0x498d1  3      
  movl %eax, %ecx                       #  19    0x498d4  2      
  jmpq ._ZNSs6insertEjPKcj              #  20    0x498d6  5      
  nop                                   #  21    0x498db  1      
.L_498e0:                               #        0x498dc  0      
  movl $0x10020a6a, %edi                #  22    0x498dc  5      
  nop                                   #  23    0x498e1  1      
  nop                                   #  24    0x498e2  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x498e3  5      
                                                                 
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

