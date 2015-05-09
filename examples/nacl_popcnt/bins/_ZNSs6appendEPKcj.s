  .text
  .globl _ZNSs6appendEPKcj
  .type _ZNSs6appendEPKcj, @function

#! file-offset 0x46480
#! rip-offset  0x46480
#! capacity    544 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendEPKcj:                     #        0x46480  0      
  movq %rbx, -0x18(%rsp)                #  1     0x46480  5      
  movq %r13, -0x8(%rsp)                 #  2     0x46485  5      
  movl %edi, %ebx                       #  3     0x4648a  2      
  movq %r12, -0x10(%rsp)                #  4     0x4648c  5      
  subl $0x28, %esp                      #  5     0x46491  3      
  addq %r15, %rsp                       #  6     0x46494  3      
  testl %edx, %edx                      #  7     0x46497  2      
  movl %esi, %r13d                      #  8     0x46499  3      
  nop                                   #  9     0x4649c  1      
  jne .L_46500                          #  10    0x4649d  6      
  nop                                   #  11    0x464a3  1      
  nop                                   #  12    0x464a4  1      
.L_464c0:                               #        0x464a5  0      
  movl %ebx, %eax                       #  13    0x464a5  2      
  movq 0x18(%rsp), %r12                 #  14    0x464a7  5      
  movq 0x10(%rsp), %rbx                 #  15    0x464ac  5      
  movq 0x20(%rsp), %r13                 #  16    0x464b1  5      
  addl $0x28, %esp                      #  17    0x464b6  3      
  addq %r15, %rsp                       #  18    0x464b9  3      
  popq %r11                             #  19    0x464bc  3      
  nop                                   #  20    0x464bf  1      
  andl $0xffffffe0, %r11d               #  21    0x464c0  7      
  addq %r15, %r11                       #  22    0x464c7  3      
  jmpq %r11                             #  23    0x464ca  3      
  nop                                   #  24    0x464cd  1      
  nop                                   #  25    0x464ce  1      
.L_46500:                               #        0x464cf  0      
  movl %ebx, %ebx                       #  26    0x464cf  2      
  movl (%r15,%rbx,1), %eax              #  27    0x464d1  4      
  leal -0xc(%rax), %ecx                 #  28    0x464d5  3      
  movl %ecx, %ecx                       #  29    0x464d8  2      
  movl (%r15,%rcx,1), %edi              #  30    0x464da  4      
  movl %edi, %esi                       #  31    0x464de  2      
  negl %esi                             #  32    0x464e0  2      
  addl $0x3ffffffc, %esi                #  33    0x464e2  6      
  cmpl %esi, %edx                       #  34    0x464e8  2      
  nop                                   #  35    0x464ea  1      
  ja .L_46680                           #  36    0x464eb  6      
  leal (%rdx,%rdi,1), %r12d             #  37    0x464f1  4      
  movl %ecx, %ecx                       #  38    0x464f5  2      
  cmpl 0x4(%r15,%rcx,1), %r12d          #  39    0x464f7  5      
  ja .L_46560                           #  40    0x464fc  6      
  movl %ecx, %ecx                       #  41    0x46502  2      
  movl 0x8(%r15,%rcx,1), %ecx           #  42    0x46504  5      
  testl %ecx, %ecx                      #  43    0x46509  2      
  nop                                   #  44    0x4650b  1      
  jle .L_465c0                          #  45    0x4650c  6      
  nop                                   #  46    0x46512  1      
  nop                                   #  47    0x46513  1      
.L_46560:                               #        0x46514  0      
  cmpl %eax, %r13d                      #  48    0x46514  3      
  jb .L_46580                           #  49    0x46517  6      
  addl %eax, %edi                       #  50    0x4651d  2      
  cmpl %r13d, %edi                      #  51    0x4651f  3      
  jae .L_46640                          #  52    0x46522  6      
  nop                                   #  53    0x46528  1      
  nop                                   #  54    0x46529  1      
