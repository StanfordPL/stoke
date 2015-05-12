  .text
  .globl _ZNSs6appendERKSs
  .type _ZNSs6appendERKSs, @function

#! file-offset 0x468e0
#! rip-offset  0x468e0
#! capacity    384 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs6appendERKSs:             #        0x468e0  0      
  movq %r14, -0x8(%rsp)         #  1     0x468e0  5      
  movl %esi, %r14d              #  2     0x468e5  3      
  movq %rbx, -0x20(%rsp)        #  3     0x468e8  5      
  movq %r12, -0x18(%rsp)        #  4     0x468ed  5      
  movq %r13, -0x10(%rsp)        #  5     0x468f2  5      
  subl $0x28, %esp              #  6     0x468f7  3      
  addq %r15, %rsp               #  7     0x468fa  3      
  nop                           #  8     0x468fd  1      
  movl %r14d, %r14d             #  9     0x468fe  3      
  movl (%r15,%r14,1), %esi      #  10    0x46901  4      
  movl %edi, %ebx               #  11    0x46905  2      
  leal -0xc(%rsi), %eax         #  12    0x46907  3      
  movl %eax, %eax               #  13    0x4690a  2      
  movl (%r15,%rax,1), %r13d     #  14    0x4690c  4      
  testl %r13d, %r13d            #  15    0x46910  3      
  je .L_46a00                   #  16    0x46913  6      
  nop                           #  17    0x46919  1      
  movl %ebx, %ebx               #  18    0x4691a  2      
  movl (%r15,%rbx,1), %eax      #  19    0x4691c  4      
  leal -0xc(%rax), %edx         #  20    0x46920  3      
  movl %edx, %edx               #  21    0x46923  2      
  movl (%r15,%rdx,1), %edi      #  22    0x46925  4      
  leal (%rdi,%r13,1), %r12d     #  23    0x46929  4      
  movl %edx, %edx               #  24    0x4692d  2      
  cmpl 0x4(%r15,%rdx,1), %r12d  #  25    0x4692f  5      
  ja .L_46960                   #  26    0x46934  6      
  nop                           #  27    0x4693a  1      
  movl %edx, %edx               #  28    0x4693b  2      
  movl 0x8(%r15,%rdx,1), %r9d   #  29    0x4693d  5      
  testl %r9d, %r9d              #  30    0x46942  3      
  jle .L_469a0                  #  31    0x46945  6      
  nop                           #  32    0x4694b  1      
  nop                           #  33    0x4694c  1      
.L_46960:                       #        0x4694d  0      
  movl %r12d, %esi              #  34    0x4694d  3      
  movl %ebx, %edi               #  35    0x46950  2      
  nop                           #  36    0x46952  1      
  nop                           #  37    0x46953  1      
  callq ._ZNSs7reserveEj        #  38    0x46954  5      
  movl %ebx, %ebx               #  39    0x46959  2      
  movl (%r15,%rbx,1), %eax      #  40    0x4695b  4      
  movl %r14d, %r14d             #  41    0x4695f  3      
  movl (%r15,%r14,1), %esi      #  42    0x46962  4      
  leal -0xc(%rax), %edx         #  43    0x46966  3      
  movl %edx, %edx               #  44    0x46969  2      
  movl (%r15,%rdx,1), %edi      #  45    0x4696b  4      
  nop                           #  46    0x4696f  1      
.L_469a0:                       #        0x46970  0      
  addl %eax, %edi               #  47    0x46970  2      
  cmpl $0x1, %r13d              #  48    0x46972  4      
  je .L_46a40                   #  49    0x46976  6      
  movl %r13d, %edx              #  50    0x4697c  3      
  nop                           #  51    0x4697f  1      
  callq .memcpy                 #  52    0x46980  5      
.L_469c0:                       #        0x46985  0      
  movl %ebx, %ebx               #  53    0x46985  2      
  movl (%r15,%rbx,1), %eax      #  54    0x46987  4      
  subl $0xc, %eax               #  55    0x4698b  3      
  movl %eax, %eax               #  56    0x4698e  2      
  movl %r12d, (%r15,%rax,1)     #  57    0x46990  4      
  addl %eax, %r12d              #  58    0x46994  3      
  movl %eax, %eax               #  59    0x46997  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  60    0x46999  9      
  nop                           #  61    0x469a2  1      
  movl %r12d, %r12d             #  62    0x469a3  3      
  movb $0x0, 0xc(%r15,%r12,1)   #  63    0x469a6  6      
  nop                           #  64    0x469ac  1      
  nop                           #  65    0x469ad  1      
.L_46a00:                       #        0x469ae  0      
  movl %ebx, %eax               #  66    0x469ae  2      
  movq 0x10(%rsp), %r12         #  67    0x469b0  5      
  movq 0x8(%rsp), %rbx          #  68    0x469b5  5      
  movq 0x18(%rsp), %r13         #  69    0x469ba  5      
  movq 0x20(%rsp), %r14         #  70    0x469bf  5      
  addl $0x28, %esp              #  71    0x469c4  3      
  addq %r15, %rsp               #  72    0x469c7  3      
  popq %r11                     #  73    0x469ca  3      
  xchgw %ax, %ax                #  74    0x469cd  3      
  andl $0xffffffe0, %r11d       #  75    0x469d0  7      
  addq %r15, %r11               #  76    0x469d7  3      
  jmpq %r11                     #  77    0x469da  3      
  nop                           #  78    0x469dd  1      
  nop                           #  79    0x469de  1      
.L_46a40:                       #        0x469df  0      
  movl %esi, %esi               #  80    0x469df  2      
  movzbl (%r15,%rsi,1), %eax    #  81    0x469e1  5      
  movl %edi, %edi               #  82    0x469e6  2      
  movb %al, (%r15,%rdi,1)       #  83    0x469e8  4      
  jmpq .L_469c0                 #  84    0x469ec  5      
  nop                           #  85    0x469f1  1      
  nop                           #  86    0x469f2  1      
  nop                           #  87    0x469f3  1      
  nop                           #  88    0x469f4  1      
  nop                           #  89    0x469f5  1      
  nop                           #  90    0x469f6  1      
  nop                           #  91    0x469f7  1      
  nop                           #  92    0x469f8  1      
  nop                           #  93    0x469f9  1      
  nop                           #  94    0x469fa  1      
  nop                           #  95    0x469fb  1      
  nop                           #  96    0x469fc  1      
  nop                           #  97    0x469fd  1      
  nop                           #  98    0x469fe  1      
                                                         
.size _ZNSs6appendERKSs, .-_ZNSs6appendERKSs

