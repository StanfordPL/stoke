  .text
  .globl mutex_lock
  .type mutex_lock, @function

#! file-offset 0x42840
#! rip-offset  0x42840
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  
.mutex_lock:                      #        0x42840  0      
  movq %rbx, -0x10(%rsp)          #  1     0x42840  5      
  movl %edi, %ebx                 #  2     0x42845  2      
  movq %r12, -0x8(%rsp)           #  3     0x42847  5      
  subl $0x28, %esp                #  4     0x4284c  3      
  addq %r15, %rsp                 #  5     0x4284f  3      
  movl %ebx, %ebx                 #  6     0x42852  2      
  movl 0x4(%r15,%rbx,1), %eax     #  7     0x42854  5      
  movl %edx, %edx                 #  8     0x42859  2      
  testl %eax, %eax                #  9     0x4285b  2      
  nop                             #  10    0x4285d  1      
  jne .L_42880                    #  11    0x4285e  6      
  movl %ebx, %edi                 #  12    0x42864  2      
  movq 0x20(%rsp), %r12           #  13    0x42866  5      
  movq 0x18(%rsp), %rbx           #  14    0x4286b  5      
  addl $0x28, %esp                #  15    0x42870  3      
  addq %r15, %rsp                 #  16    0x42873  3      
  jmpq .mutex_lock_nonrecursive   #  17    0x42876  5      
  nop                             #  18    0x4287b  1      
.L_42880:                         #        0x4287c  0      
  movq %rdx, (%rsp)               #  19    0x4287c  4      
  movl %esi, 0x8(%rsp)            #  20    0x42880  4      
  nop                             #  21    0x42884  1      
  nop                             #  22    0x42885  1      
  callq .pthread_self             #  23    0x42886  5      
  movl %eax, %r12d                #  24    0x4288b  3      
  movl %ebx, %ebx                 #  25    0x4288e  2      
  movl 0x8(%r15,%rbx,1), %eax     #  26    0x42890  5      
  movq (%rsp), %rdx               #  27    0x42895  4      
  movl 0x8(%rsp), %esi            #  28    0x42899  4      
  cmpl %r12d, %eax                #  29    0x4289d  3      
  je .L_42900                     #  30    0x428a0  6      
  movl %ebx, %edi                 #  31    0x428a6  2      
  xchgw %ax, %ax                  #  32    0x428a8  3      
  callq .mutex_lock_nonrecursive  #  33    0x428ab  5      
  testl %eax, %eax                #  34    0x428b0  2      
  jne .L_428e0                    #  35    0x428b2  6      
  movl %ebx, %ebx                 #  36    0x428b8  2      
  movl %r12d, 0x8(%r15,%rbx,1)    #  37    0x428ba  5      
  movl %ebx, %ebx                 #  38    0x428bf  2      
  movl $0x1, 0xc(%r15,%rbx,1)     #  39    0x428c1  9      
  nop                             #  40    0x428ca  1      
.L_428e0:                         #        0x428cb  0      
  movq 0x18(%rsp), %rbx           #  41    0x428cb  5      
  movq 0x20(%rsp), %r12           #  42    0x428d0  5      
  addl $0x28, %esp                #  43    0x428d5  3      
  addq %r15, %rsp                 #  44    0x428d8  3      
  popq %r11                       #  45    0x428db  3      
  andl $0xffffffe0, %r11d         #  46    0x428de  7      
  addq %r15, %r11                 #  47    0x428e5  3      
  jmpq %r11                       #  48    0x428e8  3      
  nop                             #  49    0x428eb  1      
.L_42900:                         #        0x428ec  0      
  movl %ebx, %ebx                 #  50    0x428ec  2      
  cmpl $0x2, 0x4(%r15,%rbx,1)     #  51    0x428ee  6      
  movl $0x23, %eax                #  52    0x428f4  5      
  je .L_428e0                     #  53    0x428f9  6      
  movl %ebx, %ebx                 #  54    0x428ff  2      
  addl $0x1, 0xc(%r15,%rbx,1)     #  55    0x42901  6      
  xorb %al, %al                   #  56    0x42907  2      
  jmpq .L_428e0                   #  57    0x42909  5      
  nop                             #  58    0x4290e  1      
                                                           
.size mutex_lock, .-mutex_lock

