  .text
  .globl _ZNKSs7compareEjjRKSsjj
  .type _ZNKSs7compareEjjRKSsjj, @function

#! file-offset 0x455a0
#! rip-offset  0x455a0
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjRKSsjj:               #        0x455a0  0      
  movl %edi, %edi                       #  1     0x455a0  2      
  subl $0x8, %esp                       #  2     0x455a2  3      
  addq %r15, %rsp                       #  3     0x455a5  3      
  movl %ecx, %ecx                       #  4     0x455a8  2      
  movl %edi, %edi                       #  5     0x455aa  2      
  movl (%r15,%rdi,1), %eax              #  6     0x455ac  4      
  leal -0xc(%rax), %edi                 #  7     0x455b0  3      
  movl %edi, %edi                       #  8     0x455b3  2      
  movl (%r15,%rdi,1), %r10d             #  9     0x455b5  4      
  cmpl %r10d, %esi                      #  10    0x455b9  3      
  nop                                   #  11    0x455bc  1      
  ja .L_45640                           #  12    0x455bd  6      
  movl %ecx, %ecx                       #  13    0x455c3  2      
  movl (%r15,%rcx,1), %edi              #  14    0x455c5  4      
  leal -0xc(%rdi), %ecx                 #  15    0x455c9  3      
  movl %ecx, %ecx                       #  16    0x455cc  2      
  movl (%r15,%rcx,1), %ecx              #  17    0x455ce  4      
  cmpl %ecx, %r8d                       #  18    0x455d2  3      
  ja .L_45640                           #  19    0x455d5  6      
  subl %esi, %r10d                      #  20    0x455db  3      
  leal (%r8,%rdi,1), %edi               #  21    0x455de  4      
  cmpl %r10d, %edx                      #  22    0x455e2  3      
  cmoval %r10d, %edx                    #  23    0x455e5  4      
  subl %r8d, %ecx                       #  24    0x455e9  3      
  cmpl %ecx, %r9d                       #  25    0x455ec  3      
  cmoval %ecx, %r9d                     #  26    0x455ef  4      
  addl %eax, %esi                       #  27    0x455f3  2      
  movl %edx, %ecx                       #  28    0x455f5  2      
  cmpl %edx, %r9d                       #  29    0x455f7  3      
  cmovbel %r9d, %ecx                    #  30    0x455fa  4      
  movl %ecx, %ecx                       #  31    0x455fe  2      
  cmpq %rcx, %rcx                       #  32    0x45600  3      
  xchgw %ax, %ax                        #  33    0x45603  3      
  movl %esi, %esi                       #  34    0x45606  2      
  leaq (%r15,%rsi,1), %rsi              #  35    0x45608  4      
  movl %edi, %edi                       #  36    0x4560c  2      
  leaq (%r15,%rdi,1), %rdi              #  37    0x4560e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  38    0x45612  3      
  movl %esi, %esi                       #  39    0x45615  2      
  movl %edi, %edi                       #  40    0x45617  2      
  seta %al                              #  41    0x45619  3      
  setb %cl                              #  42    0x4561c  3      
  subl %r9d, %edx                       #  43    0x4561f  3      
  subb %cl, %al                         #  44    0x45622  2      
  movsbl %al, %eax                      #  45    0x45624  3      
  testl %eax, %eax                      #  46    0x45627  2      
  cmovel %edx, %eax                     #  47    0x45629  3      
  addl $0x8, %esp                       #  48    0x4562c  3      
  addq %r15, %rsp                       #  49    0x4562f  3      
  popq %r11                             #  50    0x45632  3      
  andl $0xffffffe0, %r11d               #  51    0x45635  7      
  addq %r15, %r11                       #  52    0x4563c  3      
  jmpq %r11                             #  53    0x4563f  3      
  nop                                   #  54    0x45642  1      
.L_45640:                               #        0x45643  0      
  movl $0x100209b4, %edi                #  55    0x45643  5      
  nop                                   #  56    0x45648  1      
  nop                                   #  57    0x45649  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  58    0x4564a  5      
                                                                 
.size _ZNKSs7compareEjjRKSsjj, .-_ZNKSs7compareEjjRKSsjj

