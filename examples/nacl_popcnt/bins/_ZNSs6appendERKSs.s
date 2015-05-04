  .text
  .globl _ZNSs6appendERKSs
  .type _ZNSs6appendERKSs, @function

#! file-offset 0x46960
#! rip-offset  0x46960
#! capacity    384 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs6appendERKSs:             #        0x46960  0      
  movq %r14, -0x8(%rsp)         #  1     0x46960  5      
  movl %esi, %r14d              #  2     0x46965  3      
  movq %rbx, -0x20(%rsp)        #  3     0x46968  5      
  movq %r12, -0x18(%rsp)        #  4     0x4696d  5      
  movq %r13, -0x10(%rsp)        #  5     0x46972  5      
  subl $0x28, %esp              #  6     0x46977  3      
  addq %r15, %rsp               #  7     0x4697a  3      
  nop                           #  8     0x4697d  1      
  movl %r14d, %r14d             #  9     0x4697e  3      
  movl (%r15,%r14,1), %esi      #  10    0x46981  4      
  movl %edi, %ebx               #  11    0x46985  2      
  leal -0xc(%rsi), %eax         #  12    0x46987  3      
  movl %eax, %eax               #  13    0x4698a  2      
  movl (%r15,%rax,1), %r13d     #  14    0x4698c  4      
  testl %r13d, %r13d            #  15    0x46990  3      
  je .L_46a80                   #  16    0x46993  6      
  nop                           #  17    0x46999  1      
  movl %ebx, %ebx               #  18    0x4699a  2      
  movl (%r15,%rbx,1), %eax      #  19    0x4699c  4      
  leal -0xc(%rax), %edx         #  20    0x469a0  3      
  movl %edx, %edx               #  21    0x469a3  2      
  movl (%r15,%rdx,1), %edi      #  22    0x469a5  4      
  leal (%rdi,%r13,1), %r12d     #  23    0x469a9  4      
  movl %edx, %edx               #  24    0x469ad  2      
  cmpl 0x4(%r15,%rdx,1), %r12d  #  25    0x469af  5      
  ja .L_469e0                   #  26    0x469b4  6      
  nop                           #  27    0x469ba  1      
  movl %edx, %edx               #  28    0x469bb  2      
  movl 0x8(%r15,%rdx,1), %r9d   #  29    0x469bd  5      
  testl %r9d, %r9d              #  30    0x469c2  3      
  jle .L_46a20                  #  31    0x469c5  6      
  nop                           #  32    0x469cb  1      
  nop                           #  33    0x469cc  1      
.L_469e0:                       #        0x469cd  0      
  movl %r12d, %esi              #  34    0x469cd  3      
  movl %ebx, %edi               #  35    0x469d0  2      
  nop                           #  36    0x469d2  1      
  nop                           #  37    0x469d3  1      
  callq ._ZNSs7reserveEj        #  38    0x469d4  5      
  movl %ebx, %ebx               #  39    0x469d9  2      
  movl (%r15,%rbx,1), %eax      #  40    0x469db  4      
  movl %r14d, %r14d             #  41    0x469df  3      
  movl (%r15,%r14,1), %esi      #  42    0x469e2  4      
  leal -0xc(%rax), %edx         #  43    0x469e6  3      
  movl %edx, %edx               #  44    0x469e9  2      
  movl (%r15,%rdx,1), %edi      #  45    0x469eb  4      
  nop                           #  46    0x469ef  1      
.L_46a20:                       #        0x469f0  0      
  addl %eax, %edi               #  47    0x469f0  2      
  cmpl $0x1, %r13d              #  48    0x469f2  4      
  je .L_46ac0                   #  49    0x469f6  6      
  movl %r13d, %edx              #  50    0x469fc  3      
  nop                           #  51    0x469ff  1      
  callq .memcpy                 #  52    0x46a00  5      
.L_46a40:                       #        0x46a05  0      
  movl %ebx, %ebx               #  53    0x46a05  2      
  movl (%r15,%rbx,1), %eax      #  54    0x46a07  4      
  subl $0xc, %eax               #  55    0x46a0b  3      
  movl %eax, %eax               #  56    0x46a0e  2      
  movl %r12d, (%r15,%rax,1)     #  57    0x46a10  4      
  addl %eax, %r12d              #  58    0x46a14  3      
  movl %eax, %eax               #  59    0x46a17  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  60    0x46a19  9      
  nop                           #  61    0x46a22  1      
  movl %r12d, %r12d             #  62    0x46a23  3      
  movb $0x0, 0xc(%r15,%r12,1)   #  63    0x46a26  6      
  nop                           #  64    0x46a2c  1      
  nop                           #  65    0x46a2d  1      
.L_46a80:                       #        0x46a2e  0      
  movl %ebx, %eax               #  66    0x46a2e  2      
  movq 0x10(%rsp), %r12         #  67    0x46a30  5      
  movq 0x8(%rsp), %rbx          #  68    0x46a35  5      
  movq 0x18(%rsp), %r13         #  69    0x46a3a  5      
  movq 0x20(%rsp), %r14         #  70    0x46a3f  5      
  addl $0x28, %esp              #  71    0x46a44  3      
  addq %r15, %rsp               #  72    0x46a47  3      
  popq %r11                     #  73    0x46a4a  3      
  xchgw %ax, %ax                #  74    0x46a4d  3      
  andl $0xffffffe0, %r11d       #  75    0x46a50  7      
  addq %r15, %r11               #  76    0x46a57  3      
  jmpq %r11                     #  77    0x46a5a  3      
  nop                           #  78    0x46a5d  1      
  nop                           #  79    0x46a5e  1      
.L_46ac0:                       #        0x46a5f  0      
  movl %esi, %esi               #  80    0x46a5f  2      
  movzbl (%r15,%rsi,1), %eax    #  81    0x46a61  5      
  movl %edi, %edi               #  82    0x46a66  2      
  movb %al, (%r15,%rdi,1)       #  83    0x46a68  4      
  jmpq .L_46a40                 #  84    0x46a6c  5      
  nop                           #  85    0x46a71  1      
  nop                           #  86    0x46a72  1      
  nop                           #  87    0x46a73  1      
  nop                           #  88    0x46a74  1      
  nop                           #  89    0x46a75  1      
  nop                           #  90    0x46a76  1      
  nop                           #  91    0x46a77  1      
  nop                           #  92    0x46a78  1      
  nop                           #  93    0x46a79  1      
  nop                           #  94    0x46a7a  1      
  nop                           #  95    0x46a7b  1      
  nop                           #  96    0x46a7c  1      
  nop                           #  97    0x46a7d  1      
  nop                           #  98    0x46a7e  1      
                                                         
.size _ZNSs6appendERKSs, .-_ZNSs6appendERKSs

