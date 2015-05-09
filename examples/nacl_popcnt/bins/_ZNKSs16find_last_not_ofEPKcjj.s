  .text
  .globl _ZNKSs16find_last_not_ofEPKcjj
  .type _ZNKSs16find_last_not_ofEPKcjj, @function

#! file-offset 0x44fe0
#! rip-offset  0x44fe0
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEPKcjj:  #        0x44fe0  0      
  pushq %r14                      #  1     0x44fe0  3      
  movl %edi, %edi                 #  2     0x44fe3  2      
  movl %ecx, %r14d                #  3     0x44fe5  3      
  pushq %r13                      #  4     0x44fe8  3      
  movl %esi, %r13d                #  5     0x44feb  3      
  pushq %r12                      #  6     0x44fee  3      
  pushq %rbx                      #  7     0x44ff1  2      
  subl $0x8, %esp                 #  8     0x44ff3  3      
  addq %r15, %rsp                 #  9     0x44ff6  3      
  movl %edi, %edi                 #  10    0x44ff9  2      
  movl (%r15,%rdi,1), %r12d       #  11    0x44ffb  4      
  leal -0xc(%r12), %eax           #  12    0x44fff  5      
  movl %eax, %eax                 #  13    0x45004  2      
  movl (%r15,%rax,1), %ebx        #  14    0x45006  4      
  testl %ebx, %ebx                #  15    0x4500a  2      
  je .L_45080                     #  16    0x4500c  6      
  subl $0x1, %ebx                 #  17    0x45012  3      
  cmpl %ebx, %edx                 #  18    0x45015  2      
  cmovbel %edx, %ebx              #  19    0x45017  3      
  leal (%rbx,%r12,1), %r12d       #  20    0x4501a  4      
  jmpq .L_45040                   #  21    0x4501e  5      
  nop                             #  22    0x45023  1      
.L_45020:                         #        0x45024  0      
  subl $0x1, %ebx                 #  23    0x45024  3      
  nop                             #  24    0x45027  1      
  nop                             #  25    0x45028  1      
.L_45040:                         #        0x45029  0      
  movl %r12d, %eax                #  26    0x45029  3      
  movl %r14d, %edx                #  27    0x4502c  3      
  movl %r13d, %edi                #  28    0x4502f  3      
  movl %eax, %eax                 #  29    0x45032  2      
  movsbl (%r15,%rax,1), %esi      #  30    0x45034  5      
  nop                             #  31    0x45039  1      
  callq .memchr                   #  32    0x4503a  5      
  testl %eax, %eax                #  33    0x4503f  2      
  je .L_450a0                     #  34    0x45041  6      
  subl $0x1, %r12d                #  35    0x45047  4      
  testl %ebx, %ebx                #  36    0x4504b  2      
  jne .L_45020                    #  37    0x4504d  6      
  nop                             #  38    0x45053  1      
  nop                             #  39    0x45054  1      
.L_45080:                         #        0x45055  0      
  movl $0xffffffff, %ebx          #  40    0x45055  5      
  nop                             #  41    0x4505a  1      
  nop                             #  42    0x4505b  1      
.L_450a0:                         #        0x4505c  0      
  addl $0x8, %esp                 #  43    0x4505c  3      
  addq %r15, %rsp                 #  44    0x4505f  3      
  movl %ebx, %eax                 #  45    0x45062  2      
  popq %rbx                       #  46    0x45064  2      
  popq %r12                       #  47    0x45066  3      
  popq %r13                       #  48    0x45069  3      
  popq %r14                       #  49    0x4506c  3      
  popq %r11                       #  50    0x4506f  3      
  andl $0xffffffe0, %r11d         #  51    0x45072  7      
  addq %r15, %r11                 #  52    0x45079  3      
  jmpq %r11                       #  53    0x4507c  3      
  nop                             #  54    0x4507f  1      
  nop                             #  55    0x45080  1      
  nop                             #  56    0x45081  1      
  nop                             #  57    0x45082  1      
  nop                             #  58    0x45083  1      
                                                           
.size _ZNKSs16find_last_not_ofEPKcjj, .-_ZNKSs16find_last_not_ofEPKcjj

