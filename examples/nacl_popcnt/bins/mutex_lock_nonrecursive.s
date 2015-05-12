  .text
  .globl mutex_lock_nonrecursive
  .type mutex_lock_nonrecursive, @function

#! file-offset 0x426e0
#! rip-offset  0x426e0
#! capacity    352 bytes

# Text                                #  Line  RIP      Bytes  
.mutex_lock_nonrecursive:             #        0x426e0  0      
  xorl %ecx, %ecx                     #  1     0x426e0  2      
  movq %rbx, -0x18(%rsp)              #  2     0x426e2  5      
  movq %r12, -0x10(%rsp)              #  3     0x426e7  5      
  movq %r13, -0x8(%rsp)               #  4     0x426ec  5      
  movl %edx, %r12d                    #  5     0x426f1  3      
  subl $0x18, %esp                    #  6     0x426f4  3      
  addq %r15, %rsp                     #  7     0x426f7  3      
  movl %edi, %ebx                     #  8     0x426fa  2      
  nop                                 #  9     0x426fc  1      
  movl $0x1, %edx                     #  10    0x426fd  5      
  movl %ecx, %eax                     #  11    0x42702  2      
  movl %ebx, %ebx                     #  12    0x42704  2      
  lock                                #  13    0x42706  1      
  cmpxchgl %edx, (%r15,%rbx,1)        #  14    0x42707  5      
  testl %eax, %eax                    #  15    0x4270c  2      
  movl %eax, %edx                     #  16    0x4270e  2      
  jne .L_42760                        #  17    0x42710  6      
  nop                                 #  18    0x42716  1      
.L_42720:                             #        0x42717  0      
  xorl %eax, %eax                     #  19    0x42717  2      
  nop                                 #  20    0x42719  1      
  nop                                 #  21    0x4271a  1      
.L_42740:                             #        0x4271b  0      
  movq (%rsp), %rbx                   #  22    0x4271b  4      
  movq 0x8(%rsp), %r12                #  23    0x4271f  5      
  movq 0x10(%rsp), %r13               #  24    0x42724  5      
  addl $0x18, %esp                    #  25    0x42729  3      
  addq %r15, %rsp                     #  26    0x4272c  3      
  popq %r11                           #  27    0x4272f  3      
  andl $0xffffffe0, %r11d             #  28    0x42732  7      
  addq %r15, %r11                     #  29    0x42739  3      
  jmpq %r11                           #  30    0x4273c  3      
.L_42760:                             #        0x4273f  0      
  testl %esi, %esi                    #  31    0x4273f  2      
  movl $0x10, %eax                    #  32    0x42741  5      
  jne .L_42740                        #  33    0x42746  6      
  testq %r12, %r12                    #  34    0x4274c  3      
  je .L_427a0                         #  35    0x4274f  6      
  movl %r12d, %r12d                   #  36    0x42755  3      
  cmpl $0x3b9ac9ff, 0x8(%r15,%r12,1)  #  37    0x42758  9      
  movb $0x16, %al                     #  38    0x42761  2      
  nop                                 #  39    0x42763  1      
  ja .L_42740                         #  40    0x42764  6      
  nop                                 #  41    0x4276a  1      
  nop                                 #  42    0x4276b  1      
.L_427a0:                             #        0x4276c  0      
  movl $0x2, %r13d                    #  43    0x4276c  6      
  jmpq .L_427e0                       #  44    0x42772  5      
  nop                                 #  45    0x42777  1      
  nop                                 #  46    0x42778  1      
.L_427c0:                             #        0x42779  0      
  xorl %eax, %eax                     #  47    0x42779  2      
  movl %ebx, %ebx                     #  48    0x4277b  2      
  lock                                #  49    0x4277d  1      
  cmpxchgl %r13d, (%r15,%rbx,1)       #  50    0x4277e  5      
  testl %eax, %eax                    #  51    0x42783  2      
  movl %eax, %edx                     #  52    0x42785  2      
  je .L_42720                         #  53    0x42787  6      
  nop                                 #  54    0x4278d  1      
.L_427e0:                             #        0x4278e  0      
  cmpl $0x2, %edx                     #  55    0x4278e  3      
  je .L_42800                         #  56    0x42791  6      
  movl $0x1, %eax                     #  57    0x42797  5      
  movl %ebx, %ebx                     #  58    0x4279c  2      
  lock                                #  59    0x4279e  1      
  cmpxchgl %r13d, (%r15,%rbx,1)       #  60    0x4279f  5      
  testl %eax, %eax                    #  61    0x427a4  2      
  je .L_427c0                         #  62    0x427a6  6      
  nop                                 #  63    0x427ac  1      
.L_42800:                             #        0x427ad  0      
  movl 0xfff4633(%rip), %eax          #  64    0x427ad  6      
  movl %r12d, %edx                    #  65    0x427b3  3      
  movl $0x2, %esi                     #  66    0x427b6  5      
  movl %ebx, %edi                     #  67    0x427bb  2      
  nop                                 #  68    0x427bd  1      
  andl $0xffffffe0, %eax              #  69    0x427be  5      
  addq %r15, %rax                     #  70    0x427c3  3      
  callq %rax                          #  71    0x427c6  2      
  cmpl $0x6e, %eax                    #  72    0x427c8  3      
  jne .L_427c0                        #  73    0x427cb  6      
  testq %r12, %r12                    #  74    0x427d1  3      
  jne .L_42740                        #  75    0x427d4  6      
  jmpq .L_427c0                       #  76    0x427da  5      
  nop                                 #  77    0x427df  1      
  nop                                 #  78    0x427e0  1      
                                                               
.size mutex_lock_nonrecursive, .-mutex_lock_nonrecursive

