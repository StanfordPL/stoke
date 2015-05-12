  .text
  .globl __frame_state_for
  .type __frame_state_for, @function

#! file-offset 0x5d7e0
#! rip-offset  0x5d7e0
#! capacity    480 bytes

# Text                            #  Line  RIP      Bytes  
.__frame_state_for:               #        0x5d7e0  0      
  pushq %r12                      #  1     0x5d7e0  3      
  xorl %eax, %eax                 #  2     0x5d7e3  2      
  movl %edi, %r8d                 #  3     0x5d7e5  3      
  movl $0x12, %ecx                #  4     0x5d7e8  5      
  addl $0x1, %r8d                 #  5     0x5d7ed  4      
  pushq %rbx                      #  6     0x5d7f1  2      
  movl %esi, %ebx                 #  7     0x5d7f3  2      
  subl $0x208, %esp               #  8     0x5d7f5  6      
  addq %r15, %rsp                 #  9     0x5d7fb  3      
  nop                             #  10    0x5d7fe  1      
  leal 0x170(%rsp), %edx          #  11    0x5d7ff  7      
  movl %esp, %esi                 #  12    0x5d806  2      
  movl %esp, %r12d                #  13    0x5d808  3      
  movq %rdx, %rdi                 #  14    0x5d80b  3      
  movl %edi, %edi                 #  15    0x5d80e  2      
  leaq (%r15,%rdi,1), %rdi        #  16    0x5d810  4      
  rep stosq %es:(%rdi)            #  17    0x5d814  4      
  movl %edi, %edi                 #  18    0x5d818  2      
  nop                             #  19    0x5d81a  1      
  movq $0x4000000000000000, %rcx  #  20    0x5d81b  10     
  movl %edx, %edi                 #  21    0x5d825  2      
  movl %r8d, 0x1bc(%rsp)          #  22    0x5d827  8      
  movq %rcx, 0x1d0(%rsp)          #  23    0x5d82f  8      
  nop                             #  24    0x5d837  1      
  nop                             #  25    0x5d838  1      
  nop                             #  26    0x5d839  1      
  callq .uw_frame_state_for       #  27    0x5d83a  5      
  testl %eax, %eax                #  28    0x5d83f  2      
  je .L_5d8c0                     #  29    0x5d841  6      
  nop                             #  30    0x5d847  1      
  nop                             #  31    0x5d848  1      
.L_5d880:                         #        0x5d849  0      
  xorl %ebx, %ebx                 #  32    0x5d849  2      
  nop                             #  33    0x5d84b  1      
  nop                             #  34    0x5d84c  1      
.L_5d8a0:                         #        0x5d84d  0      
  addl $0x208, %esp               #  35    0x5d84d  6      
  addq %r15, %rsp                 #  36    0x5d853  3      
  movl %ebx, %eax                 #  37    0x5d856  2      
  popq %rbx                       #  38    0x5d858  2      
  popq %r12                       #  39    0x5d85a  3      
  popq %r11                       #  40    0x5d85d  3      
  andl $0xffffffe0, %r11d         #  41    0x5d860  7      
  addq %r15, %r11                 #  42    0x5d867  3      
  jmpq %r11                       #  43    0x5d86a  3      
  nop                             #  44    0x5d86d  1      
.L_5d8c0:                         #        0x5d86e  0      
  cmpl $0x2, 0x13c(%rsp)          #  45    0x5d86e  8      
  je .L_5d880                     #  46    0x5d876  6      
  leal 0x8(%rsp), %eax            #  47    0x5d87c  4      
  movl %ebx, %edx                 #  48    0x5d880  2      
  addl $0x128, %r12d              #  49    0x5d882  7      
  movl %ebx, %ecx                 #  50    0x5d889  2      
  jmpq .L_5d920                   #  51    0x5d88b  5      
  nop                             #  52    0x5d890  1      
.L_5d8e0:                         #        0x5d891  0      
  cmpb $0x2, %sil                 #  53    0x5d891  4      
  je .L_5d940                     #  54    0x5d895  6      
  movl %ecx, %esi                 #  55    0x5d89b  2      
  movl %esi, %esi                 #  56    0x5d89d  2      
  movl $0x0, 0x10(%r15,%rsi,1)    #  57    0x5d89f  9      
  nop                             #  58    0x5d8a8  1      
.L_5d900:                         #        0x5d8a9  0      
  addl $0x10, %eax                #  59    0x5d8a9  3      
  addl $0x1, %edx                 #  60    0x5d8ac  3      
  addl $0x4, %ecx                 #  61    0x5d8af  3      
  cmpl %r12d, %eax                #  62    0x5d8b2  3      
  je .L_5d960                     #  63    0x5d8b5  6      
  nop                             #  64    0x5d8bb  1      
  nop                             #  65    0x5d8bc  1      
.L_5d920:                         #        0x5d8bd  0      
  movl %eax, %esi                 #  66    0x5d8bd  2      
  movl %edx, %r8d                 #  67    0x5d8bf  3      
  movl %esi, %esi                 #  68    0x5d8c2  2      
  movl (%r15,%rsi,1), %esi        #  69    0x5d8c4  4      
  cmpb $0x1, %sil                 #  70    0x5d8c8  4      
  movl %r8d, %r8d                 #  71    0x5d8cc  3      
  movb %sil, 0x5c(%r15,%r8,1)     #  72    0x5d8cf  5      
  jne .L_5d8e0                    #  73    0x5d8d4  6      
  nop                             #  74    0x5d8da  1      
.L_5d940:                         #        0x5d8db  0      
  leal -0x8(%rax), %edi           #  75    0x5d8db  3      
  movl %ecx, %esi                 #  76    0x5d8de  2      
  movl %edi, %edi                 #  77    0x5d8e0  2      
  movq (%r15,%rdi,1), %rdi        #  78    0x5d8e2  4      
  movl %esi, %esi                 #  79    0x5d8e6  2      
  movl %edi, 0x10(%r15,%rsi,1)    #  80    0x5d8e8  5      
  jmpq .L_5d900                   #  81    0x5d8ed  5      
  nop                             #  82    0x5d8f2  1      
.L_5d960:                         #        0x5d8f3  0      
  movq 0x128(%rsp), %rax          #  83    0x5d8f3  8      
  movl %ebx, %ebx                 #  84    0x5d8fb  2      
  movl %eax, 0x8(%r15,%rbx,1)     #  85    0x5d8fd  5      
  movq 0x130(%rsp), %rax          #  86    0x5d902  8      
  movl %ebx, %ebx                 #  87    0x5d90a  2      
  movw %ax, 0x58(%r15,%rbx,1)     #  88    0x5d90c  6      
  nop                             #  89    0x5d912  1      
  movq 0x158(%rsp), %rax          #  90    0x5d913  8      
  movl %ebx, %ebx                 #  91    0x5d91b  2      
  movw %ax, 0x5a(%r15,%rbx,1)     #  92    0x5d91d  6      
  movq 0x1e0(%rsp), %rax          #  93    0x5d923  8      
  movl %ebx, %ebx                 #  94    0x5d92b  2      
  movl %eax, 0xc(%r15,%rbx,1)     #  95    0x5d92d  5      
  nop                             #  96    0x5d932  1      
  movl 0x164(%rsp), %eax          #  97    0x5d933  7      
  movl %ebx, %ebx                 #  98    0x5d93a  2      
  movl %eax, 0x4(%r15,%rbx,1)     #  99    0x5d93c  5      
  jmpq .L_5d8a0                   #  100   0x5d941  5      
  nop                             #  101   0x5d946  1      
                                                           
.size __frame_state_for, .-__frame_state_for

