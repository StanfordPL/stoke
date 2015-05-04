  .text
  .globl mutex_lock_nonrecursive
  .type mutex_lock_nonrecursive, @function

#! file-offset 0x42760
#! rip-offset  0x42760
#! capacity    352 bytes

# Text                                #  Line  RIP      Bytes  
.mutex_lock_nonrecursive:             #        0x42760  0      
  xorl %ecx, %ecx                     #  1     0x42760  2      
  movq %rbx, -0x18(%rsp)              #  2     0x42762  5      
  movq %r12, -0x10(%rsp)              #  3     0x42767  5      
  movq %r13, -0x8(%rsp)               #  4     0x4276c  5      
  movl %edx, %r12d                    #  5     0x42771  3      
  subl $0x18, %esp                    #  6     0x42774  3      
  addq %r15, %rsp                     #  7     0x42777  3      
  movl %edi, %ebx                     #  8     0x4277a  2      
  nop                                 #  9     0x4277c  1      
  movl $0x1, %edx                     #  10    0x4277d  5      
  movl %ecx, %eax                     #  11    0x42782  2      
  movl %ebx, %ebx                     #  12    0x42784  2      
  lock                                #  13    0x42786  1      
  cmpxchgl %edx, (%r15,%rbx,1)        #  14    0x42787  5      
  testl %eax, %eax                    #  15    0x4278c  2      
  movl %eax, %edx                     #  16    0x4278e  2      
  jne .L_427e0                        #  17    0x42790  6      
  nop                                 #  18    0x42796  1      
.L_427a0:                             #        0x42797  0      
  xorl %eax, %eax                     #  19    0x42797  2      
  nop                                 #  20    0x42799  1      
  nop                                 #  21    0x4279a  1      
.L_427c0:                             #        0x4279b  0      
  movq (%rsp), %rbx                   #  22    0x4279b  4      
  movq 0x8(%rsp), %r12                #  23    0x4279f  5      
  movq 0x10(%rsp), %r13               #  24    0x427a4  5      
  addl $0x18, %esp                    #  25    0x427a9  3      
  addq %r15, %rsp                     #  26    0x427ac  3      
  popq %r11                           #  27    0x427af  3      
  andl $0xffffffe0, %r11d             #  28    0x427b2  7      
  addq %r15, %r11                     #  29    0x427b9  3      
  jmpq %r11                           #  30    0x427bc  3      
.L_427e0:                             #        0x427bf  0      
  testl %esi, %esi                    #  31    0x427bf  2      
  movl $0x10, %eax                    #  32    0x427c1  5      
  jne .L_427c0                        #  33    0x427c6  6      
  testq %r12, %r12                    #  34    0x427cc  3      
  je .L_42820                         #  35    0x427cf  6      
  movl %r12d, %r12d                   #  36    0x427d5  3      
  cmpl $0x3b9ac9ff, 0x8(%r15,%r12,1)  #  37    0x427d8  9      
  movb $0x16, %al                     #  38    0x427e1  2      
  nop                                 #  39    0x427e3  1      
  ja .L_427c0                         #  40    0x427e4  6      
  nop                                 #  41    0x427ea  1      
  nop                                 #  42    0x427eb  1      
.L_42820:                             #        0x427ec  0      
  movl $0x2, %r13d                    #  43    0x427ec  6      
  jmpq .L_42860                       #  44    0x427f2  5      
  nop                                 #  45    0x427f7  1      
  nop                                 #  46    0x427f8  1      
.L_42840:                             #        0x427f9  0      
  xorl %eax, %eax                     #  47    0x427f9  2      
  movl %ebx, %ebx                     #  48    0x427fb  2      
  lock                                #  49    0x427fd  1      
  cmpxchgl %r13d, (%r15,%rbx,1)       #  50    0x427fe  5      
  testl %eax, %eax                    #  51    0x42803  2      
  movl %eax, %edx                     #  52    0x42805  2      
  je .L_427a0                         #  53    0x42807  6      
  nop                                 #  54    0x4280d  1      
.L_42860:                             #        0x4280e  0      
  cmpl $0x2, %edx                     #  55    0x4280e  3      
  je .L_42880                         #  56    0x42811  6      
  movl $0x1, %eax                     #  57    0x42817  5      
  movl %ebx, %ebx                     #  58    0x4281c  2      
  lock                                #  59    0x4281e  1      
  cmpxchgl %r13d, (%r15,%rbx,1)       #  60    0x4281f  5      
  testl %eax, %eax                    #  61    0x42824  2      
  je .L_42840                         #  62    0x42826  6      
  nop                                 #  63    0x4282c  1      
.L_42880:                             #        0x4282d  0      
  movl 0xfff45b3(%rip), %eax          #  64    0x4282d  6      
  movl %r12d, %edx                    #  65    0x42833  3      
  movl $0x2, %esi                     #  66    0x42836  5      
  movl %ebx, %edi                     #  67    0x4283b  2      
  nop                                 #  68    0x4283d  1      
  andl $0xffffffe0, %eax              #  69    0x4283e  5      
  addq %r15, %rax                     #  70    0x42843  3      
  callq %rax                          #  71    0x42846  2      
  cmpl $0x6e, %eax                    #  72    0x42848  3      
  jne .L_42840                        #  73    0x4284b  6      
  testq %r12, %r12                    #  74    0x42851  3      
  jne .L_427c0                        #  75    0x42854  6      
  jmpq .L_42840                       #  76    0x4285a  5      
  nop                                 #  77    0x4285f  1      
  nop                                 #  78    0x42860  1      
                                                               
.size mutex_lock_nonrecursive, .-mutex_lock_nonrecursive

