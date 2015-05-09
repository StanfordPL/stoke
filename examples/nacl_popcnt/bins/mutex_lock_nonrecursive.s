  .text
  .globl mutex_lock_nonrecursive
  .type mutex_lock_nonrecursive, @function

#! file-offset 0x426c0
#! rip-offset  0x426c0
#! capacity    352 bytes

# Text                                #  Line  RIP      Bytes  
.mutex_lock_nonrecursive:             #        0x426c0  0      
  xorl %ecx, %ecx                     #  1     0x426c0  2      
  movq %rbx, -0x18(%rsp)              #  2     0x426c2  5      
  movq %r12, -0x10(%rsp)              #  3     0x426c7  5      
  movq %r13, -0x8(%rsp)               #  4     0x426cc  5      
  movl %edx, %r12d                    #  5     0x426d1  3      
  subl $0x18, %esp                    #  6     0x426d4  3      
  addq %r15, %rsp                     #  7     0x426d7  3      
  movl %edi, %ebx                     #  8     0x426da  2      
  nop                                 #  9     0x426dc  1      
  movl $0x1, %edx                     #  10    0x426dd  5      
  movl %ecx, %eax                     #  11    0x426e2  2      
  movl %ebx, %ebx                     #  12    0x426e4  2      
  lock                                #  13    0x426e6  1      
  cmpxchgl %edx, (%r15,%rbx,1)        #  14    0x426e7  5      
  testl %eax, %eax                    #  15    0x426ec  2      
  movl %eax, %edx                     #  16    0x426ee  2      
  jne .L_42740                        #  17    0x426f0  6      
  nop                                 #  18    0x426f6  1      
.L_42700:                             #        0x426f7  0      
  xorl %eax, %eax                     #  19    0x426f7  2      
  nop                                 #  20    0x426f9  1      
  nop                                 #  21    0x426fa  1      
.L_42720:                             #        0x426fb  0      
  movq (%rsp), %rbx                   #  22    0x426fb  4      
  movq 0x8(%rsp), %r12                #  23    0x426ff  5      
  movq 0x10(%rsp), %r13               #  24    0x42704  5      
  addl $0x18, %esp                    #  25    0x42709  3      
  addq %r15, %rsp                     #  26    0x4270c  3      
  popq %r11                           #  27    0x4270f  3      
  andl $0xffffffe0, %r11d             #  28    0x42712  7      
  addq %r15, %r11                     #  29    0x42719  3      
  jmpq %r11                           #  30    0x4271c  3      
.L_42740:                             #        0x4271f  0      
  testl %esi, %esi                    #  31    0x4271f  2      
  movl $0x10, %eax                    #  32    0x42721  5      
  jne .L_42720                        #  33    0x42726  6      
  testq %r12, %r12                    #  34    0x4272c  3      
  je .L_42780                         #  35    0x4272f  6      
  movl %r12d, %r12d                   #  36    0x42735  3      
  cmpl $0x3b9ac9ff, 0x8(%r15,%r12,1)  #  37    0x42738  9      
  movb $0x16, %al                     #  38    0x42741  2      
  nop                                 #  39    0x42743  1      
  ja .L_42720                         #  40    0x42744  6      
  nop                                 #  41    0x4274a  1      
  nop                                 #  42    0x4274b  1      
.L_42780:                             #        0x4274c  0      
  movl $0x2, %r13d                    #  43    0x4274c  6      
  jmpq .L_427c0                       #  44    0x42752  5      
  nop                                 #  45    0x42757  1      
  nop                                 #  46    0x42758  1      
.L_427a0:                             #        0x42759  0      
  xorl %eax, %eax                     #  47    0x42759  2      
  movl %ebx, %ebx                     #  48    0x4275b  2      
  lock                                #  49    0x4275d  1      
  cmpxchgl %r13d, (%r15,%rbx,1)       #  50    0x4275e  5      
  testl %eax, %eax                    #  51    0x42763  2      
  movl %eax, %edx                     #  52    0x42765  2      
  je .L_42700                         #  53    0x42767  6      
  nop                                 #  54    0x4276d  1      
.L_427c0:                             #        0x4276e  0      
  cmpl $0x2, %edx                     #  55    0x4276e  3      
  je .L_427e0                         #  56    0x42771  6      
  movl $0x1, %eax                     #  57    0x42777  5      
  movl %ebx, %ebx                     #  58    0x4277c  2      
  lock                                #  59    0x4277e  1      
  cmpxchgl %r13d, (%r15,%rbx,1)       #  60    0x4277f  5      
  testl %eax, %eax                    #  61    0x42784  2      
  je .L_427a0                         #  62    0x42786  6      
  nop                                 #  63    0x4278c  1      
.L_427e0:                             #        0x4278d  0      
  movl 0xfff4653(%rip), %eax          #  64    0x4278d  6      
  movl %r12d, %edx                    #  65    0x42793  3      
  movl $0x2, %esi                     #  66    0x42796  5      
  movl %ebx, %edi                     #  67    0x4279b  2      
  nop                                 #  68    0x4279d  1      
  andl $0xffffffe0, %eax              #  69    0x4279e  5      
  addq %r15, %rax                     #  70    0x427a3  3      
  callq %rax                          #  71    0x427a6  2      
  cmpl $0x6e, %eax                    #  72    0x427a8  3      
  jne .L_427a0                        #  73    0x427ab  6      
  testq %r12, %r12                    #  74    0x427b1  3      
  jne .L_42720                        #  75    0x427b4  6      
  jmpq .L_427a0                       #  76    0x427ba  5      
  nop                                 #  77    0x427bf  1      
  nop                                 #  78    0x427c0  1      
                                                               
.size mutex_lock_nonrecursive, .-mutex_lock_nonrecursive

