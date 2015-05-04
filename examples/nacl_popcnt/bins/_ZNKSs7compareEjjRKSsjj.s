  .text
  .globl _ZNKSs7compareEjjRKSsjj
  .type _ZNKSs7compareEjjRKSsjj, @function

#! file-offset 0x45620
#! rip-offset  0x45620
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs7compareEjjRKSsjj:               #        0x45620  0      
  movl %edi, %edi                       #  1     0x45620  2      
  subl $0x8, %esp                       #  2     0x45622  3      
  addq %r15, %rsp                       #  3     0x45625  3      
  movl %ecx, %ecx                       #  4     0x45628  2      
  movl %edi, %edi                       #  5     0x4562a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x4562c  4      
  leal -0xc(%rax), %edi                 #  7     0x45630  3      
  movl %edi, %edi                       #  8     0x45633  2      
  movl (%r15,%rdi,1), %r10d             #  9     0x45635  4      
  cmpl %r10d, %esi                      #  10    0x45639  3      
  nop                                   #  11    0x4563c  1      
  ja .L_456c0                           #  12    0x4563d  6      
  movl %ecx, %ecx                       #  13    0x45643  2      
  movl (%r15,%rcx,1), %edi              #  14    0x45645  4      
  leal -0xc(%rdi), %ecx                 #  15    0x45649  3      
  movl %ecx, %ecx                       #  16    0x4564c  2      
  movl (%r15,%rcx,1), %ecx              #  17    0x4564e  4      
  cmpl %ecx, %r8d                       #  18    0x45652  3      
  ja .L_456c0                           #  19    0x45655  6      
  subl %esi, %r10d                      #  20    0x4565b  3      
  leal (%r8,%rdi,1), %edi               #  21    0x4565e  4      
  cmpl %r10d, %edx                      #  22    0x45662  3      
  cmoval %r10d, %edx                    #  23    0x45665  4      
  subl %r8d, %ecx                       #  24    0x45669  3      
  cmpl %ecx, %r9d                       #  25    0x4566c  3      
  cmoval %ecx, %r9d                     #  26    0x4566f  4      
  addl %eax, %esi                       #  27    0x45673  2      
  movl %edx, %ecx                       #  28    0x45675  2      
  cmpl %edx, %r9d                       #  29    0x45677  3      
  cmovbel %r9d, %ecx                    #  30    0x4567a  4      
  movl %ecx, %ecx                       #  31    0x4567e  2      
  cmpq %rcx, %rcx                       #  32    0x45680  3      
  xchgw %ax, %ax                        #  33    0x45683  3      
  movl %esi, %esi                       #  34    0x45686  2      
  leaq (%r15,%rsi,1), %rsi              #  35    0x45688  4      
  movl %edi, %edi                       #  36    0x4568c  2      
  leaq (%r15,%rdi,1), %rdi              #  37    0x4568e  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)     #  38    0x45692  3      
  movl %esi, %esi                       #  39    0x45695  2      
  movl %edi, %edi                       #  40    0x45697  2      
  seta %al                              #  41    0x45699  3      
  setb %cl                              #  42    0x4569c  3      
  subl %r9d, %edx                       #  43    0x4569f  3      
  subb %cl, %al                         #  44    0x456a2  2      
  movsbl %al, %eax                      #  45    0x456a4  3      
  testl %eax, %eax                      #  46    0x456a7  2      
  cmovel %edx, %eax                     #  47    0x456a9  3      
  addl $0x8, %esp                       #  48    0x456ac  3      
  addq %r15, %rsp                       #  49    0x456af  3      
  popq %r11                             #  50    0x456b2  3      
  andl $0xffffffe0, %r11d               #  51    0x456b5  7      
  addq %r15, %r11                       #  52    0x456bc  3      
  jmpq %r11                             #  53    0x456bf  3      
  nop                                   #  54    0x456c2  1      
.L_456c0:                               #        0x456c3  0      
  movl $0x100209b4, %edi                #  55    0x456c3  5      
  nop                                   #  56    0x456c8  1      
  nop                                   #  57    0x456c9  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  58    0x456ca  5      
                                                                 
.size _ZNKSs7compareEjjRKSsjj, .-_ZNKSs7compareEjjRKSsjj

