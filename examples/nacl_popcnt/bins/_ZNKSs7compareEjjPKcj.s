  .text
  .globl _ZNKSs7compareEjjPKcj
  .type _ZNKSs7compareEjjPKcj, @function

#! file-offset 0x45580
#! rip-offset  0x45580
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjPKcj:                 #        0x45580  0      
  movl %edi, %eax                       #  1     0x45580  2      
  subl $0x8, %esp                       #  2     0x45582  3      
  addq %r15, %rsp                       #  3     0x45585  3      
  movl %ecx, %edi                       #  4     0x45588  2      
  movl %eax, %eax                       #  5     0x4558a  2      
  movl (%r15,%rax,1), %eax              #  6     0x4558c  4      
  leal -0xc(%rax), %ecx                 #  7     0x45590  3      
  movl %ecx, %ecx                       #  8     0x45593  2      
  movl (%r15,%rcx,1), %ecx              #  9     0x45595  4      
  cmpl %ecx, %esi                       #  10    0x45599  2      
  nop                                   #  11    0x4559b  1      
  ja .L_45600                           #  12    0x4559c  6      
  subl %esi, %ecx                       #  13    0x455a2  2      
  cmpl %ecx, %edx                       #  14    0x455a4  2      
  cmoval %ecx, %edx                     #  15    0x455a6  3      
  addl %eax, %esi                       #  16    0x455a9  2      
  movl %edx, %ecx                       #  17    0x455ab  2      
  cmpl %edx, %r8d                       #  18    0x455ad  3      
  cmovbel %r8d, %ecx                    #  19    0x455b0  4      
  movl %ecx, %ecx                       #  20    0x455b4  2      
  cmpq %rcx, %rcx                       #  21    0x455b6  3      
  nop                                   #  22    0x455b9  1      
  movl %esi, %esi                       #  23    0x455ba  2      
  leaq (%r15,%rsi,1), %rsi              #  24    0x455bc  4      
  movl %edi, %edi                       #  25    0x455c0  2      
  leaq (%r15,%rdi,1), %rdi              #  26    0x455c2  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  27    0x455c6  3      
  movl %esi, %esi                       #  28    0x455c9  2      
  movl %edi, %edi                       #  29    0x455cb  2      
  seta %al                              #  30    0x455cd  3      
  setb %cl                              #  31    0x455d0  3      
  subl %r8d, %edx                       #  32    0x455d3  3      
  subb %cl, %al                         #  33    0x455d6  2      
  movsbl %al, %eax                      #  34    0x455d8  3      
  testl %eax, %eax                      #  35    0x455db  2      
  cmovel %edx, %eax                     #  36    0x455dd  3      
  addl $0x8, %esp                       #  37    0x455e0  3      
  addq %r15, %rsp                       #  38    0x455e3  3      
  popq %r11                             #  39    0x455e6  3      
  andl $0xffffffe0, %r11d               #  40    0x455e9  7      
  addq %r15, %r11                       #  41    0x455f0  3      
  jmpq %r11                             #  42    0x455f3  3      
  nop                                   #  43    0x455f6  1      
.L_45600:                               #        0x455f7  0      
  movl $0x100209b4, %edi                #  44    0x455f7  5      
  nop                                   #  45    0x455fc  1      
  nop                                   #  46    0x455fd  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  47    0x455fe  5      
                                                                 
.size _ZNKSs7compareEjjPKcj, .-_ZNKSs7compareEjjPKcj

