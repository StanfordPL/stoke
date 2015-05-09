  .text
  .globl _ZNSs6appendERKSs
  .type _ZNSs6appendERKSs, @function

#! file-offset 0x468c0
#! rip-offset  0x468c0
#! capacity    384 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs6appendERKSs:             #        0x468c0  0      
  movq %r14, -0x8(%rsp)         #  1     0x468c0  5      
  movl %esi, %r14d              #  2     0x468c5  3      
  movq %rbx, -0x20(%rsp)        #  3     0x468c8  5      
  movq %r12, -0x18(%rsp)        #  4     0x468cd  5      
  movq %r13, -0x10(%rsp)        #  5     0x468d2  5      
  subl $0x28, %esp              #  6     0x468d7  3      
  addq %r15, %rsp               #  7     0x468da  3      
  nop                           #  8     0x468dd  1      
  movl %r14d, %r14d             #  9     0x468de  3      
  movl (%r15,%r14,1), %esi      #  10    0x468e1  4      
  movl %edi, %ebx               #  11    0x468e5  2      
  leal -0xc(%rsi), %eax         #  12    0x468e7  3      
  movl %eax, %eax               #  13    0x468ea  2      
  movl (%r15,%rax,1), %r13d     #  14    0x468ec  4      
  testl %r13d, %r13d            #  15    0x468f0  3      
  je .L_469e0                   #  16    0x468f3  6      
  nop                           #  17    0x468f9  1      
  movl %ebx, %ebx               #  18    0x468fa  2      
  movl (%r15,%rbx,1), %eax      #  19    0x468fc  4      
  leal -0xc(%rax), %edx         #  20    0x46900  3      
  movl %edx, %edx               #  21    0x46903  2      
  movl (%r15,%rdx,1), %edi      #  22    0x46905  4      
  leal (%rdi,%r13,1), %r12d     #  23    0x46909  4      
  movl %edx, %edx               #  24    0x4690d  2      
  cmpl 0x4(%r15,%rdx,1), %r12d  #  25    0x4690f  5      
  ja .L_46940                   #  26    0x46914  6      
  nop                           #  27    0x4691a  1      
  movl %edx, %edx               #  28    0x4691b  2      
  movl 0x8(%r15,%rdx,1), %r9d   #  29    0x4691d  5      
  testl %r9d, %r9d              #  30    0x46922  3      
  jle .L_46980                  #  31    0x46925  6      
  nop                           #  32    0x4692b  1      
  nop                           #  33    0x4692c  1      
.L_46940:                       #        0x4692d  0      
  movl %r12d, %esi              #  34    0x4692d  3      
  movl %ebx, %edi               #  35    0x46930  2      
  nop                           #  36    0x46932  1      
  nop                           #  37    0x46933  1      
  callq ._ZNSs7reserveEj        #  38    0x46934  5      
  movl %ebx, %ebx               #  39    0x46939  2      
  movl (%r15,%rbx,1), %eax      #  40    0x4693b  4      
  movl %r14d, %r14d             #  41    0x4693f  3      
  movl (%r15,%r14,1), %esi      #  42    0x46942  4      
  leal -0xc(%rax), %edx         #  43    0x46946  3      
  movl %edx, %edx               #  44    0x46949  2      
  movl (%r15,%rdx,1), %edi      #  45    0x4694b  4      
  nop                           #  46    0x4694f  1      
.L_46980:                       #        0x46950  0      
  addl %eax, %edi               #  47    0x46950  2      
  cmpl $0x1, %r13d              #  48    0x46952  4      
  je .L_46a20                   #  49    0x46956  6      
  movl %r13d, %edx              #  50    0x4695c  3      
  nop                           #  51    0x4695f  1      
  callq .memcpy                 #  52    0x46960  5      
.L_469a0:                       #        0x46965  0      
  movl %ebx, %ebx               #  53    0x46965  2      
  movl (%r15,%rbx,1), %eax      #  54    0x46967  4      
  subl $0xc, %eax               #  55    0x4696b  3      
  movl %eax, %eax               #  56    0x4696e  2      
  movl %r12d, (%r15,%rax,1)     #  57    0x46970  4      
  addl %eax, %r12d              #  58    0x46974  3      
  movl %eax, %eax               #  59    0x46977  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  60    0x46979  9      
  nop                           #  61    0x46982  1      
  movl %r12d, %r12d             #  62    0x46983  3      
  movb $0x0, 0xc(%r15,%r12,1)   #  63    0x46986  6      
  nop                           #  64    0x4698c  1      
  nop                           #  65    0x4698d  1      
.L_469e0:                       #        0x4698e  0      
  movl %ebx, %eax               #  66    0x4698e  2      
  movq 0x10(%rsp), %r12         #  67    0x46990  5      
  movq 0x8(%rsp), %rbx          #  68    0x46995  5      
  movq 0x18(%rsp), %r13         #  69    0x4699a  5      
  movq 0x20(%rsp), %r14         #  70    0x4699f  5      
  addl $0x28, %esp              #  71    0x469a4  3      
  addq %r15, %rsp               #  72    0x469a7  3      
  popq %r11                     #  73    0x469aa  3      
  xchgw %ax, %ax                #  74    0x469ad  3      
  andl $0xffffffe0, %r11d       #  75    0x469b0  7      
  addq %r15, %r11               #  76    0x469b7  3      
  jmpq %r11                     #  77    0x469ba  3      
  nop                           #  78    0x469bd  1      
  nop                           #  79    0x469be  1      
.L_46a20:                       #        0x469bf  0      
  movl %esi, %esi               #  80    0x469bf  2      
  movzbl (%r15,%rsi,1), %eax    #  81    0x469c1  5      
  movl %edi, %edi               #  82    0x469c6  2      
  movb %al, (%r15,%rdi,1)       #  83    0x469c8  4      
  jmpq .L_469a0                 #  84    0x469cc  5      
  nop                           #  85    0x469d1  1      
  nop                           #  86    0x469d2  1      
  nop                           #  87    0x469d3  1      
  nop                           #  88    0x469d4  1      
  nop                           #  89    0x469d5  1      
  nop                           #  90    0x469d6  1      
  nop                           #  91    0x469d7  1      
  nop                           #  92    0x469d8  1      
  nop                           #  93    0x469d9  1      
  nop                           #  94    0x469da  1      
  nop                           #  95    0x469db  1      
  nop                           #  96    0x469dc  1      
  nop                           #  97    0x469dd  1      
  nop                           #  98    0x469de  1      
                                                         
.size _ZNSs6appendERKSs, .-_ZNSs6appendERKSs

