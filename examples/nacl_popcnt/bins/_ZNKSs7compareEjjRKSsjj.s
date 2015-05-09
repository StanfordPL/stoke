  .text
  .globl _ZNKSs7compareEjjRKSsjj
  .type _ZNKSs7compareEjjRKSsjj, @function

#! file-offset 0x45580
#! rip-offset  0x45580
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjRKSsjj:               #        0x45580  0      
  movl %edi, %edi                       #  1     0x45580  2      
  subl $0x8, %esp                       #  2     0x45582  3      
  addq %r15, %rsp                       #  3     0x45585  3      
  movl %ecx, %ecx                       #  4     0x45588  2      
  movl %edi, %edi                       #  5     0x4558a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x4558c  4      
  leal -0xc(%rax), %edi                 #  7     0x45590  3      
  movl %edi, %edi                       #  8     0x45593  2      
  movl (%r15,%rdi,1), %r10d             #  9     0x45595  4      
  cmpl %r10d, %esi                      #  10    0x45599  3      
  nop                                   #  11    0x4559c  1      
  ja .L_45620                           #  12    0x4559d  6      
  movl %ecx, %ecx                       #  13    0x455a3  2      
  movl (%r15,%rcx,1), %edi              #  14    0x455a5  4      
  leal -0xc(%rdi), %ecx                 #  15    0x455a9  3      
  movl %ecx, %ecx                       #  16    0x455ac  2      
  movl (%r15,%rcx,1), %ecx              #  17    0x455ae  4      
  cmpl %ecx, %r8d                       #  18    0x455b2  3      
  ja .L_45620                           #  19    0x455b5  6      
  subl %esi, %r10d                      #  20    0x455bb  3      
  leal (%r8,%rdi,1), %edi               #  21    0x455be  4      
  cmpl %r10d, %edx                      #  22    0x455c2  3      
  cmoval %r10d, %edx                    #  23    0x455c5  4      
  subl %r8d, %ecx                       #  24    0x455c9  3      
  cmpl %ecx, %r9d                       #  25    0x455cc  3      
  cmoval %ecx, %r9d                     #  26    0x455cf  4      
  addl %eax, %esi                       #  27    0x455d3  2      
  movl %edx, %ecx                       #  28    0x455d5  2      
  cmpl %edx, %r9d                       #  29    0x455d7  3      
  cmovbel %r9d, %ecx                    #  30    0x455da  4      
  movl %ecx, %ecx                       #  31    0x455de  2      
  cmpq %rcx, %rcx                       #  32    0x455e0  3      
  xchgw %ax, %ax                        #  33    0x455e3  3      
  movl %esi, %esi                       #  34    0x455e6  2      
  leaq (%r15,%rsi,1), %rsi              #  35    0x455e8  4      
  movl %edi, %edi                       #  36    0x455ec  2      
  leaq (%r15,%rdi,1), %rdi              #  37    0x455ee  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  38    0x455f2  3      
  movl %esi, %esi                       #  39    0x455f5  2      
  movl %edi, %edi                       #  40    0x455f7  2      
  seta %al                              #  41    0x455f9  3      
  setb %cl                              #  42    0x455fc  3      
  subl %r9d, %edx                       #  43    0x455ff  3      
  subb %cl, %al                         #  44    0x45602  2      
  movsbl %al, %eax                      #  45    0x45604  3      
  testl %eax, %eax                      #  46    0x45607  2      
  cmovel %edx, %eax                     #  47    0x45609  3      
  addl $0x8, %esp                       #  48    0x4560c  3      
  addq %r15, %rsp                       #  49    0x4560f  3      
  popq %r11                             #  50    0x45612  3      
  andl $0xffffffe0, %r11d               #  51    0x45615  7      
  addq %r15, %r11                       #  52    0x4561c  3      
  jmpq %r11                             #  53    0x4561f  3      
  nop                                   #  54    0x45622  1      
.L_45620:                               #        0x45623  0      
  movl $0x100209b4, %edi                #  55    0x45623  5      
  nop                                   #  56    0x45628  1      
  nop                                   #  57    0x45629  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  58    0x4562a  5      
                                                                 
.size _ZNKSs7compareEjjRKSsjj, .-_ZNKSs7compareEjjRKSsjj

