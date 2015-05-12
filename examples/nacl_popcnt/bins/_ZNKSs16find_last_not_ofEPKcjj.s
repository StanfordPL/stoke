  .text
  .globl _ZNKSs16find_last_not_ofEPKcjj
  .type _ZNKSs16find_last_not_ofEPKcjj, @function

#! file-offset 0x45000
#! rip-offset  0x45000
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEPKcjj:  #        0x45000  0      
  pushq %r14                      #  1     0x45000  3      
  movl %edi, %edi                 #  2     0x45003  2      
  movl %ecx, %r14d                #  3     0x45005  3      
  pushq %r13                      #  4     0x45008  3      
  movl %esi, %r13d                #  5     0x4500b  3      
  pushq %r12                      #  6     0x4500e  3      
  pushq %rbx                      #  7     0x45011  2      
  subl $0x8, %esp                 #  8     0x45013  3      
  addq %r15, %rsp                 #  9     0x45016  3      
  movl %edi, %edi                 #  10    0x45019  2      
  movl (%r15,%rdi,1), %r12d       #  11    0x4501b  4      
  leal -0xc(%r12), %eax           #  12    0x4501f  5      
  movl %eax, %eax                 #  13    0x45024  2      
  movl (%r15,%rax,1), %ebx        #  14    0x45026  4      
  testl %ebx, %ebx                #  15    0x4502a  2      
  je .L_450a0                     #  16    0x4502c  6      
  subl $0x1, %ebx                 #  17    0x45032  3      
  cmpl %ebx, %edx                 #  18    0x45035  2      
  cmovbel %edx, %ebx              #  19    0x45037  3      
  leal (%rbx,%r12,1), %r12d       #  20    0x4503a  4      
  jmpq .L_45060                   #  21    0x4503e  5      
  nop                             #  22    0x45043  1      
.L_45040:                         #        0x45044  0      
  subl $0x1, %ebx                 #  23    0x45044  3      
  nop                             #  24    0x45047  1      
  nop                             #  25    0x45048  1      
.L_45060:                         #        0x45049  0      
  movl %r12d, %eax                #  26    0x45049  3      
  movl %r14d, %edx                #  27    0x4504c  3      
  movl %r13d, %edi                #  28    0x4504f  3      
  movl %eax, %eax                 #  29    0x45052  2      
  movsbl (%r15,%rax,1), %esi      #  30    0x45054  5      
  nop                             #  31    0x45059  1      
  callq .memchr                   #  32    0x4505a  5      
  testl %eax, %eax                #  33    0x4505f  2      
  je .L_450c0                     #  34    0x45061  6      
  subl $0x1, %r12d                #  35    0x45067  4      
  testl %ebx, %ebx                #  36    0x4506b  2      
  jne .L_45040                    #  37    0x4506d  6      
  nop                             #  38    0x45073  1      
  nop                             #  39    0x45074  1      
.L_450a0:                         #        0x45075  0      
  movl $0xffffffff, %ebx          #  40    0x45075  5      
  nop                             #  41    0x4507a  1      
  nop                             #  42    0x4507b  1      
.L_450c0:                         #        0x4507c  0      
  addl $0x8, %esp                 #  43    0x4507c  3      
  addq %r15, %rsp                 #  44    0x4507f  3      
  movl %ebx, %eax                 #  45    0x45082  2      
  popq %rbx                       #  46    0x45084  2      
  popq %r12                       #  47    0x45086  3      
  popq %r13                       #  48    0x45089  3      
  popq %r14                       #  49    0x4508c  3      
  popq %r11                       #  50    0x4508f  3      
  andl $0xffffffe0, %r11d         #  51    0x45092  7      
  addq %r15, %r11                 #  52    0x45099  3      
  jmpq %r11                       #  53    0x4509c  3      
  nop                             #  54    0x4509f  1      
  nop                             #  55    0x450a0  1      
  nop                             #  56    0x450a1  1      
  nop                             #  57    0x450a2  1      
  nop                             #  58    0x450a3  1      
                                                           
.size _ZNKSs16find_last_not_ofEPKcjj, .-_ZNKSs16find_last_not_ofEPKcjj

