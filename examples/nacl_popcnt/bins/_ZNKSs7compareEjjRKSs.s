  .text
  .globl _ZNKSs7compareEjjRKSs
  .type _ZNKSs7compareEjjRKSs, @function

#! file-offset 0x456e0
#! rip-offset  0x456e0
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjRKSs:                 #        0x456e0  0      
  movl %edi, %edi                       #  1     0x456e0  2      
  subl $0x8, %esp                       #  2     0x456e2  3      
  addq %r15, %rsp                       #  3     0x456e5  3      
  movl %ecx, %ecx                       #  4     0x456e8  2      
  movl %edi, %edi                       #  5     0x456ea  2      
  movl (%r15,%rdi,1), %eax              #  6     0x456ec  4      
  leal -0xc(%rax), %edi                 #  7     0x456f0  3      
  movl %edi, %edi                       #  8     0x456f3  2      
  movl (%r15,%rdi,1), %r8d              #  9     0x456f5  4      
  cmpl %r8d, %esi                       #  10    0x456f9  3      
  nop                                   #  11    0x456fc  1      
  ja .L_45780                           #  12    0x456fd  6      
  movl %ecx, %ecx                       #  13    0x45703  2      
  movl (%r15,%rcx,1), %edi              #  14    0x45705  4      
  subl %esi, %r8d                       #  15    0x45709  3      
  cmpl %r8d, %edx                       #  16    0x4570c  3      
  cmoval %r8d, %edx                     #  17    0x4570f  4      
  addl %eax, %esi                       #  18    0x45713  2      
  leal -0xc(%rdi), %ecx                 #  19    0x45715  3      
  movl %ecx, %ecx                       #  20    0x45718  2      
  movl (%r15,%rcx,1), %r8d              #  21    0x4571a  4      
  cmpl %r8d, %edx                       #  22    0x4571e  3      
  movl %r8d, %ecx                       #  23    0x45721  3      
  cmovbel %edx, %ecx                    #  24    0x45724  3      
  movl %ecx, %ecx                       #  25    0x45727  2      
  cmpq %rcx, %rcx                       #  26    0x45729  3      
  movl %esi, %esi                       #  27    0x4572c  2      
  leaq (%r15,%rsi,1), %rsi              #  28    0x4572e  4      
  movl %edi, %edi                       #  29    0x45732  2      
  leaq (%r15,%rdi,1), %rdi              #  30    0x45734  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  31    0x45738  3      
  movl %esi, %esi                       #  32    0x4573b  2      
  movl %edi, %edi                       #  33    0x4573d  2      
  seta %al                              #  34    0x4573f  3      
  setb %cl                              #  35    0x45742  3      
  subl %r8d, %edx                       #  36    0x45745  3      
  subb %cl, %al                         #  37    0x45748  2      
  movsbl %al, %eax                      #  38    0x4574a  3      
  testl %eax, %eax                      #  39    0x4574d  2      
  cmovel %edx, %eax                     #  40    0x4574f  3      
  addl $0x8, %esp                       #  41    0x45752  3      
  addq %r15, %rsp                       #  42    0x45755  3      
  popq %r11                             #  43    0x45758  3      
  nop                                   #  44    0x4575b  1      
  andl $0xffffffe0, %r11d               #  45    0x4575c  7      
  addq %r15, %r11                       #  46    0x45763  3      
  jmpq %r11                             #  47    0x45766  3      
  nop                                   #  48    0x45769  1      
  nop                                   #  49    0x4576a  1      
.L_45780:                               #        0x4576b  0      
  movl $0x100209b4, %edi                #  50    0x4576b  5      
  nop                                   #  51    0x45770  1      
  nop                                   #  52    0x45771  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  53    0x45772  5      
                                                                 
.size _ZNKSs7compareEjjRKSs, .-_ZNKSs7compareEjjRKSs

