  .text
  .globl _ZNKSs13find_first_ofEPKcjj
  .type _ZNKSs13find_first_ofEPKcjj, @function

#! file-offset 0x45300
#! rip-offset  0x45300
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs13find_first_ofEPKcjj:  #        0x45300  0      
  pushq %r14                   #  1     0x45300  3      
  movl %esi, %esi              #  2     0x45303  2      
  movl %ecx, %r14d             #  3     0x45305  3      
  movl %edi, %edi              #  4     0x45308  2      
  pushq %r13                   #  5     0x4530a  3      
  pushq %r12                   #  6     0x4530d  3      
  pushq %rbx                   #  7     0x45310  2      
  movl %edx, %ebx              #  8     0x45312  2      
  subl $0x18, %esp             #  9     0x45314  3      
  addq %r15, %rsp              #  10    0x45317  3      
  testl %ecx, %ecx             #  11    0x4531a  2      
  movq %rsi, 0x8(%rsp)         #  12    0x4531c  5      
  nop                          #  13    0x45321  1      
  je .L_45380                  #  14    0x45322  6      
  movl %edi, %edi              #  15    0x45328  2      
  movl (%r15,%rdi,1), %r12d    #  16    0x4532a  4      
  leal -0xc(%r12), %eax        #  17    0x4532e  5      
  leal (%rbx,%r12,1), %r12d    #  18    0x45333  4      
  movl %eax, %eax              #  19    0x45337  2      
  movl (%r15,%rax,1), %r13d    #  20    0x45339  4      
  cmpl %r13d, %edx             #  21    0x4533d  3      
  jae .L_45380                 #  22    0x45340  6      
  nop                          #  23    0x45346  1      
.L_45340:                      #        0x45347  0      
  movl %r12d, %eax             #  24    0x45347  3      
  movl 0x8(%rsp), %edi         #  25    0x4534a  4      
  movl %r14d, %edx             #  26    0x4534e  3      
  movl %eax, %eax              #  27    0x45351  2      
  movsbl (%r15,%rax,1), %esi   #  28    0x45353  5      
  nop                          #  29    0x45358  1      
  callq .memchr                #  30    0x45359  5      
  testl %eax, %eax             #  31    0x4535e  2      
  jne .L_453a0                 #  32    0x45360  6      
  addl $0x1, %ebx              #  33    0x45366  3      
  addl $0x1, %r12d             #  34    0x45369  4      
  cmpl %r13d, %ebx             #  35    0x4536d  3      
  jb .L_45340                  #  36    0x45370  6      
  nop                          #  37    0x45376  1      
  nop                          #  38    0x45377  1      
.L_45380:                      #        0x45378  0      
  movl $0xffffffff, %ebx       #  39    0x45378  5      
  nop                          #  40    0x4537d  1      
  nop                          #  41    0x4537e  1      
.L_453a0:                      #        0x4537f  0      
  addl $0x18, %esp             #  42    0x4537f  3      
  addq %r15, %rsp              #  43    0x45382  3      
  movl %ebx, %eax              #  44    0x45385  2      
  popq %rbx                    #  45    0x45387  2      
  popq %r12                    #  46    0x45389  3      
  popq %r13                    #  47    0x4538c  3      
  popq %r14                    #  48    0x4538f  3      
  popq %r11                    #  49    0x45392  3      
  andl $0xffffffe0, %r11d      #  50    0x45395  7      
  addq %r15, %r11              #  51    0x4539c  3      
  jmpq %r11                    #  52    0x4539f  3      
  nop                          #  53    0x453a2  1      
  nop                          #  54    0x453a3  1      
  nop                          #  55    0x453a4  1      
  nop                          #  56    0x453a5  1      
  nop                          #  57    0x453a6  1      
                                                        
.size _ZNKSs13find_first_ofEPKcjj, .-_ZNKSs13find_first_ofEPKcjj

