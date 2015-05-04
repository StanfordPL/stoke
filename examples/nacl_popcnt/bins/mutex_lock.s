  .text
  .globl mutex_lock
  .type mutex_lock, @function

#! file-offset 0x428c0
#! rip-offset  0x428c0
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  
.mutex_lock:                      #        0x428c0  0      
  movq %rbx, -0x10(%rsp)          #  1     0x428c0  5      
  movl %edi, %ebx                 #  2     0x428c5  2      
  movq %r12, -0x8(%rsp)           #  3     0x428c7  5      
  subl $0x28, %esp                #  4     0x428cc  3      
  addq %r15, %rsp                 #  5     0x428cf  3      
  movl %ebx, %ebx                 #  6     0x428d2  2      
  movl 0x4(%r15,%rbx,1), %eax     #  7     0x428d4  5      
  movl %edx, %edx                 #  8     0x428d9  2      
  testl %eax, %eax                #  9     0x428db  2      
  nop                             #  10    0x428dd  1      
  jne .L_42900                    #  11    0x428de  6      
  movl %ebx, %edi                 #  12    0x428e4  2      
  movq 0x20(%rsp), %r12           #  13    0x428e6  5      
  movq 0x18(%rsp), %rbx           #  14    0x428eb  5      
  addl $0x28, %esp                #  15    0x428f0  3      
  addq %r15, %rsp                 #  16    0x428f3  3      
  jmpq .mutex_lock_nonrecursive   #  17    0x428f6  5      
  nop                             #  18    0x428fb  1      
.L_42900:                         #        0x428fc  0      
  movq %rdx, (%rsp)               #  19    0x428fc  4      
  movl %esi, 0x8(%rsp)            #  20    0x42900  4      
  nop                             #  21    0x42904  1      
  nop                             #  22    0x42905  1      
  callq .pthread_self             #  23    0x42906  5      
  movl %eax, %r12d                #  24    0x4290b  3      
  movl %ebx, %ebx                 #  25    0x4290e  2      
  movl 0x8(%r15,%rbx,1), %eax     #  26    0x42910  5      
  movq (%rsp), %rdx               #  27    0x42915  4      
  movl 0x8(%rsp), %esi            #  28    0x42919  4      
  cmpl %r12d, %eax                #  29    0x4291d  3      
  je .L_42980                     #  30    0x42920  6      
  movl %ebx, %edi                 #  31    0x42926  2      
  xchgw %ax, %ax                  #  32    0x42928  3      
  callq .mutex_lock_nonrecursive  #  33    0x4292b  5      
  testl %eax, %eax                #  34    0x42930  2      
  jne .L_42960                    #  35    0x42932  6      
  movl %ebx, %ebx                 #  36    0x42938  2      
  movl %r12d, 0x8(%r15,%rbx,1)    #  37    0x4293a  5      
  movl %ebx, %ebx                 #  38    0x4293f  2      
  movl $0x1, 0xc(%r15,%rbx,1)     #  39    0x42941  9      
  nop                             #  40    0x4294a  1      
.L_42960:                         #        0x4294b  0      
  movq 0x18(%rsp), %rbx           #  41    0x4294b  5      
  movq 0x20(%rsp), %r12           #  42    0x42950  5      
  addl $0x28, %esp                #  43    0x42955  3      
  addq %r15, %rsp                 #  44    0x42958  3      
  popq %r11                       #  45    0x4295b  3      
  andl $0xffffffe0, %r11d         #  46    0x4295e  7      
  addq %r15, %r11                 #  47    0x42965  3      
  jmpq %r11                       #  48    0x42968  3      
  nop                             #  49    0x4296b  1      
.L_42980:                         #        0x4296c  0      
  movl %ebx, %ebx                 #  50    0x4296c  2      
  cmpl $0x2, 0x4(%r15,%rbx,1)     #  51    0x4296e  6      
  movl $0x23, %eax                #  52    0x42974  5      
  je .L_42960                     #  53    0x42979  6      
  movl %ebx, %ebx                 #  54    0x4297f  2      
  addl $0x1, 0xc(%r15,%rbx,1)     #  55    0x42981  6      
  xorb %al, %al                   #  56    0x42987  2      
  jmpq .L_42960                   #  57    0x42989  5      
  nop                             #  58    0x4298e  1      
                                                           
.size mutex_lock, .-mutex_lock