.L_46580:                               #        0x4652a  0      
  movl %ebx, %edi                       #  55    0x4652a  2      
  movl %r12d, %esi                      #  56    0x4652c  3      
  movl %edx, 0x8(%rsp)                  #  57    0x4652f  4      
  nop                                   #  58    0x46533  1      
  nop                                   #  59    0x46534  1      
  callq ._ZNSs7reserveEj                #  60    0x46535  5      
  movl %ebx, %ebx                       #  61    0x4653a  2      
  movl (%r15,%rbx,1), %eax              #  62    0x4653c  4      
  movl 0x8(%rsp), %edx                  #  63    0x46540  4      
  leal -0xc(%rax), %ecx                 #  64    0x46544  3      
  movl %ecx, %ecx                       #  65    0x46547  2      
  movl (%r15,%rcx,1), %edi              #  66    0x46549  4      
  nop                                   #  67    0x4654d  1      
.L_465c0:                               #        0x4654e  0      
  addl %eax, %edi                       #  68    0x4654e  2      
  cmpl $0x1, %edx                       #  69    0x46550  3      
  je .L_46620                           #  70    0x46553  6      
  movl %r13d, %esi                      #  71    0x46559  3      
  xchgw %ax, %ax                        #  72    0x4655c  3      
  nop                                   #  73    0x4655f  1      
  callq .memcpy                         #  74    0x46560  5      
.L_465e0:                               #        0x46565  0      
  movl %ebx, %ebx                       #  75    0x46565  2      
  movl (%r15,%rbx,1), %eax              #  76    0x46567  4      
  subl $0xc, %eax                       #  77    0x4656b  3      
  movl %eax, %eax                       #  78    0x4656e  2      
  movl %r12d, (%r15,%rax,1)             #  79    0x46570  4      
  addl %eax, %r12d                      #  80    0x46574  3      
  movl %eax, %eax                       #  81    0x46577  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  82    0x46579  9      
  nop                                   #  83    0x46582  1      
  movl %r12d, %r12d                     #  84    0x46583  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  85    0x46586  6      
  jmpq .L_464c0                         #  86    0x4658c  5      
  nop                                   #  87    0x46591  1      
  nop                                   #  88    0x46592  1      
.L_46620:                               #        0x46593  0      
  movl %r13d, %r13d                     #  89    0x46593  3      
  movzbl (%r15,%r13,1), %eax            #  90    0x46596  5      
  movl %edi, %edi                       #  91    0x4659b  2      
  movb %al, (%r15,%rdi,1)               #  92    0x4659d  4      
  jmpq .L_465e0                         #  93    0x465a1  5      
  nop                                   #  94    0x465a6  1      
  nop                                   #  95    0x465a7  1      
.L_46640:                               #        0x465a8  0      
  movl %ebx, %edi                       #  96    0x465a8  2      
  movl %r12d, %esi                      #  97    0x465aa  3      
  subl %eax, %r13d                      #  98    0x465ad  3      
  movl %edx, 0x8(%rsp)                  #  99    0x465b0  4      
  nop                                   #  100   0x465b4  1      
  callq ._ZNSs7reserveEj                #  101   0x465b5  5      
  movl %ebx, %ebx                       #  102   0x465ba  2      
  movl (%r15,%rbx,1), %eax              #  103   0x465bc  4      
  movl 0x8(%rsp), %edx                  #  104   0x465c0  4      
  leal -0xc(%rax), %ecx                 #  105   0x465c4  3      
  addl %eax, %r13d                      #  106   0x465c7  3      
  movl %ecx, %ecx                       #  107   0x465ca  2      
  movl (%r15,%rcx,1), %edi              #  108   0x465cc  4      
  jmpq .L_465c0                         #  109   0x465d0  5      
  nop                                   #  110   0x465d5  1      
.L_46680:                               #        0x465d6  0      
  movl $0x100209dd, %edi                #  111   0x465d6  5      
  nop                                   #  112   0x465db  1      
  nop                                   #  113   0x465dc  1      
  callq ._ZSt20__throw_length_errorPKc  #  114   0x465dd  5      
                                                                 
.size _ZNSs6appendEPKcj, .-_ZNSs6appendEPKcj

