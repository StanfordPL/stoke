  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0x498c0
#! rip-offset  0x498c0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjRKSsjj:                  #        0x498c0  0      
  movl %edx, %edx                       #  1     0x498c0  2      
  subl $0x8, %esp                       #  2     0x498c2  3      
  addq %r15, %rsp                       #  3     0x498c5  3      
  movl %edi, %edi                       #  4     0x498c8  2      
  movl %edx, %edx                       #  5     0x498ca  2      
  movl (%r15,%rdx,1), %edx              #  6     0x498cc  4      
  leal -0xc(%rdx), %eax                 #  7     0x498d0  3      
  movl %eax, %eax                       #  8     0x498d3  2      
  movl (%r15,%rax,1), %eax              #  9     0x498d5  4      
  cmpl %eax, %ecx                       #  10    0x498d9  2      
  nop                                   #  11    0x498db  1      
  ja .L_49900                           #  12    0x498dc  6      
  subl %ecx, %eax                       #  13    0x498e2  2      
  leal (%rcx,%rdx,1), %edx              #  14    0x498e4  3      
  cmpl %r8d, %eax                       #  15    0x498e7  3      
  cmoval %r8d, %eax                     #  16    0x498ea  4      
  addl $0x8, %esp                       #  17    0x498ee  3      
  addq %r15, %rsp                       #  18    0x498f1  3      
  movl %eax, %ecx                       #  19    0x498f4  2      
  jmpq ._ZNSs6insertEjPKcj              #  20    0x498f6  5      
  nop                                   #  21    0x498fb  1      
.L_49900:                               #        0x498fc  0      
  movl $0x10020a6a, %edi                #  22    0x498fc  5      
  nop                                   #  23    0x49901  1      
  nop                                   #  24    0x49902  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  25    0x49903  5      
                                                                 
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

