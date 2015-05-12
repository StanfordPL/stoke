  .text
  .globl _ZNKSs7compareEjjRKSs
  .type _ZNKSs7compareEjjRKSs, @function

#! file-offset 0x45660
#! rip-offset  0x45660
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjRKSs:                 #        0x45660  0      
  movl %edi, %edi                       #  1     0x45660  2      
  subl $0x8, %esp                       #  2     0x45662  3      
  addq %r15, %rsp                       #  3     0x45665  3      
  movl %ecx, %ecx                       #  4     0x45668  2      
  movl %edi, %edi                       #  5     0x4566a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x4566c  4      
  leal -0xc(%rax), %edi                 #  7     0x45670  3      
  movl %edi, %edi                       #  8     0x45673  2      
  movl (%r15,%rdi,1), %r8d              #  9     0x45675  4      
  cmpl %r8d, %esi                       #  10    0x45679  3      
  nop                                   #  11    0x4567c  1      
  ja .L_45700                           #  12    0x4567d  6      
  movl %ecx, %ecx                       #  13    0x45683  2      
  movl (%r15,%rcx,1), %edi              #  14    0x45685  4      
  subl %esi, %r8d                       #  15    0x45689  3      
  cmpl %r8d, %edx                       #  16    0x4568c  3      
  cmoval %r8d, %edx                     #  17    0x4568f  4      
  addl %eax, %esi                       #  18    0x45693  2      
  leal -0xc(%rdi), %ecx                 #  19    0x45695  3      
  movl %ecx, %ecx                       #  20    0x45698  2      
  movl (%r15,%rcx,1), %r8d              #  21    0x4569a  4      
  cmpl %r8d, %edx                       #  22    0x4569e  3      
  movl %r8d, %ecx                       #  23    0x456a1  3      
  cmovbel %edx, %ecx                    #  24    0x456a4  3      
  movl %ecx, %ecx                       #  25    0x456a7  2      
  cmpq %rcx, %rcx                       #  26    0x456a9  3      
  movl %esi, %esi                       #  27    0x456ac  2      
  leaq (%r15,%rsi,1), %rsi              #  28    0x456ae  4      
  movl %edi, %edi                       #  29    0x456b2  2      
  leaq (%r15,%rdi,1), %rdi              #  30    0x456b4  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  31    0x456b8  3      
  movl %esi, %esi                       #  32    0x456bb  2      
  movl %edi, %edi                       #  33    0x456bd  2      
  seta %al                              #  34    0x456bf  3      
  setb %cl                              #  35    0x456c2  3      
  subl %r8d, %edx                       #  36    0x456c5  3      
  subb %cl, %al                         #  37    0x456c8  2      
  movsbl %al, %eax                      #  38    0x456ca  3      
  testl %eax, %eax                      #  39    0x456cd  2      
  cmovel %edx, %eax                     #  40    0x456cf  3      
  addl $0x8, %esp                       #  41    0x456d2  3      
  addq %r15, %rsp                       #  42    0x456d5  3      
  popq %r11                             #  43    0x456d8  3      
  nop                                   #  44    0x456db  1      
  andl $0xffffffe0, %r11d               #  45    0x456dc  7      
  addq %r15, %r11                       #  46    0x456e3  3      
  jmpq %r11                             #  47    0x456e6  3      
  nop                                   #  48    0x456e9  1      
  nop                                   #  49    0x456ea  1      
.L_45700:                               #        0x456eb  0      
  movl $0x100209b4, %edi                #  50    0x456eb  5      
  nop                                   #  51    0x456f0  1      
  nop                                   #  52    0x456f1  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  53    0x456f2  5      
                                                                 
.size _ZNKSs7compareEjjRKSs, .-_ZNKSs7compareEjjRKSs

