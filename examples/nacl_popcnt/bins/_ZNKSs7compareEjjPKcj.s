  .text
  .globl _ZNKSs7compareEjjPKcj
  .type _ZNKSs7compareEjjPKcj, @function

#! file-offset 0x454e0
#! rip-offset  0x454e0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjPKcj:                 #        0x454e0  0      
  movl %edi, %eax                       #  1     0x454e0  2      
  subl $0x8, %esp                       #  2     0x454e2  3      
  addq %r15, %rsp                       #  3     0x454e5  3      
  movl %ecx, %edi                       #  4     0x454e8  2      
  movl %eax, %eax                       #  5     0x454ea  2      
  movl (%r15,%rax,1), %eax              #  6     0x454ec  4      
  leal -0xc(%rax), %ecx                 #  7     0x454f0  3      
  movl %ecx, %ecx                       #  8     0x454f3  2      
  movl (%r15,%rcx,1), %ecx              #  9     0x454f5  4      
  cmpl %ecx, %esi                       #  10    0x454f9  2      
  nop                                   #  11    0x454fb  1      
  ja .L_45560                           #  12    0x454fc  6      
  subl %esi, %ecx                       #  13    0x45502  2      
  cmpl %ecx, %edx                       #  14    0x45504  2      
  cmoval %ecx, %edx                     #  15    0x45506  3      
  addl %eax, %esi                       #  16    0x45509  2      
  movl %edx, %ecx                       #  17    0x4550b  2      
  cmpl %edx, %r8d                       #  18    0x4550d  3      
  cmovbel %r8d, %ecx                    #  19    0x45510  4      
  movl %ecx, %ecx                       #  20    0x45514  2      
  cmpq %rcx, %rcx                       #  21    0x45516  3      
  nop                                   #  22    0x45519  1      
  movl %esi, %esi                       #  23    0x4551a  2      
  leaq (%r15,%rsi,1), %rsi              #  24    0x4551c  4      
  movl %edi, %edi                       #  25    0x45520  2      
  leaq (%r15,%rdi,1), %rdi              #  26    0x45522  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  27    0x45526  3      
  movl %esi, %esi                       #  28    0x45529  2      
  movl %edi, %edi                       #  29    0x4552b  2      
  seta %al                              #  30    0x4552d  3      
  setb %cl                              #  31    0x45530  3      
  subl %r8d, %edx                       #  32    0x45533  3      
  subb %cl, %al                         #  33    0x45536  2      
  movsbl %al, %eax                      #  34    0x45538  3      
  testl %eax, %eax                      #  35    0x4553b  2      
  cmovel %edx, %eax                     #  36    0x4553d  3      
  addl $0x8, %esp                       #  37    0x45540  3      
  addq %r15, %rsp                       #  38    0x45543  3      
  popq %r11                             #  39    0x45546  3      
  andl $0xffffffe0, %r11d               #  40    0x45549  7      
  addq %r15, %r11                       #  41    0x45550  3      
  jmpq %r11                             #  42    0x45553  3      
  nop                                   #  43    0x45556  1      
.L_45560:                               #        0x45557  0      
  movl $0x100209b4, %edi                #  44    0x45557  5      
  nop                                   #  45    0x4555c  1      
  nop                                   #  46    0x4555d  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  47    0x4555e  5      
                                                                 
.size _ZNKSs7compareEjjPKcj, .-_ZNKSs7compareEjjPKcj

