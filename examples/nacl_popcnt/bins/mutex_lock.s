  .text
  .globl mutex_lock
  .type mutex_lock, @function

#! file-offset 0x42820
#! rip-offset  0x42820
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  
.mutex_lock:                      #        0x42820  0      
  movq %rbx, -0x10(%rsp)          #  1     0x42820  5      
  movl %edi, %ebx                 #  2     0x42825  2      
  movq %r12, -0x8(%rsp)           #  3     0x42827  5      
  subl $0x28, %esp                #  4     0x4282c  3      
  addq %r15, %rsp                 #  5     0x4282f  3      
  movl %ebx, %ebx                 #  6     0x42832  2      
  movl 0x4(%r15,%rbx,1), %eax     #  7     0x42834  5      
  movl %edx, %edx                 #  8     0x42839  2      
  testl %eax, %eax                #  9     0x4283b  2      
  nop                             #  10    0x4283d  1      
  jne .L_42860                    #  11    0x4283e  6      
  movl %ebx, %edi                 #  12    0x42844  2      
  movq 0x20(%rsp), %r12           #  13    0x42846  5      
  movq 0x18(%rsp), %rbx           #  14    0x4284b  5      
  addl $0x28, %esp                #  15    0x42850  3      
  addq %r15, %rsp                 #  16    0x42853  3      
  jmpq .mutex_lock_nonrecursive   #  17    0x42856  5      
  nop                             #  18    0x4285b  1      
.L_42860:                         #        0x4285c  0      
  movq %rdx, (%rsp)               #  19    0x4285c  4      
  movl %esi, 0x8(%rsp)            #  20    0x42860  4      
  nop                             #  21    0x42864  1      
  nop                             #  22    0x42865  1      
  callq .pthread_self             #  23    0x42866  5      
  movl %eax, %r12d                #  24    0x4286b  3      
  movl %ebx, %ebx                 #  25    0x4286e  2      
  movl 0x8(%r15,%rbx,1), %eax     #  26    0x42870  5      
  movq (%rsp), %rdx               #  27    0x42875  4      
  movl 0x8(%rsp), %esi            #  28    0x42879  4      
  cmpl %r12d, %eax                #  29    0x4287d  3      
  je .L_428e0                     #  30    0x42880  6      
  movl %ebx, %edi                 #  31    0x42886  2      
  xchgw %ax, %ax                  #  32    0x42888  3      
  callq .mutex_lock_nonrecursive  #  33    0x4288b  5      
  testl %eax, %eax                #  34    0x42890  2      
  jne .L_428c0                    #  35    0x42892  6      
  movl %ebx, %ebx                 #  36    0x42898  2      
  movl %r12d, 0x8(%r15,%rbx,1)    #  37    0x4289a  5      
  movl %ebx, %ebx                 #  38    0x4289f  2      
  movl $0x1, 0xc(%r15,%rbx,1)     #  39    0x428a1  9      
  nop                             #  40    0x428aa  1      
.L_428c0:                         #        0x428ab  0      
  movq 0x18(%rsp), %rbx           #  41    0x428ab  5      
  movq 0x20(%rsp), %r12           #  42    0x428b0  5      
  addl $0x28, %esp                #  43    0x428b5  3      
  addq %r15, %rsp                 #  44    0x428b8  3      
  popq %r11                       #  45    0x428bb  3      
  andl $0xffffffe0, %r11d         #  46    0x428be  7      
  addq %r15, %r11                 #  47    0x428c5  3      
  jmpq %r11                       #  48    0x428c8  3      
  nop                             #  49    0x428cb  1      
.L_428e0:                         #        0x428cc  0      
  movl %ebx, %ebx                 #  50    0x428cc  2      
  cmpl $0x2, 0x4(%r15,%rbx,1)     #  51    0x428ce  6      
  movl $0x23, %eax                #  52    0x428d4  5      
  je .L_428c0                     #  53    0x428d9  6      
  movl %ebx, %ebx                 #  54    0x428df  2      
  addl $0x1, 0xc(%r15,%rbx,1)     #  55    0x428e1  6      
  xorb %al, %al                   #  56    0x428e7  2      
  jmpq .L_428c0                   #  57    0x428e9  5      
  nop                             #  58    0x428ee  1      
                                                           
.size mutex_lock, .-mutex_lock

