  .text
  .globl _ZNSs6appendERKSsjj
  .type _ZNSs6appendERKSsjj, @function

#! file-offset 0x467c0
#! rip-offset  0x467c0
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendERKSsjj:                   #        0x467c0  0      
  movq %r14, -0x8(%rsp)                 #  1     0x467c0  5      
  movl %esi, %r14d                      #  2     0x467c5  3      
  movq %rbx, -0x20(%rsp)                #  3     0x467c8  5      
  movq %r12, -0x18(%rsp)                #  4     0x467cd  5      
  movq %r13, -0x10(%rsp)                #  5     0x467d2  5      
  subl $0x38, %esp                      #  6     0x467d7  3      
  addq %r15, %rsp                       #  7     0x467da  3      
  nop                                   #  8     0x467dd  1      
  movl %r14d, %r14d                     #  9     0x467de  3      
  movl (%r15,%r14,1), %esi              #  10    0x467e1  4      
  movl %edi, %ebx                       #  11    0x467e5  2      
  leal -0xc(%rsi), %eax                 #  12    0x467e7  3      
  movl %eax, %eax                       #  13    0x467ea  2      
  movl (%r15,%rax,1), %r13d             #  14    0x467ec  4      
  cmpl %r13d, %edx                      #  15    0x467f0  3      
  ja .L_46940                           #  16    0x467f3  6      
  subl %edx, %r13d                      #  17    0x467f9  3      
  xchgw %ax, %ax                        #  18    0x467fc  3      
  cmpl %ecx, %r13d                      #  19    0x467ff  3      
  cmoval %ecx, %r13d                    #  20    0x46802  4      
  testl %r13d, %r13d                    #  21    0x46806  3      
  je .L_468e0                           #  22    0x46809  6      
  movl %ebx, %ebx                       #  23    0x4680f  2      
  movl (%r15,%rbx,1), %eax              #  24    0x46811  4      
  leal -0xc(%rax), %ecx                 #  25    0x46815  3      
  movl %ecx, %ecx                       #  26    0x46818  2      
  movl (%r15,%rcx,1), %edi              #  27    0x4681a  4      
  nop                                   #  28    0x4681e  1      
  leal (%r13,%rdi,1), %r12d             #  29    0x4681f  5      
  movl %ecx, %ecx                       #  30    0x46824  2      
  cmpl 0x4(%r15,%rcx,1), %r12d          #  31    0x46826  5      
  ja .L_46840                           #  32    0x4682b  6      
  movl %ecx, %ecx                       #  33    0x46831  2      
  movl 0x8(%r15,%rcx,1), %r8d           #  34    0x46833  5      
  testl %r8d, %r8d                      #  35    0x46838  3      
  jle .L_46880                          #  36    0x4683b  6      
  nop                                   #  37    0x46841  1      
.L_46840:                               #        0x46842  0      
  movl %r12d, %esi                      #  38    0x46842  3      
  movl %ebx, %edi                       #  39    0x46845  2      
  movl %edx, 0x8(%rsp)                  #  40    0x46847  4      
  nop                                   #  41    0x4684b  1      
  nop                                   #  42    0x4684c  1      
  callq ._ZNSs7reserveEj                #  43    0x4684d  5      
  movl %ebx, %ebx                       #  44    0x46852  2      
  movl (%r15,%rbx,1), %eax              #  45    0x46854  4      
  movl %r14d, %r14d                     #  46    0x46858  3      
  movl (%r15,%r14,1), %esi              #  47    0x4685b  4      
  movl 0x8(%rsp), %edx                  #  48    0x4685f  4      
  leal -0xc(%rax), %ecx                 #  49    0x46863  3      
  movl %ecx, %ecx                       #  50    0x46866  2      
  movl (%r15,%rcx,1), %edi              #  51    0x46868  4      
  nop                                   #  52    0x4686c  1      
.L_46880:                               #        0x4686d  0      
  addl %eax, %edi                       #  53    0x4686d  2      
  cmpl $0x1, %r13d                      #  54    0x4686f  4      
  leal (%rdx,%rsi,1), %esi              #  55    0x46873  3      
  je .L_46920                           #  56    0x46876  6      
  movl %r13d, %edx                      #  57    0x4687c  3      
  nop                                   #  58    0x4687f  1      
  callq .memcpy                         #  59    0x46880  5      
.L_468a0:                               #        0x46885  0      
  movl %ebx, %ebx                       #  60    0x46885  2      
  movl (%r15,%rbx,1), %eax              #  61    0x46887  4      
  subl $0xc, %eax                       #  62    0x4688b  3      
  movl %eax, %eax                       #  63    0x4688e  2      
  movl %r12d, (%r15,%rax,1)             #  64    0x46890  4      
  addl %eax, %r12d                      #  65    0x46894  3      
  movl %eax, %eax                       #  66    0x46897  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  67    0x46899  9      
  nop                                   #  68    0x468a2  1      
  movl %r12d, %r12d                     #  69    0x468a3  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  70    0x468a6  6      
  nop                                   #  71    0x468ac  1      
  nop                                   #  72    0x468ad  1      
.L_468e0:                               #        0x468ae  0      
  movl %ebx, %eax                       #  73    0x468ae  2      
  movq 0x20(%rsp), %r12                 #  74    0x468b0  5      
  movq 0x18(%rsp), %rbx                 #  75    0x468b5  5      
  movq 0x28(%rsp), %r13                 #  76    0x468ba  5      
  movq 0x30(%rsp), %r14                 #  77    0x468bf  5      
  addl $0x38, %esp                      #  78    0x468c4  3      
  addq %r15, %rsp                       #  79    0x468c7  3      
  popq %r11                             #  80    0x468ca  3      
  xchgw %ax, %ax                        #  81    0x468cd  3      
  andl $0xffffffe0, %r11d               #  82    0x468d0  7      
  addq %r15, %r11                       #  83    0x468d7  3      
  jmpq %r11                             #  84    0x468da  3      
  nop                                   #  85    0x468dd  1      
  nop                                   #  86    0x468de  1      
.L_46920:                               #        0x468df  0      
  movl %esi, %esi                       #  87    0x468df  2      
  movzbl (%r15,%rsi,1), %eax            #  88    0x468e1  5      
  movl %edi, %edi                       #  89    0x468e6  2      
  movb %al, (%r15,%rdi,1)               #  90    0x468e8  4      
  jmpq .L_468a0                         #  91    0x468ec  5      
  nop                                   #  92    0x468f1  1      
.L_46940:                               #        0x468f2  0      
  movl $0x100209dd, %edi                #  93    0x468f2  5      
  nop                                   #  94    0x468f7  1      
  nop                                   #  95    0x468f8  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  96    0x468f9  5      
                                                                 
.size _ZNSs6appendERKSsjj, .-_ZNSs6appendERKSsjj

