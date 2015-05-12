  .text
  .globl _ZNSs6appendEPKcj
  .type _ZNSs6appendEPKcj, @function

#! file-offset 0x464a0
#! rip-offset  0x464a0
#! capacity    544 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendEPKcj:                     #        0x464a0  0      
  movq %rbx, -0x18(%rsp)                #  1     0x464a0  5      
  movq %r13, -0x8(%rsp)                 #  2     0x464a5  5      
  movl %edi, %ebx                       #  3     0x464aa  2      
  movq %r12, -0x10(%rsp)                #  4     0x464ac  5      
  subl $0x28, %esp                      #  5     0x464b1  3      
  addq %r15, %rsp                       #  6     0x464b4  3      
  testl %edx, %edx                      #  7     0x464b7  2      
  movl %esi, %r13d                      #  8     0x464b9  3      
  nop                                   #  9     0x464bc  1      
  jne .L_46520                          #  10    0x464bd  6      
  nop                                   #  11    0x464c3  1      
  nop                                   #  12    0x464c4  1      
.L_464e0:                               #        0x464c5  0      
  movl %ebx, %eax                       #  13    0x464c5  2      
  movq 0x18(%rsp), %r12                 #  14    0x464c7  5      
  movq 0x10(%rsp), %rbx                 #  15    0x464cc  5      
  movq 0x20(%rsp), %r13                 #  16    0x464d1  5      
  addl $0x28, %esp                      #  17    0x464d6  3      
  addq %r15, %rsp                       #  18    0x464d9  3      
  popq %r11                             #  19    0x464dc  3      
  nop                                   #  20    0x464df  1      
  andl $0xffffffe0, %r11d               #  21    0x464e0  7      
  addq %r15, %r11                       #  22    0x464e7  3      
  jmpq %r11                             #  23    0x464ea  3      
  nop                                   #  24    0x464ed  1      
  nop                                   #  25    0x464ee  1      
.L_46520:                               #        0x464ef  0      
  movl %ebx, %ebx                       #  26    0x464ef  2      
  movl (%r15,%rbx,1), %eax              #  27    0x464f1  4      
  leal -0xc(%rax), %ecx                 #  28    0x464f5  3      
  movl %ecx, %ecx                       #  29    0x464f8  2      
  movl (%r15,%rcx,1), %edi              #  30    0x464fa  4      
  movl %edi, %esi                       #  31    0x464fe  2      
  negl %esi                             #  32    0x46500  2      
  addl $0x3ffffffc, %esi                #  33    0x46502  6      
  cmpl %esi, %edx                       #  34    0x46508  2      
  nop                                   #  35    0x4650a  1      
  ja .L_466a0                           #  36    0x4650b  6      
  leal (%rdx,%rdi,1), %r12d             #  37    0x46511  4      
  movl %ecx, %ecx                       #  38    0x46515  2      
  cmpl 0x4(%r15,%rcx,1), %r12d          #  39    0x46517  5      
  ja .L_46580                           #  40    0x4651c  6      
  movl %ecx, %ecx                       #  41    0x46522  2      
  movl 0x8(%r15,%rcx,1), %ecx           #  42    0x46524  5      
  testl %ecx, %ecx                      #  43    0x46529  2      
  nop                                   #  44    0x4652b  1      
  jle .L_465e0                          #  45    0x4652c  6      
  nop                                   #  46    0x46532  1      
  nop                                   #  47    0x46533  1      
.L_46580:                               #        0x46534  0      
  cmpl %eax, %r13d                      #  48    0x46534  3      
  jb .L_465a0                           #  49    0x46537  6      
  addl %eax, %edi                       #  50    0x4653d  2      
  cmpl %r13d, %edi                      #  51    0x4653f  3      
  jae .L_46660                          #  52    0x46542  6      
  nop                                   #  53    0x46548  1      
  nop                                   #  54    0x46549  1      
.L_465a0:                               #        0x4654a  0      
  movl %ebx, %edi                       #  55    0x4654a  2      
  movl %r12d, %esi                      #  56    0x4654c  3      
  movl %edx, 0x8(%rsp)                  #  57    0x4654f  4      
  nop                                   #  58    0x46553  1      
  nop                                   #  59    0x46554  1      
  callq ._ZNSs7reserveEj                #  60    0x46555  5      
  movl %ebx, %ebx                       #  61    0x4655a  2      
  movl (%r15,%rbx,1), %eax              #  62    0x4655c  4      
  movl 0x8(%rsp), %edx                  #  63    0x46560  4      
  leal -0xc(%rax), %ecx                 #  64    0x46564  3      
  movl %ecx, %ecx                       #  65    0x46567  2      
  movl (%r15,%rcx,1), %edi              #  66    0x46569  4      
  nop                                   #  67    0x4656d  1      
.L_465e0:                               #        0x4656e  0      
  addl %eax, %edi                       #  68    0x4656e  2      
  cmpl $0x1, %edx                       #  69    0x46570  3      
  je .L_46640                           #  70    0x46573  6      
  movl %r13d, %esi                      #  71    0x46579  3      
  xchgw %ax, %ax                        #  72    0x4657c  3      
  nop                                   #  73    0x4657f  1      
  callq .memcpy                         #  74    0x46580  5      
.L_46600:                               #        0x46585  0      
  movl %ebx, %ebx                       #  75    0x46585  2      
  movl (%r15,%rbx,1), %eax              #  76    0x46587  4      
  subl $0xc, %eax                       #  77    0x4658b  3      
  movl %eax, %eax                       #  78    0x4658e  2      
  movl %r12d, (%r15,%rax,1)             #  79    0x46590  4      
  addl %eax, %r12d                      #  80    0x46594  3      
  movl %eax, %eax                       #  81    0x46597  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  82    0x46599  9      
  nop                                   #  83    0x465a2  1      
  movl %r12d, %r12d                     #  84    0x465a3  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  85    0x465a6  6      
  jmpq .L_464e0                         #  86    0x465ac  5      
  nop                                   #  87    0x465b1  1      
  nop                                   #  88    0x465b2  1      
.L_46640:                               #        0x465b3  0      
  movl %r13d, %r13d                     #  89    0x465b3  3      
  movzbl (%r15,%r13,1), %eax            #  90    0x465b6  5      
  movl %edi, %edi                       #  91    0x465bb  2      
  movb %al, (%r15,%rdi,1)               #  92    0x465bd  4      
  jmpq .L_46600                         #  93    0x465c1  5      
  nop                                   #  94    0x465c6  1      
  nop                                   #  95    0x465c7  1      
.L_46660:                               #        0x465c8  0      
  movl %ebx, %edi                       #  96    0x465c8  2      
  movl %r12d, %esi                      #  97    0x465ca  3      
  subl %eax, %r13d                      #  98    0x465cd  3      
  movl %edx, 0x8(%rsp)                  #  99    0x465d0  4      
  nop                                   #  100   0x465d4  1      
  callq ._ZNSs7reserveEj                #  101   0x465d5  5      
  movl %ebx, %ebx                       #  102   0x465da  2      
  movl (%r15,%rbx,1), %eax              #  103   0x465dc  4      
  movl 0x8(%rsp), %edx                  #  104   0x465e0  4      
  leal -0xc(%rax), %ecx                 #  105   0x465e4  3      
  addl %eax, %r13d                      #  106   0x465e7  3      
  movl %ecx, %ecx                       #  107   0x465ea  2      
  movl (%r15,%rcx,1), %edi              #  108   0x465ec  4      
  jmpq .L_465e0                         #  109   0x465f0  5      
  nop                                   #  110   0x465f5  1      
.L_466a0:                               #        0x465f6  0      
  movl $0x100209dd, %edi                #  111   0x465f6  5      
  nop                                   #  112   0x465fb  1      
  nop                                   #  113   0x465fc  1      
  callq ._ZSt20__throw_length_errorPKc  #  114   0x465fd  5      
                                                                 
.size _ZNSs6appendEPKcj, .-_ZNSs6appendEPKcj

